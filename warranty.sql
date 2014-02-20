-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: warranty_development
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.04.3

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
-- Table structure for table `all_registration_children`
--

DROP TABLE IF EXISTS `all_registration_children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_registration_children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `all_registration_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_registration_children`
--

LOCK TABLES `all_registration_children` WRITE;
/*!40000 ALTER TABLE `all_registration_children` DISABLE KEYS */;
INSERT INTO `all_registration_children` VALUES (1,23,NULL,1,1,NULL,NULL,'2013-09-22 16:35:22','2013-09-22 16:35:22'),(2,24,NULL,1,1,NULL,NULL,'2013-09-22 17:05:09','2013-09-22 17:05:09'),(3,25,NULL,0,NULL,NULL,NULL,'2013-09-29 05:13:21','2013-09-29 05:13:21'),(4,26,NULL,1,1,NULL,NULL,'2013-09-29 05:43:23','2013-09-29 05:43:23'),(5,27,NULL,NULL,NULL,NULL,NULL,'2013-10-05 14:26:44','2013-10-05 14:26:44'),(6,28,NULL,NULL,NULL,NULL,NULL,'2013-10-05 14:35:26','2013-10-05 14:35:26'),(7,29,NULL,NULL,NULL,NULL,NULL,'2013-10-05 14:38:04','2013-10-05 14:38:04');
/*!40000 ALTER TABLE `all_registration_children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_registrations`
--

DROP TABLE IF EXISTS `all_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ph_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hall_ticket` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_fee` float DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_registrations`
--

LOCK TABLES `all_registrations` WRITE;
/*!40000 ALTER TABLE `all_registrations` DISABLE KEYS */;
INSERT INTO `all_registrations` VALUES (1,'','REG14','','','','','',NULL,NULL,'','','A.P','India','',NULL,333333000,'2013-08-31','2013-08-31 17:05:56','2013-08-31 17:05:56',NULL),(2,'','REG14','','','','','',NULL,NULL,'','','A.P','India','',NULL,1212,'2013-09-22','2013-09-22 09:16:48','2013-09-22 09:16:48',NULL),(3,'','REG14','','','','','',NULL,NULL,'','','A.P','India','',NULL,1212,'2013-09-22','2013-09-22 09:19:11','2013-09-22 09:19:11',NULL),(4,'','REG14','','','','','',NULL,NULL,'','','A.P','India','',NULL,1231,'2013-09-22','2013-09-22 09:19:21','2013-09-22 09:19:21',NULL),(5,'','REG14','','','','','',NULL,NULL,'','','A.P','India','',NULL,4,'2013-09-22','2013-09-22 09:39:13','2013-09-22 09:39:13',NULL),(6,'','REG14','','','','','',NULL,NULL,'','','A.P','India','',NULL,33333300,'2013-09-22','2013-09-22 10:04:15','2013-09-22 10:04:15',NULL),(7,'','REG14','','','','','',NULL,NULL,'','','A.P','India','',NULL,123,'2013-09-22','2013-09-22 10:05:34','2013-09-22 10:05:34',NULL),(8,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,5555560000,'2013-09-22','2013-09-22 10:19:06','2013-09-22 10:19:06',NULL),(9,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,5555560000,'2013-09-22','2013-09-22 10:24:07','2013-09-22 10:24:07',NULL),(10,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,1111110,'2013-09-22','2013-09-22 11:06:22','2013-09-22 11:06:22',NULL),(11,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,555,'2013-09-22','2013-09-22 11:06:39','2013-09-22 11:06:39',NULL),(12,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,44444400,'2013-09-22','2013-09-22 11:07:35','2013-09-22 11:07:35',NULL),(13,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,44444400,'2013-09-22','2013-09-22 11:09:15','2013-09-22 11:09:15',NULL),(14,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,66666,'2013-09-22','2013-09-22 11:09:28','2013-09-22 11:09:28',NULL),(15,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,7777,'2013-09-22','2013-09-22 11:11:45','2013-09-22 11:11:45',NULL),(16,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,555556000,'2013-09-22','2013-09-22 12:26:10','2013-09-22 12:26:10',NULL),(17,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,44444,'2013-09-22','2013-09-22 12:31:01','2013-09-22 12:31:01',NULL),(18,'','REG15','','','','','',NULL,NULL,'','','A.P','India','',NULL,555,'2013-09-22','2013-09-22 12:31:27','2013-09-22 12:31:27',NULL),(19,'','REG16','','','','','',NULL,NULL,'','','A.P','India','',NULL,44,'2013-09-22','2013-09-22 12:32:42','2013-09-22 12:32:42',NULL),(20,'','REG16','','','','','',NULL,NULL,'','','A.P','India','',NULL,222,'2013-09-22','2013-09-22 14:19:19','2013-09-22 14:19:19',NULL),(21,'','REG16','','','','','',NULL,NULL,'','','A.P','India','',NULL,3333,'2013-09-22','2013-09-22 14:36:48','2013-09-22 14:36:48',NULL),(22,'','REG17','','','','','',NULL,NULL,'','','A.P','India','',NULL,444,'2013-09-22','2013-09-22 14:37:35','2013-09-22 14:37:35',NULL),(23,'1234','REG18','shekar','reddy','raji reddy','9490235106','M','1986-09-18',26,'cherial','warangal','A.P','India','506223','272-06-2327',200,'2013-09-22','2013-09-22 16:35:22','2013-09-29 04:53:28',NULL),(24,'111111111','REG19','dddd','fffff','gggggggg','55555555555','M','2013-09-20',1,'dddd','drrrrrr','A.P','India','ttttttt',NULL,567,'2013-09-22','2013-09-22 17:05:09','2013-09-22 17:05:09',NULL),(25,'1234567','REG20','rajashekar','reddy','rajireddy','9966415381','M','1986-09-18',26,'cherial','warangal','A.P','India','506223',NULL,200,'2013-09-29','2013-09-29 05:13:20','2013-09-29 05:13:20',NULL),(26,'1234567','REG20','rajashekar','reddy','raji reddy','9966415381','M','1980-09-17',27,'cherial','Bangalore','A.P','India','506223',NULL,200,'2013-09-29','2013-09-29 05:43:23','2013-09-29 05:43:23',NULL),(27,'444','REG20','zzzz','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-10-05','2013-10-05 14:26:44','2013-10-05 14:26:44',NULL),(28,'444','REG20','zzzz','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-10-05','2013-10-05 14:35:26','2013-10-05 14:35:26',NULL),(29,'444','REG20','zzzz','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-10-05','2013-10-05 14:38:04','2013-10-05 14:38:04',NULL),(30,'','REG21','','','','','',NULL,NULL,'','','A.P','India','',NULL,123,'2013-10-19','2013-10-19 04:40:42','2013-10-19 04:40:42',NULL),(31,'','REG22','','','','','',NULL,NULL,'','','A.P','India','',NULL,123,'2013-11-10','2013-11-10 05:40:10','2013-11-10 05:40:10',NULL),(32,'','REG23','','','','','',NULL,NULL,'','','A.P','India','',NULL,345,'2013-11-10','2013-11-10 06:00:14','2013-11-10 06:00:14',NULL),(33,'','REG24','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-11-10','2013-11-10 06:20:15','2013-11-10 06:20:15',NULL),(34,'','REG25','','','','','',NULL,NULL,'','','A.P','India','',NULL,23423,'2013-11-10','2013-11-10 06:23:02','2013-11-10 06:23:02',NULL),(35,'','REG26','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-12-14','2013-12-14 06:11:03','2013-12-14 06:11:03',NULL),(36,'','REG27','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-12-14','2013-12-14 06:13:45','2013-12-14 06:13:45',NULL),(37,'','REG28','','','','','',NULL,NULL,'','','A.P','India','',NULL,123,'2013-12-14','2013-12-14 06:23:04','2013-12-14 06:23:04',NULL),(38,'','REG29','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-12-14','2013-12-14 06:27:01','2013-12-14 06:27:01',NULL),(39,'','REG30','','','','','',NULL,NULL,'','','A.P','India','',NULL,2345,'2013-12-14','2013-12-14 06:28:37','2013-12-14 06:28:37',NULL),(40,'','REG31','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-12-14','2013-12-14 06:37:02','2013-12-14 06:37:02',NULL),(41,'','REG32','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-12-14','2013-12-14 06:38:33','2013-12-14 06:38:33',NULL),(42,'','REG33','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-12-14','2013-12-14 06:46:28','2013-12-14 06:46:28',NULL),(43,'','REG34','','','','','',NULL,NULL,'','','A.P','India','',NULL,234,'2013-12-28','2013-12-28 05:36:29','2013-12-28 05:36:29',NULL),(44,'','REG35','','','','','',NULL,NULL,'','','A.P','India','',NULL,123,'2014-01-20','2014-01-20 16:35:44','2014-01-20 16:35:44',NULL),(45,'','REG36','','','','','',NULL,NULL,'','','A.P','India','',NULL,12,'2014-01-20','2014-01-20 16:36:29','2014-01-20 16:36:29',NULL),(46,'','REG37','','','','','',NULL,NULL,'','','A.P','India','',NULL,23,'2014-02-14','2014-02-14 05:47:50','2014-02-14 05:47:50',NULL),(47,'','REG38','','','','','',NULL,NULL,'','','A.P','India','',NULL,123,'2014-02-14','2014-02-14 10:06:19','2014-02-14 10:06:19',NULL),(48,'','REG39','','','','','',NULL,NULL,'','','A.P','India','',NULL,23,'2014-02-14','2014-02-14 10:08:21','2014-02-14 10:08:21',NULL),(49,'','REG40','','','','','',NULL,NULL,'','','A.P','India','',NULL,23,'2014-02-14','2014-02-14 11:50:45','2014-02-14 11:50:45',NULL),(50,'','REG40','','','','','',NULL,NULL,'','','A.P','India','',NULL,23,'2014-02-14','2014-02-14 11:50:45','2014-02-14 11:50:45',NULL);
/*!40000 ALTER TABLE `all_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendence_children`
--

DROP TABLE IF EXISTS `attendence_children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence_children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `all_registration_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  `presence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `att_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence_children`
--

LOCK TABLES `attendence_children` WRITE;
/*!40000 ALTER TABLE `attendence_children` DISABLE KEYS */;
INSERT INTO `attendence_children` VALUES (3,23,1,1,NULL,1,'no','2013-09-28 12:49:05','2013-09-28 12:49:05','2013-09-28'),(4,24,1,1,NULL,1,'yes','2013-09-28 12:49:06','2013-09-28 12:49:06','2013-09-28'),(5,23,1,1,NULL,1,'yes','2013-10-29 11:43:35','2013-10-29 11:43:35','2013-10-29'),(6,24,1,1,NULL,1,'yes','2013-10-29 11:43:35','2013-10-29 11:43:35','2013-10-29'),(7,26,1,1,NULL,1,'yes','2013-10-29 11:43:36','2013-10-29 11:43:36','2013-10-29');
/*!40000 ALTER TABLE `attendence_children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendences`
--

DROP TABLE IF EXISTS `attendences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `att_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendences`
--

LOCK TABLES `attendences` WRITE;
/*!40000 ALTER TABLE `attendences` DISABLE KEYS */;
INSERT INTO `attendences` VALUES (60,'1','1','2013-09-24 17:15:59','2013-09-24 17:15:59',NULL,NULL),(61,'1','1','2013-09-24 17:16:20','2013-09-24 17:16:20',NULL,NULL),(62,'1','1','2013-09-24 17:16:31','2013-09-24 17:16:31',NULL,NULL),(63,'1','1','2013-09-27 16:35:47','2013-09-27 16:35:47','1',NULL);
/*!40000 ALTER TABLE `attendences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'Degree','2013-04-28 14:44:05','2013-04-28 14:44:05'),(5,'Inter','2013-04-28 14:45:14','2013-04-28 14:45:14');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childmasters`
--

DROP TABLE IF EXISTS `childmasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `childmasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profilemaster_id` int(11) DEFAULT NULL,
  `new` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remove` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childmasters`
--

LOCK TABLES `childmasters` WRITE;
/*!40000 ALTER TABLE `childmasters` DISABLE KEYS */;
INSERT INTO `childmasters` VALUES (1,1,'0','1','1','0','All Registration','2013-07-10 16:58:05','2013-07-10 16:58:05'),(2,1,'0','0','0','0','Employee','2013-07-10 16:58:05','2013-07-10 16:58:05'),(3,1,'0','0','0','0','Subjects','2013-07-10 16:58:05','2013-07-10 16:58:05');
/*!40000 ALTER TABLE `childmasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_fees`
--

DROP TABLE IF EXISTS `college_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bill_date_time` datetime DEFAULT NULL,
  `last_paid_amt` float DEFAULT NULL,
  `this_time_pay` int(11) DEFAULT NULL,
  `till_now_paid` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_fees`
--

LOCK TABLES `college_fees` WRITE;
/*!40000 ALTER TABLE `college_fees` DISABLE KEYS */;
INSERT INTO `college_fees` VALUES (1,'','2013-11-24 07:18:01',NULL,NULL,NULL,'2013-11-24 07:22:15','2013-11-24 07:22:15'),(2,NULL,'2013-11-24 07:28:04',NULL,NULL,NULL,'2013-11-24 07:28:08','2013-11-24 07:28:08'),(3,'1','2013-11-24 07:45:59',NULL,NULL,NULL,'2013-11-24 07:30:47','2014-02-17 11:21:18');
/*!40000 ALTER TABLE `college_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college_masters`
--

DROP TABLE IF EXISTS `college_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `college_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `ph_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college_masters`
--

LOCK TABLES `college_masters` WRITE;
/*!40000 ALTER TABLE `college_masters` DISABLE KEYS */;
INSERT INTO `college_masters` VALUES (2,'Adharsha PG College','adsh001','4','H-No:8-79,Peddammagadda,\r\nM&V: Cherial,\r\nDist:Warangal,\r\nPin:5006223.','8892002015','(908710)222161','2013-06-27 15:43:03','2013-06-27 15:56:18');
/*!40000 ALTER TABLE `college_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `dob` date DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (4,'EMP1','Rajashekar','MCA','H-No:8-79,Cheiral,Warangal','Monthly',10000,'2013-06-23 05:48:08','2013-06-23 05:48:08','1986-08-12','2013-06-23');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_lists`
--

DROP TABLE IF EXISTS `form_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_lists`
--

LOCK TABLES `form_lists` WRITE;
/*!40000 ALTER TABLE `form_lists` DISABLE KEYS */;
INSERT INTO `form_lists` VALUES (1,'All Registration','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Employee','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Subjects','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `form_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year_id` int(11) DEFAULT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,1,'MStCs','2013-04-28 16:48:07','2013-04-28 16:48:07'),(2,4,'MPC','2013-04-28 16:53:48','2013-04-28 16:53:48');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtpls`
--

DROP TABLE IF EXISTS `gtpls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gtpls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attributes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gtpls`
--

LOCK TABLES `gtpls` WRITE;
/*!40000 ALTER TABLE `gtpls` DISABLE KEYS */;
/*!40000 ALTER TABLE `gtpls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_tables`
--

DROP TABLE IF EXISTS `image_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `files_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `files_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `files_file_size` int(11) DEFAULT NULL,
  `files_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_tables`
--

LOCK TABLES `image_tables` WRITE;
/*!40000 ALTER TABLE `image_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `move_class_children`
--

DROP TABLE IF EXISTS `move_class_children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `move_class_children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `all_registration_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `year` int(11) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_class_children`
--

LOCK TABLES `move_class_children` WRITE;
/*!40000 ALTER TABLE `move_class_children` DISABLE KEYS */;
INSERT INTO `move_class_children` VALUES (1,28,NULL,'2013-10-05 14:35:26','2013-10-05 14:35:26',NULL,NULL,NULL),(2,29,NULL,'2013-10-05 14:38:04','2013-10-05 14:38:04',NULL,NULL,NULL),(3,23,NULL,'2013-10-19 04:40:42','2013-10-31 10:09:13',1,NULL,NULL),(4,31,NULL,'2013-11-10 05:40:10','2013-11-10 05:40:10',NULL,NULL,NULL),(5,32,NULL,'2013-11-10 06:00:14','2013-11-10 06:00:14',NULL,NULL,NULL),(6,33,NULL,'2013-11-10 06:20:15','2013-11-10 06:20:15',NULL,NULL,NULL),(7,34,NULL,'2013-11-10 06:23:02','2013-11-10 06:23:02',NULL,NULL,NULL),(8,35,NULL,'2013-12-14 06:11:03','2013-12-14 06:11:03',NULL,NULL,NULL),(9,36,NULL,'2013-12-14 06:13:45','2013-12-14 06:13:45',NULL,NULL,NULL),(10,37,NULL,'2013-12-14 06:23:04','2013-12-14 06:23:04',NULL,NULL,NULL),(11,38,NULL,'2013-12-14 06:27:01','2013-12-14 06:27:01',NULL,NULL,NULL),(12,39,NULL,'2013-12-14 06:28:37','2013-12-14 06:28:37',NULL,NULL,NULL),(13,40,NULL,'2013-12-14 06:37:02','2013-12-14 06:37:02',NULL,NULL,NULL),(14,41,NULL,'2013-12-14 06:38:33','2013-12-14 06:38:33',NULL,NULL,NULL),(15,42,NULL,'2013-12-14 06:46:28','2013-12-14 06:46:28',NULL,NULL,NULL),(16,43,NULL,'2013-12-28 05:36:29','2013-12-28 05:36:29',NULL,NULL,NULL),(17,44,NULL,'2014-01-20 16:35:44','2014-01-20 16:35:44',NULL,NULL,NULL),(18,45,NULL,'2014-01-20 16:36:29','2014-01-20 16:36:29',NULL,NULL,NULL),(19,46,NULL,'2014-02-14 05:47:50','2014-02-14 05:47:50',NULL,NULL,NULL),(20,47,NULL,'2014-02-14 10:06:19','2014-02-14 10:06:19',NULL,NULL,NULL),(21,48,NULL,'2014-02-14 10:08:22','2014-02-14 10:08:22',NULL,NULL,NULL),(22,49,NULL,'2014-02-14 11:50:45','2014-02-14 11:50:45',NULL,NULL,NULL),(23,50,NULL,'2014-02-14 11:50:45','2014-02-14 11:50:45',NULL,NULL,NULL);
/*!40000 ALTER TABLE `move_class_children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `move_classes`
--

DROP TABLE IF EXISTS `move_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `move_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move_classes`
--

LOCK TABLES `move_classes` WRITE;
/*!40000 ALTER TABLE `move_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `move_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_value` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES (1,'REG',40,'0000-00-00 00:00:00','2014-02-14 11:50:45'),(2,'EMP',1,'0000-00-00 00:00:00','2013-06-23 05:48:08');
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papclips`
--

DROP TABLE IF EXISTS `papclips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papclips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `files` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `files_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `files_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `files_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papclips`
--

LOCK TABLES `papclips` WRITE;
/*!40000 ALTER TABLE `papclips` DISABLE KEYS */;
INSERT INTO `papclips` VALUES (1,NULL,'2013-04-24 18:13:49','2013-04-24 18:13:49',NULL,NULL,NULL),(2,NULL,'2013-04-24 18:14:03','2013-04-24 18:14:03',NULL,NULL,NULL);
/*!40000 ALTER TABLE `papclips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pclips`
--

DROP TABLE IF EXISTS `pclips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pclips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `files` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pclips`
--

LOCK TABLES `pclips` WRITE;
/*!40000 ALTER TABLE `pclips` DISABLE KEYS */;
/*!40000 ALTER TABLE `pclips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `photable_id` int(11) DEFAULT NULL,
  `photable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `sub_category_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `warranty_expire_at` date DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'my new led','noting to display',1,12,'2013-04-21','GANESH','12','2013-04-21 16:48:40','2013-04-21 16:48:40'),(2,'asdfasdfadfasdfa','adfgasdasg',-4,-1,'2013-04-21','','','2013-04-21 17:42:51','2013-04-21 17:42:51');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profilemasters`
--

DROP TABLE IF EXISTS `profilemasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profilemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profilemasters`
--

LOCK TABLES `profilemasters` WRITE;
/*!40000 ALTER TABLE `profilemasters` DISABLE KEYS */;
INSERT INTO `profilemasters` VALUES (1,'','2013-07-10 16:58:05','2013-07-10 16:58:05');
/*!40000 ALTER TABLE `profilemasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130421155326'),('20130421155447'),('20130421155657'),('20130424165832'),('20130424173002'),('20130424174023'),('20130424174625'),('20130424174711'),('20130427045543'),('20130427050307'),('20130427050847'),('20130427050957'),('20130427051258'),('20130427051534'),('20130427051717'),('20130427053618'),('20130427053906'),('20130427064659'),('20130427065016'),('20130427065907'),('20130428163432'),('20130608052203'),('20130608053705'),('20130619154320'),('20130619155718'),('20130620161928'),('20130621170628'),('20130627152647'),('20130627154908'),('20130702154318'),('20130702155340'),('20130702155341'),('20130702160526'),('20130721090533'),('20130721090636'),('20130831165819'),('20130915062532'),('20130915063137'),('20130922094253'),('20130922094254'),('20130922103441'),('20130927160040'),('20130928124101'),('20131117043958'),('20140214105443');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semesters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'led',1,'2013-04-21 16:37:55','2013-04-21 16:37:55'),(2,'lcd',1,'2013-04-21 16:43:45','2013-04-21 16:43:45');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,1,0,'Maths','2013-04-28 17:18:25','2013-04-28 17:18:25'),(2,1,0,'Statistics','2013-04-28 17:19:02','2013-04-28 17:19:02'),(3,1,0,'Computer Science ','2013-04-28 17:20:03','2013-04-28 17:20:03'),(4,2,0,'Maths','2013-04-28 17:20:43','2013-04-28 17:20:43'),(5,2,0,'Physics','2013-04-28 17:21:03','2013-04-28 17:21:03'),(6,2,0,'Chemistry','2013-04-28 17:21:57','2013-04-28 17:21:57');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shekar@gmail.com','$2a$10$TSO9wXp1ckBTaIsGSs08Zu2mq0fmGPCGppD7abs.O85uRwS15SPji',NULL,NULL,NULL,112,'2014-02-17 13:18:03','2014-02-17 11:05:37','127.0.0.1','127.0.0.1','2013-06-08 06:03:41','2014-02-17 13:18:03','Admin','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `years`
--

DROP TABLE IF EXISTS `years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `years`
--

LOCK TABLES `years` WRITE;
/*!40000 ALTER TABLE `years` DISABLE KEYS */;
INSERT INTO `years` VALUES (1,4,'1st Year','2013-04-28 15:08:14','2013-04-28 15:08:14',NULL),(2,4,'2nd Year','2013-04-28 15:08:36','2013-04-28 15:08:36',NULL),(3,4,'3rd Year','2013-04-28 15:09:18','2013-04-28 15:09:18',NULL),(4,5,'1st Year','2013-04-28 16:29:16','2013-04-28 16:29:16',NULL),(5,5,'2nd Year','2013-04-28 16:29:30','2013-04-28 16:29:30',NULL);
/*!40000 ALTER TABLE `years` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-20 16:54:01
