-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: trafficprojectfinal
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alerttable`
--

DROP TABLE IF EXISTS `alerttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerttable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Vehicle_Number_Plate` varchar(15) NOT NULL,
  `Time_Detected` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Vehicle_Number_Plate` (`Vehicle_Number_Plate`),
  CONSTRAINT `alerttable_ibfk_1` FOREIGN KEY (`Vehicle_Number_Plate`) REFERENCES `vehicledetails` (`NumberPlate`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerttable`
--

LOCK TABLES `alerttable` WRITE;
/*!40000 ALTER TABLE `alerttable` DISABLE KEYS */;
INSERT INTO `alerttable` VALUES (2,'UP-37-UO-2737','2025-01-15 16:07:14'),(3,'UP-37-UO-2737','2025-01-15 16:09:33'),(4,'UP-37-UO-2737','2025-01-15 16:09:41'),(5,'UP-37-UO-2737','2025-01-15 16:09:57'),(6,'UP-37-UO-2737','2025-01-15 16:11:44'),(7,'KA-32-EB-2885','2025-01-16 01:47:05'),(8,'KA-32-EB-2885','2025-01-16 01:51:22'),(9,'KA-32-EB-2885','2025-01-16 01:59:41'),(10,'GJ-35-MS-6768','2025-01-16 01:59:48'),(11,'HR-17-YN-5378','2025-01-16 01:59:56'),(12,'HR-79-HJ-5604','2025-01-16 01:59:59'),(13,'KA-16-QV-1276','2025-01-16 02:00:02'),(14,'KA-32-EB-2885','2025-01-16 02:17:41'),(15,'GJ-35-MS-6768','2025-01-16 02:17:45'),(16,'MH-88-QJ-7259','2025-01-16 02:17:47'),(17,'HR-17-YN-5378','2025-01-16 02:17:59'),(18,'HR-79-HJ-5604','2025-01-16 02:18:03'),(19,'KA-32-EB-2885','2025-01-16 02:24:02'),(20,'GJ-35-MS-6768','2025-01-16 02:24:05'),(21,'MH-88-QJ-7259','2025-01-16 02:24:08'),(22,'HR-79-HJ-5604','2025-01-16 02:24:17'),(23,'KA-16-QV-1276','2025-01-16 02:24:20'),(24,'GJ-35-MS-6768','2025-01-16 11:51:05'),(25,'KA-32-EB-2885','2025-01-16 11:51:11'),(26,'MH-88-QJ-7259','2025-01-16 11:51:14'),(27,'HR-17-YN-5378','2025-01-16 11:51:16'),(28,'HR-79-HJ-5604','2025-01-16 11:51:17'),(29,'KA-16-QV-1276','2025-01-16 11:51:19'),(30,'GJ-35-MS-6768','2025-01-16 12:29:21'),(31,'KA-16-QV-1276','2025-01-16 12:31:54'),(32,'HR-79-HJ-5604','2025-01-16 12:31:56'),(33,'HR-17-YN-5378','2025-01-16 12:32:00'),(34,'MH-88-QJ-7259','2025-01-16 12:32:04'),(35,'KA-32-EB-2885','2025-01-16 12:32:08'),(36,'GJ-35-MS-6768','2025-01-16 12:32:10'),(37,'KA-16-QV-1276','2025-01-16 12:40:50'),(38,'HR-79-HJ-5604','2025-01-16 12:40:51'),(39,'HR-17-YN-5378','2025-01-16 12:40:55'),(40,'MH-88-QJ-7259','2025-01-16 12:40:59'),(41,'KA-32-EB-2885','2025-01-16 12:41:03'),(42,'GJ-35-MS-6768','2025-01-16 12:41:05'),(43,'KA-16-QV-1276','2025-01-16 12:47:33'),(44,'HR-79-HJ-5604','2025-01-16 12:47:35'),(45,'HR-17-YN-5378','2025-01-16 12:47:39'),(46,'MH-88-QJ-7259','2025-01-16 12:47:43'),(47,'KA-32-EB-2885','2025-01-16 12:47:47'),(48,'GJ-35-MS-6768','2025-01-16 12:47:49'),(49,'KA-16-QV-1276','2025-01-16 12:51:59'),(50,'HR-79-HJ-5604','2025-01-16 12:52:01'),(51,'HR-17-YN-5378','2025-01-16 12:52:05'),(52,'MH-88-QJ-7259','2025-01-16 12:52:09'),(53,'KA-32-EB-2885','2025-01-16 12:52:13'),(54,'GJ-35-MS-6768','2025-01-16 12:52:15'),(55,'KA-16-QV-1276','2025-01-16 12:56:10'),(56,'HR-79-HJ-5604','2025-01-16 12:56:12'),(57,'HR-17-YN-5378','2025-01-16 12:56:16'),(58,'MH-88-QJ-7259','2025-01-16 12:56:20'),(59,'KA-32-EB-2885','2025-01-16 12:56:24'),(60,'GJ-35-MS-6768','2025-01-16 12:56:26'),(61,'KA-16-QV-1276','2025-01-16 12:57:21'),(62,'HR-79-HJ-5604','2025-01-16 12:57:23'),(63,'HR-17-YN-5378','2025-01-16 12:57:27'),(64,'MH-88-QJ-7259','2025-01-16 12:57:31'),(65,'KA-32-EB-2885','2025-01-16 12:57:35'),(66,'GJ-35-MS-6768','2025-01-16 12:57:37'),(67,'KA-16-QV-1276','2025-01-16 13:03:52'),(68,'HR-79-HJ-5604','2025-01-16 13:03:54'),(69,'HR-17-YN-5378','2025-01-16 13:03:58'),(70,'MH-88-QJ-7259','2025-01-16 13:04:02'),(71,'KA-32-EB-2885','2025-01-16 13:04:06'),(72,'GJ-35-MS-6768','2025-01-16 13:04:08'),(73,'KA-16-QV-1276','2025-01-16 13:07:00'),(74,'HR-79-HJ-5604','2025-01-16 13:07:02'),(75,'HR-17-YN-5378','2025-01-16 13:07:06'),(76,'MH-88-QJ-7259','2025-01-16 13:07:10'),(77,'KA-32-EB-2885','2025-01-16 13:07:14'),(78,'GJ-35-MS-6768','2025-01-16 13:07:16'),(79,'KA-16-QV-1276','2025-01-16 13:08:38'),(80,'HR-79-HJ-5604','2025-01-16 13:08:40'),(81,'HR-17-YN-5378','2025-01-16 13:08:44'),(82,'MH-88-QJ-7259','2025-01-16 13:08:48'),(83,'KA-32-EB-2885','2025-01-16 13:08:52'),(84,'GJ-35-MS-6768','2025-01-16 13:08:54'),(85,'KA-16-QV-1276','2025-01-16 13:10:23'),(86,'HR-79-HJ-5604','2025-01-16 13:10:25'),(87,'HR-17-YN-5378','2025-01-16 13:10:29'),(88,'MH-88-QJ-7259','2025-01-16 13:10:33'),(89,'KA-32-EB-2885','2025-01-16 13:10:37'),(90,'GJ-35-MS-6768','2025-01-16 13:10:39'),(91,'KA-16-QV-1276','2025-01-16 13:15:38'),(92,'HR-79-HJ-5604','2025-01-16 13:15:40'),(93,'HR-17-YN-5378','2025-01-16 13:15:44'),(94,'MH-88-QJ-7259','2025-01-16 13:15:48'),(95,'KA-32-EB-2885','2025-01-16 13:15:52'),(96,'GJ-35-MS-6768','2025-01-16 13:15:54'),(97,'KA-16-QV-1276','2025-01-16 13:18:30'),(98,'HR-79-HJ-5604','2025-01-16 13:18:32'),(99,'HR-17-YN-5378','2025-01-16 13:18:36'),(100,'MH-88-QJ-7259','2025-01-16 13:18:40'),(101,'KA-32-EB-2885','2025-01-16 13:18:44'),(102,'GJ-35-MS-6768','2025-01-16 13:18:46'),(103,'KA-16-QV-1276','2025-01-16 13:21:17'),(104,'HR-79-HJ-5604','2025-01-16 13:21:19'),(105,'HR-17-YN-5378','2025-01-16 13:21:23'),(106,'KA-16-QV-1276','2025-01-16 13:22:35'),(107,'HR-79-HJ-5604','2025-01-16 13:22:37'),(108,'HR-17-YN-5378','2025-01-16 13:22:41'),(109,'MH-88-QJ-7259','2025-01-16 13:22:45'),(110,'KA-32-EB-2885','2025-01-16 13:22:49'),(111,'GJ-35-MS-6768','2025-01-16 13:22:51'),(112,'KA-16-QV-1276','2025-01-16 13:24:00'),(113,'HR-79-HJ-5604','2025-01-16 13:24:02'),(114,'HR-17-YN-5378','2025-01-16 13:24:06'),(115,'MH-88-QJ-7259','2025-01-16 13:24:10'),(116,'KA-16-QV-1276','2025-01-16 13:24:56'),(117,'HR-79-HJ-5604','2025-01-16 13:24:58'),(118,'HR-17-YN-5378','2025-01-16 13:25:02'),(119,'KA-16-QV-1276','2025-01-16 13:25:51'),(120,'HR-79-HJ-5604','2025-01-16 13:25:53'),(121,'HR-17-YN-5378','2025-01-16 13:25:57'),(122,'MH-88-QJ-7259','2025-01-16 13:26:01'),(123,'KA-16-QV-1276','2025-01-16 13:27:24'),(124,'HR-79-HJ-5604','2025-01-16 13:27:26'),(125,'HR-17-YN-5378','2025-01-16 13:27:30'),(126,'MH-88-QJ-7259','2025-01-16 13:27:34'),(127,'KA-32-EB-2885','2025-01-16 13:27:38'),(128,'GJ-35-MS-6768','2025-01-16 13:27:40'),(129,'KA-16-QV-1276','2025-01-16 13:28:11'),(130,'HR-79-HJ-5604','2025-01-16 13:28:13'),(131,'HR-17-YN-5378','2025-01-16 13:28:17'),(132,'MH-88-QJ-7259','2025-01-16 13:28:21'),(133,'KA-32-EB-2885','2025-01-16 13:28:25'),(134,'GJ-35-MS-6768','2025-01-16 13:28:27'),(135,'KA-16-QV-1276','2025-01-16 13:29:46'),(136,'HR-79-HJ-5604','2025-01-16 13:29:48'),(137,'HR-17-YN-5378','2025-01-16 13:29:52'),(138,'MH-88-QJ-7259','2025-01-16 13:29:56'),(139,'KA-32-EB-2885','2025-01-16 13:30:00'),(140,'GJ-35-MS-6768','2025-01-16 13:30:02'),(141,'KA-16-QV-1276','2025-01-16 13:30:57'),(142,'HR-79-HJ-5604','2025-01-16 13:30:59'),(143,'HR-17-YN-5378','2025-01-16 13:31:03'),(144,'MH-88-QJ-7259','2025-01-16 13:31:07'),(145,'KA-32-EB-2885','2025-01-16 13:31:11'),(146,'GJ-35-MS-6768','2025-01-16 13:31:13'),(147,'KA-16-QV-1276','2025-01-16 13:36:44'),(148,'HR-79-HJ-5604','2025-01-16 13:36:46'),(149,'HR-17-YN-5378','2025-01-16 13:36:50'),(150,'MH-88-QJ-7259','2025-01-16 13:36:54'),(151,'KA-32-EB-2885','2025-01-16 13:36:58'),(152,'GJ-35-MS-6768','2025-01-16 13:37:00'),(153,'KA-16-QV-1276','2025-01-16 13:39:06'),(154,'HR-79-HJ-5604','2025-01-16 13:39:08'),(155,'HR-17-YN-5378','2025-01-16 13:39:12'),(156,'MH-88-QJ-7259','2025-01-16 13:39:16'),(157,'KA-32-EB-2885','2025-01-16 13:39:20'),(158,'GJ-35-MS-6768','2025-01-16 13:39:22'),(159,'KA-16-QV-1276','2025-01-16 13:48:28'),(160,'HR-79-HJ-5604','2025-01-16 13:48:30'),(161,'HR-17-YN-5378','2025-01-16 13:48:34'),(162,'MH-88-QJ-7259','2025-01-16 13:48:38'),(163,'KA-32-EB-2885','2025-01-16 13:48:42'),(164,'GJ-35-MS-6768','2025-01-16 13:48:44'),(165,'KA-16-QV-1276','2025-01-16 13:51:21'),(166,'HR-79-HJ-5604','2025-01-16 13:51:22'),(167,'HR-17-YN-5378','2025-01-16 13:51:27'),(168,'MH-88-QJ-7259','2025-01-16 13:51:31'),(169,'KA-32-EB-2885','2025-01-16 13:51:35'),(170,'GJ-35-MS-6768','2025-01-16 13:51:37'),(171,'KA-16-QV-1276','2025-01-16 13:52:48'),(172,'HR-79-HJ-5604','2025-01-16 13:52:50'),(173,'HR-17-YN-5378','2025-01-16 13:52:54'),(174,'MH-88-QJ-7259','2025-01-16 13:52:58'),(175,'KA-32-EB-2885','2025-01-16 13:53:02'),(176,'GJ-35-MS-6768','2025-01-16 13:53:04'),(177,'KA-16-QV-1276','2025-01-16 13:57:32'),(178,'HR-79-HJ-5604','2025-01-16 13:57:34'),(179,'HR-17-YN-5378','2025-01-16 13:57:38'),(180,'MH-88-QJ-7259','2025-01-16 13:57:42'),(181,'KA-32-EB-2885','2025-01-16 13:57:46'),(182,'GJ-35-MS-6768','2025-01-16 13:57:48'),(183,'KA-16-QV-1276','2025-01-16 13:58:38'),(184,'HR-79-HJ-5604','2025-01-16 13:58:40'),(185,'HR-17-YN-5378','2025-01-16 13:58:44'),(186,'MH-88-QJ-7259','2025-01-16 13:58:48'),(187,'KA-32-EB-2885','2025-01-16 13:58:52'),(188,'GJ-35-MS-6768','2025-01-16 13:58:54'),(189,'GJ-35-MS-6768','2025-01-16 14:05:16'),(190,'KA-32-EB-2885','2025-01-16 14:05:17'),(191,'MH-88-QJ-7259','2025-01-16 14:05:19'),(192,'KA-16-QV-1276','2025-01-16 14:05:23'),(193,'HR-79-HJ-5604','2025-01-16 14:05:32'),(194,'HR-17-YN-5378','2025-01-16 14:05:34');
/*!40000 ALTER TABLE `alerttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add alert table',7,'add_alerttable'),(26,'Can change alert table',7,'change_alerttable'),(27,'Can delete alert table',7,'delete_alerttable'),(28,'Can view alert table',7,'view_alerttable'),(29,'Can add dldetails',8,'add_dldetails'),(30,'Can change dldetails',8,'change_dldetails'),(31,'Can delete dldetails',8,'delete_dldetails'),(32,'Can view dldetails',8,'view_dldetails'),(33,'Can add generalpeopledetails',9,'add_generalpeopledetails'),(34,'Can change generalpeopledetails',9,'change_generalpeopledetails'),(35,'Can delete generalpeopledetails',9,'delete_generalpeopledetails'),(36,'Can view generalpeopledetails',9,'view_generalpeopledetails'),(37,'Can add suspiciouspersondetails',10,'add_suspiciouspersondetails'),(38,'Can change suspiciouspersondetails',10,'change_suspiciouspersondetails'),(39,'Can delete suspiciouspersondetails',10,'delete_suspiciouspersondetails'),(40,'Can view suspiciouspersondetails',10,'view_suspiciouspersondetails'),(41,'Can add suspiciousvehicledetails',11,'add_suspiciousvehicledetails'),(42,'Can change suspiciousvehicledetails',11,'change_suspiciousvehicledetails'),(43,'Can delete suspiciousvehicledetails',11,'delete_suspiciousvehicledetails'),(44,'Can view suspiciousvehicledetails',11,'view_suspiciousvehicledetails'),(45,'Can add vehicledetails',12,'add_vehicledetails'),(46,'Can change vehicledetails',12,'change_vehicledetails'),(47,'Can delete vehicledetails',12,'delete_vehicledetails'),(48,'Can view vehicledetails',12,'view_vehicledetails');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$4VMwuXIeZQ2rPx2XLuZ9W3$QGPkr6orBpchlIuADmgnrIZv4VdIh7tQ4iiTxsvy9Jk=','2025-01-16 07:30:11.931274',1,'savj','','','',1,1,'2025-01-15 10:30:35.970429');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-01-15 10:36:46.132958','1','Alert for Vehicle: UP-37-UO-2737 at 2025-01-15 16:05:55+00:00',3,'',7,1),(2,'2025-01-16 07:30:36.033095','157','Vehicle: TN-54-VU-9999 (Owner: Saravanakumar V)',2,'[{\"changed\": {\"fields\": [\"Vehicletype\"]}}]',12,1),(3,'2025-01-16 07:30:41.642450','156','Vehicle: MH-54-QO-222 (Owner: Suresh A)',2,'[]',12,1),(4,'2025-01-16 07:30:47.752866','155','Vehicle: GJ-12-VU-5555 (Owner: Mahaboob Pasha G)',2,'[{\"changed\": {\"fields\": [\"Vehicletype\"]}}]',12,1),(5,'2025-01-16 07:30:54.304642','154','Vehicle: TN-53-ZG-6464 (Owner: Krishan Mootrhy M)',2,'[{\"changed\": {\"fields\": [\"Vehicletype\"]}}]',12,1),(6,'2025-01-16 07:30:57.896227','153','Vehicle: WB-85-XX-6666 (Owner: Boopalan L)',2,'[]',12,1),(7,'2025-01-16 07:31:06.555183','152','Vehicle: KA-36-PI-4444 (Owner: Arun Prasath B)',2,'[]',12,1),(8,'2025-01-16 07:31:10.793318','151','Vehicle: TN-54-VU-4645 (Owner: Supriya RS)',2,'[]',12,1),(9,'2025-01-16 07:33:01.745740','1','Vehicle: GJ-35-MS-6768 (Owner: Raymond Daugherty)',2,'[{\"changed\": {\"fields\": [\"Vehicletype\"]}}]',12,1),(10,'2025-01-16 07:33:14.131892','2','Vehicle: KA-32-EB-2885 (Owner: Pamela Kim)',2,'[{\"changed\": {\"fields\": [\"Vehicletype\"]}}]',12,1),(11,'2025-01-16 07:33:25.170039','3','Vehicle: HR-79-HJ-5604 (Owner: Andrew Saunders)',2,'[{\"changed\": {\"fields\": [\"Vehicletype\"]}}]',12,1),(12,'2025-01-16 07:33:35.055984','61','Vehicle: RJ-10-OK-9816 (Owner: Samantha Mcdaniel)',2,'[]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'myapp','alerttable'),(8,'myapp','dldetails'),(9,'myapp','generalpeopledetails'),(10,'myapp','suspiciouspersondetails'),(11,'myapp','suspiciousvehicledetails'),(12,'myapp','vehicledetails'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-01-15 10:30:13.825615'),(2,'auth','0001_initial','2025-01-15 10:30:14.762466'),(3,'admin','0001_initial','2025-01-15 10:30:14.972539'),(4,'admin','0002_logentry_remove_auto_add','2025-01-15 10:30:14.985563'),(5,'admin','0003_logentry_add_action_flag_choices','2025-01-15 10:30:15.003000'),(6,'contenttypes','0002_remove_content_type_name','2025-01-15 10:30:15.106876'),(7,'auth','0002_alter_permission_name_max_length','2025-01-15 10:30:15.196596'),(8,'auth','0003_alter_user_email_max_length','2025-01-15 10:30:15.244144'),(9,'auth','0004_alter_user_username_opts','2025-01-15 10:30:15.257803'),(10,'auth','0005_alter_user_last_login_null','2025-01-15 10:30:15.339104'),(11,'auth','0006_require_contenttypes_0002','2025-01-15 10:30:15.345325'),(12,'auth','0007_alter_validators_add_error_messages','2025-01-15 10:30:15.356929'),(13,'auth','0008_alter_user_username_max_length','2025-01-15 10:30:15.503880'),(14,'auth','0009_alter_user_last_name_max_length','2025-01-15 10:30:15.602351'),(15,'auth','0010_alter_group_name_max_length','2025-01-15 10:30:15.624654'),(16,'auth','0011_update_proxy_permissions','2025-01-15 10:30:15.636569'),(17,'auth','0012_alter_user_first_name_max_length','2025-01-15 10:30:15.742080'),(18,'myapp','0001_initial','2025-01-15 10:30:15.752380'),(19,'sessions','0001_initial','2025-01-15 10:30:15.807781');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hf19sn63efd33cy7gpxnse1kay2msvjr','.eJxVjEEOgjAURO_StWl-C9jWpXvOQOa3vxY1kFBYGe-uJCx0lvNe3ksN2NYybFWWYUzqoow6_X6M-JBpB-mO6TbrOE_rMrLeFX3Qqvs5yfN6uH-Bglr2bJeiQQyOnGQOaNhLYEFLrgGYWoTvrOUshs45wUfPhI6yyR2iVe8PBlU44Q:1tYKKR:OfVRQgEzUQb3IRE4GbCAICxCbtaHKedjFygul8nqTz4','2025-01-30 07:30:11.937360');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dldetails`
--

DROP TABLE IF EXISTS `dldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dldetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LicenseNumber` varchar(20) NOT NULL,
  `OwnerAadhar_no` varchar(12) NOT NULL,
  `licenseType` varchar(50) DEFAULT NULL,
  `IssueDate` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LicenseNumber` (`LicenseNumber`),
  KEY `OwnerAadhar_no` (`OwnerAadhar_no`),
  CONSTRAINT `dldetails_ibfk_1` FOREIGN KEY (`OwnerAadhar_no`) REFERENCES `generalpeopledetails` (`Aadhar_no`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dldetails`
--

LOCK TABLES `dldetails` WRITE;
/*!40000 ALTER TABLE `dldetails` DISABLE KEYS */;
INSERT INTO `dldetails` VALUES (1,'KA0320130639546','225703741444','Private','2023-08-24','2028-05-12'),(2,'UP0120102422372','752215040679','Private','2022-09-03','2027-08-09'),(3,'UP0120245271257','439634961335','Commercial','2023-10-24','2027-06-03'),(4,'TN0119919405856','357861123993','Private','2023-07-18','2027-01-17'),(5,'PB0119990451729','945118875363','Private','2020-07-31','2026-08-19'),(6,'DL0219871916424','733698918231','Commercial','2020-02-19','2027-01-31'),(7,'CH0119818331358','927980642756','Private','2023-04-28','2026-02-24'),(8,'CH0120097039791','789700873429','Commercial','2023-01-31','2025-09-29'),(9,'WB0220250385212','832463744765','Private','2020-11-11','2025-04-03'),(10,'TN0419946180988','292859293601','Commercial','2023-06-18','2025-05-27'),(11,'MP0219983045725','861936272115','Private','2024-02-21','2028-12-26'),(12,'RJ0120147069425','179226548836','Private','2022-05-24','2025-03-21'),(13,'WB0220198690309','568121583019','Private','2023-10-15','2025-09-08'),(14,'GJ0120038300776','508522394493','Commercial','2021-01-16','2027-12-08'),(15,'MH4320180496580','477849096803','Commercial','2023-04-05','2026-10-07'),(16,'HR0219933510096','641997082722','Private','2023-01-13','2027-03-14'),(17,'PB0120095293783','437539827973','Commercial','2020-08-19','2027-08-18'),(18,'KA0419954119919','359683892556','Commercial','2022-04-12','2025-10-13'),(19,'HR0119854492917','956144970154','Commercial','2020-10-11','2028-11-30'),(20,'GJ0120021266752','613717293830','Commercial','2023-05-11','2028-01-26'),(21,'MH1420149272235','468292671112','Commercial','2024-04-08','2028-12-21'),(22,'GJ0919911617301','383913726268','Commercial','2024-08-13','2028-03-09'),(23,'WB0119950415702','848337432835','Commercial','2022-05-21','2028-01-19'),(24,'MH1220056682252','882770204800','Private','2024-01-19','2025-10-30'),(25,'DL0319844905703','529263978405','Commercial','2024-04-18','2025-05-07'),(26,'DL0219986954267','159387377325','Commercial','2020-12-27','2028-05-23'),(27,'WB0119914423104','958647419414','Private','2021-06-03','2025-10-15'),(28,'DL0220089085621','528778923330','Commercial','2022-12-04','2027-08-09'),(29,'UP0219903363070','658553340549','Private','2022-04-19','2029-04-07'),(30,'TN0120019085002','945935668023','Private','2021-09-01','2026-12-28'),(31,'MH1220182581036','161492884275','Commercial','2021-04-26','2027-03-17'),(32,'UP0219810913331','908161236056','Commercial','2021-11-04','2028-04-29'),(33,'DL0419949444646','758900894442','Commercial','2023-09-25','2028-06-13'),(34,'WB0119839049641','832702611347','Private','2023-04-22','2026-09-21'),(35,'GJ1519857995526','290163904877','Commercial','2020-04-05','2029-09-10'),(36,'CH0220228392572','476750295249','Commercial','2021-11-07','2029-05-18'),(37,'DL0220132271306','709414718756','Private','2020-03-28','2025-08-06'),(38,'AP0220053914367','450262718373','Private','2024-12-09','2027-10-20'),(39,'PB0220092799610','630003082389','Private','2023-12-14','2025-05-19'),(40,'AP0120063186929','446553888547','Private','2022-07-21','2025-10-29'),(41,'JK0120053084116','513314947378','Commercial','2024-10-27','2027-04-07'),(42,'DL0219850080470','745312227030','Private','2022-10-03','2027-02-10'),(43,'PB0119932462004','688795170459','Private','2024-12-23','2026-04-15'),(44,'WB0220038444734','714554635093','Commercial','2024-05-28','2025-07-14'),(45,'MH4320152193345','797060403888','Commercial','2024-05-15','2028-07-02'),(46,'AP0120221974453','832871254796','Commercial','2020-06-15','2025-04-09'),(47,'UP0119819546004','351342953671','Commercial','2023-12-27','2027-06-23'),(48,'AP0120214584289','580181516492','Commercial','2021-02-20','2025-11-01'),(49,'HR0120247217829','135339334493','Private','2021-11-02','2029-06-02'),(50,'AP0220131231431','631842077380','Commercial','2022-09-16','2027-08-06'),(51,'PB0119944291470','515314661842','Private','2024-11-18','2028-03-25'),(52,'KA0119853164107','847315468080','Commercial','2022-09-14','2029-02-08'),(53,'MP0220123745115','177083112512','Commercial','2021-09-12','2029-07-22'),(54,'RJ0220213902550','763723388579','Commercial','2024-02-21','2025-05-01'),(55,'PB0120224689594','474294074530','Commercial','2023-08-19','2029-12-02'),(56,'HR0220013897559','566844715767','Private','2023-05-01','2029-03-23'),(57,'UP0120241886764','175087141365','Commercial','2021-03-18','2028-02-09'),(58,'CH0219944986137','906891383590','Private','2023-04-09','2025-01-22'),(59,'WB0220095876576','377131083804','Private','2023-08-11','2027-07-31'),(60,'HR0220034528450','878114210581','Private','2021-04-02','2028-09-10'),(61,'HR0120160474858','719431478908','Commercial','2024-09-28','2029-09-15'),(62,'UP0119836630733','583792562667','Commercial','2021-11-16','2026-06-03'),(63,'HR0119898536037','377468372026','Commercial','2021-01-23','2029-06-05'),(64,'DL0319911087939','260125471864','Private','2024-04-18','2029-11-30'),(65,'DL0420140975180','364905319783','Commercial','2021-01-20','2028-03-30'),(66,'MH4320003763624','404259130154','Private','2023-11-07','2026-02-15'),(67,'KA0220256576319','679309056989','Private','2023-12-10','2028-09-24'),(68,'MH1219943484084','920017762666','Commercial','2024-07-03','2027-02-19'),(69,'PB0220127786810','233050703673','Private','2020-01-28','2028-03-26'),(70,'DL0319844058326','481483103169','Commercial','2024-09-06','2025-12-29'),(71,'UP0219891520545','452060285337','Private','2022-06-09','2026-10-23'),(72,'PB0119845663333','734254127391','Private','2021-06-18','2027-01-31'),(73,'HR0120029269094','250818300532','Commercial','2021-08-23','2025-08-23'),(74,'GJ0119969426605','362365896400','Private','2022-01-07','2026-09-10'),(75,'WB0120216231658','155055200205','Commercial','2022-04-26','2026-10-24'),(76,'PB0219887765853','217177589802','Private','2020-01-22','2029-05-19'),(77,'CH0220061171724','368605666534','Private','2024-10-24','2025-05-16'),(78,'MH2020224681326','969441149755','Private','2020-08-20','2029-06-10'),(79,'MH1419933826230','102409908818','Private','2024-11-10','2026-07-03'),(80,'WB0220124231765','469314986778','Private','2024-01-13','2029-08-16'),(81,'AP0120039645378','254295109635','Private','2020-12-28','2029-04-26'),(82,'WB0220105599014','108586999520','Commercial','2021-07-08','2025-05-09'),(83,'TN0119988052812','887072401768','Private','2023-10-06','2025-03-06'),(84,'JK0220081811963','908807204919','Commercial','2024-04-17','2025-03-01'),(85,'KA0320098224066','851453885863','Private','2020-09-23','2027-01-24'),(86,'DL0319801210811','665747406871','Private','2024-07-23','2028-07-26'),(87,'KA0119808049533','306160843108','Commercial','2024-08-13','2029-12-11'),(88,'HR0119920555079','948775580479','Private','2023-08-15','2025-05-20'),(89,'AP0220039626074','193004777953','Private','2020-09-05','2029-07-11'),(90,'PB0120117380903','272531021591','Commercial','2021-04-09','2025-07-13'),(91,'CH0220101564654','427832376422','Private','2022-04-16','2029-10-09'),(92,'DL0220126408791','800431098287','Private','2020-07-29','2029-04-28'),(93,'DL0119904753475','216542565656','Private','2022-12-13','2025-03-10'),(94,'RJ0219892409676','916550696822','Commercial','2022-11-04','2026-07-24'),(95,'GJ1519867274611','123313249333','Private','2021-01-13','2026-09-27'),(96,'KA0419990167641','888902982544','Commercial','2024-09-30','2027-01-19'),(97,'CH0220055022652','279931638951','Commercial','2024-01-01','2025-08-01'),(98,'RJ0119805609756','210571320163','Private','2024-03-18','2026-06-20'),(99,'RJ0219924446628','765957963273','Private','2021-03-14','2029-11-09'),(100,'MP0219850625731','548061405145','Private','2022-03-28','2028-11-30'),(101,'RJ0120191116274','743303375765','Private','2021-07-22','2027-08-30'),(102,'JK0220251115609','289553681022','Private','2022-08-16','2026-12-12'),(103,'PB0120188520119','693057591964','Commercial','2020-08-19','2029-12-27'),(104,'AP0220016204789','392302053644','Private','2022-06-03','2027-08-05'),(105,'CH0220179826002','903325781868','Private','2023-01-04','2026-09-24'),(106,'JK0119905838667','813801965746','Private','2023-01-02','2029-05-07'),(107,'HR0120068044809','938513161388','Commercial','2021-08-05','2029-06-24'),(108,'JK0219994222916','782030135440','Private','2021-09-01','2026-03-30'),(109,'WB0220243943080','993062513789','Commercial','2023-12-07','2029-03-04'),(110,'DL0419849628770','901831835254','Private','2021-05-26','2029-12-21'),(111,'PB0119807046030','879848627303','Private','2022-07-01','2029-04-16'),(112,'HR0220035894065','470130703619','Commercial','2020-04-29','2026-01-28'),(113,'RJ0219920370694','554728797463','Private','2021-07-20','2026-04-01'),(114,'MP0219845021272','612944026203','Commercial','2022-06-11','2025-09-22'),(115,'JK0120035156317','384173490199','Private','2023-12-03','2029-12-12'),(116,'GJ0120201822044','686975107076','Commercial','2020-02-16','2026-06-16'),(117,'MP0219866032712','345345696796','Private','2021-02-06','2028-12-31'),(118,'UP0120058629382','200337798327','Private','2022-09-18','2025-11-29'),(119,'AP0219890139493','593736774962','Commercial','2023-10-04','2028-06-18'),(120,'WB0120079790978','144821871633','Commercial','2022-07-30','2027-09-13'),(121,'UP0220090833340','548194619146','Commercial','2024-10-25','2027-08-15'),(122,'DL0420010586250','392947655487','Private','2022-02-15','2026-04-19'),(123,'PB0119893665636','755008356854','Private','2023-01-16','2027-02-15'),(124,'RJ0119887376000','846006558542','Private','2020-03-17','2025-10-18'),(125,'UP0120115610674','665688634978','Private','2024-12-10','2026-11-19'),(126,'CH0220243443304','350893278997','Commercial','2022-01-30','2025-03-14'),(127,'GJ1520011897930','471158327684','Private','2023-12-03','2026-07-10'),(128,'CH0120191667363','947335646963','Commercial','2024-06-14','2026-11-10'),(129,'HR0120026144986','834843741137','Private','2021-09-06','2027-03-02'),(130,'TN0220111810956','260925573192','Commercial','2024-01-21','2025-02-20'),(131,'WB0119805156472','630834446593','Private','2021-12-18','2027-11-03'),(132,'DL0120165830748','558429518644','Commercial','2023-07-25','2028-01-30'),(133,'RJ0119832725627','424508414748','Commercial','2020-09-08','2029-01-13'),(134,'TN0220250658786','471564868203','Commercial','2021-10-04','2028-07-31'),(135,'PB0220237842391','409101230616','Private','2023-01-02','2025-01-23'),(136,'PB0220132600891','968369643003','Private','2021-03-03','2029-03-16'),(137,'JK0220059284650','656554815334','Commercial','2023-03-11','2027-09-05'),(138,'PB0120085760258','611674071535','Private','2021-03-23','2026-03-13'),(139,'MP0220054151377','638581116542','Commercial','2021-02-20','2029-10-31'),(140,'JK0119858455012','941413944552','Commercial','2022-04-29','2026-01-02'),(141,'WB0119939338057','253667406674','Commercial','2022-09-18','2027-07-30'),(142,'KA0420035341460','340974265540','Commercial','2023-02-22','2026-11-21'),(143,'MP0120238835318','293111842749','Commercial','2022-12-13','2025-11-19'),(144,'UP0220154117974','776720649662','Private','2022-05-29','2025-05-06'),(145,'KA0120257537088','116511604557','Private','2022-12-22','2026-03-20'),(146,'RJ0120046349594','768780160668','Private','2023-10-26','2027-08-24'),(147,'MP0219925152523','214366441393','Private','2024-10-11','2026-07-15'),(148,'AP0219826732901','768781235319','Commercial','2023-11-03','2026-07-01'),(149,'PB0219802220544','388189415829','Private','2022-04-15','2025-07-15'),(150,'UP0120220226048','770077422231','Commercial','2024-08-29','2028-09-19'),(151,'TN0090101612004','565678788989','Private','2024-08-29','2028-09-19'),(152,'TN6820120003562','111122223333','Private','2024-10-11','2026-07-15'),(153,'TN29T20100001058','222233334444','Private','2023-11-03','2026-07-01'),(154,'TN5919990010066','333344445555','Private','2022-04-15','2025-07-15'),(155,'TN0220057672005','444455556666','Commercial','2024-08-29','2028-09-19'),(156,'TN23T20100003026','555566667777','Commercial','2024-08-29','2028-09-19'),(157,'TN5420080001214','666677778888','Commercial','2023-10-26','2027-08-24');
/*!40000 ALTER TABLE `dldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generalpeopledetails`
--

DROP TABLE IF EXISTS `generalpeopledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generalpeopledetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Aadhar_no` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Aadhar_no` (`Aadhar_no`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generalpeopledetails`
--

LOCK TABLES `generalpeopledetails` WRITE;
/*!40000 ALTER TABLE `generalpeopledetails` DISABLE KEYS */;
INSERT INTO `generalpeopledetails` VALUES (1,'225703741444','Raymond Daugherty','1999-05-03','9438 Bridges Village Apt. 046, North Jamie, PA 47179','7070729383'),(2,'752215040679','Pamela Kim','1987-11-18','USNV Smith, FPO AE 63113','7663674305'),(3,'439634961335','Andrew Saunders','1960-02-04','118 Jason Fields Suite 970, New Christopher, KS 75679','9053992303'),(4,'357861123993','Brandon Marquez','1991-10-27','5206 Katrina Rest, West Brandon, GA 67947','4338807485'),(5,'945118875363','Andrew Nash','1994-04-20','544 Gallagher Ferry, Perryborough, TN 53516','5827281386'),(6,'733698918231','Shane Jackson','1991-02-18','PSC 0251, Box 7424, APO AP 10645','4084731240'),(7,'927980642756','Daryl Martinez','1972-04-18','41667 Scott Fork, Lake Scott, WY 12649','6170625359'),(8,'789700873429','Samantha Mills','1962-12-23','19674 Mcbride Creek, Port Jamie, NH 96686','3875612999'),(9,'832463744765','Steven Williams','2006-02-22','44593 Lee Shore Apt. 221, Martinshire, ME 83681','2588718515'),(10,'292859293601','Jacob Hughes','2004-01-29','USNS Blanchard, FPO AP 84356','4443368907'),(11,'861936272115','Zachary Williams','2003-09-04','78935 Kelley Dam, Gabrielfurt, MT 02865','5954729908'),(12,'179226548836','Dr. Carol Bennett MD','1976-11-25','674 Priscilla Ford Suite 437, South Thomas, DC 77370','4600025492'),(13,'568121583019','Victoria Byrd','1977-07-09','USNS Hicks, FPO AA 96981','9163388337'),(14,'508522394493','Shelley Nguyen','1999-03-07','72367 Alexandra Trafficway Suite 179, Wilsonborough, DE 34342','3565344209'),(15,'477849096803','William Chan','2003-08-09','USS Hernandez, FPO AA 36015','224746886'),(16,'641997082722','Timothy Luna','1990-07-09','5430 Lindsey Mountains, Maxwellshire, WA 27160','3796493186'),(17,'437539827973','Stephanie Graham','1979-11-20','807 Young Tunnel, Jeremymouth, WI 51094','856932733'),(18,'359683892556','Anne Lyons','1996-01-11','4262 Ewing Road Apt. 337, Bartonview, NE 60423','1851758032'),(19,'956144970154','Anthony Mercado','1959-05-18','100 Stephen Shoals, East Benjaminchester, MN 49078','4903888387'),(20,'613717293830','Tamara Fleming','1962-12-16','44107 Waters Lane Suite 685, New Brittneyborough, IL 12880','6650283584'),(21,'468292671112','Barbara Mason','1966-03-25','1160 Wolfe Drive Apt. 774, Darrylmouth, MS 42098','8811369901'),(22,'383913726268','David Smith','1961-06-13','5170 Wiggins Roads Apt. 065, East David, ME 27961','58952627'),(23,'848337432835','Richard Novak','1963-06-18','572 Lin Forges, Moranburgh, SC 89861','7216173422'),(24,'882770204800','Aaron Carroll','2006-07-18','9305 Kennedy Throughway Suite 230, Williamstad, UT 74372','1368495344'),(25,'529263978405','Charles Parker','1990-10-14','8421 Donna Parks Suite 330, Lake Michaelhaven, NE 34805','2702454472'),(26,'159387377325','Shannon Shaw','1999-07-30','4849 Harris Dam, Maxwellberg, IA 88130','7567527047'),(27,'958647419414','Leslie Madden','1976-11-06','375 Blair Mountains Apt. 832, Brianhaven, NY 42947','4926966718'),(28,'528778923330','George Lester','1960-10-18','38061 James Club Suite 999, Cynthiatown, CO 72300','1702877053'),(29,'658553340549','Kurt Parker','1972-08-27','4309 Kelly Islands Suite 310, South Destinymouth, NC 08741','1225404294'),(30,'945935668023','Lindsay Stokes','1976-01-24','PSC 1405, Box 5678, APO AA 85568','5734843359'),(31,'161492884275','Jasmine Hernandez','1978-01-08','0069 Edwin Island, Isaiahhaven, AK 07731','3343913866'),(32,'908161236056','Shawn Chang','1990-10-18','961 Zachary Plaza, South Denise, VT 44622','8934718587'),(33,'758900894442','Julie Black','1971-08-20','1353 Mercado Ports, North Meredithchester, VT 57204','5676034292'),(34,'832702611347','Ashley Harper','2002-06-29','USCGC Stephens, FPO AE 12989','7295148662'),(35,'290163904877','Rachel Anderson MD','1996-01-20','795 Emily Trail Apt. 136, East Dawn, OR 47003','6798777739'),(36,'476750295249','Michele Brown','2004-10-09','8148 April Landing, Josephview, DE 39591','2213790959'),(37,'709414718756','Thomas Watson','1994-12-04','6764 Joshua Station, Hallmouth, LA 85247','3534168673'),(38,'450262718373','Derek Graham','1971-11-07','PSC 4890, Box 1379, APO AP 82593','7903354640'),(39,'630003082389','Darren Lucas','1964-02-26','4616 Cameron Springs Suite 066, Kendrafurt, KS 59354','181051490'),(40,'446553888547','Mrs. Lori Richards','2005-12-15','USNV Moss, FPO AE 34172','9412432371'),(41,'513314947378','Melanie Young','1978-06-13','87953 Pineda Mountains Apt. 485, West Christopher, PA 28923','4013805194'),(42,'745312227030','Aaron Brown','1961-12-08','27758 Wolf Landing, Markview, MD 58902','645273104'),(43,'688795170459','Aimee Carpenter','1987-10-16','875 Dean Radial Suite 069, Andersonside, TX 71553','7056538463'),(44,'714554635093','Jeffrey Norris','1997-05-09','147 Edwin Loop, Lake Tabithafort, RI 81024','4263032193'),(45,'797060403888','Aaron Meyer','1968-11-21','507 Adam Via, West Georgemouth, AR 62189','9166476566'),(46,'832871254796','Wendy Williams','1968-07-16','113 Patrick Springs Suite 421, Port Joseph, TN 83224','5003951570'),(47,'351342953671','Jennifer Murray','2005-01-08','13576 Anderson View Apt. 584, Jenkinsberg, TX 50302','9105759134'),(48,'580181516492','Chris Brown','1992-02-25','047 Gregory Shore, New Erika, OR 39500','9751371106'),(49,'135339334493','Carla Tucker','1986-09-14','36594 Troy Fork, Gibbsburgh, OH 72754','7926998940'),(50,'631842077380','Brittany Franklin','1990-01-19','159 Chris Harbor Suite 089, Lake Jerry, MS 88656','4629055671'),(51,'515314661842','Tiffany Jones','1990-10-17','63402 Tracey Parks Apt. 622, East Timothy, DC 14350','3559002719'),(52,'847315468080','Cindy Poole','1988-12-08','1718 Rosario River Apt. 964, Coffeychester, FL 27755','2260460896'),(53,'177083112512','Cole Perkins','1979-09-05','638 Moore Brook, Bauerhaven, CO 56499','7475746172'),(54,'763723388579','Stacy Smith','1993-01-26','2553 Williams Forest, New Biancafurt, CO 92344','4622393098'),(55,'474294074530','Michael Green','1968-12-06','8613 Hart Causeway Apt. 333, Moorestad, CA 62758','3215612440'),(56,'566844715767','Meghan Anderson','1998-06-07','202 Bailey Rapids, West Sean, KY 70026','5220255834'),(57,'175087141365','Mary Rosales','1998-11-18','70036 Clark Junction, South Jeffreyborough, WA 90269','5198240417'),(58,'906891383590','Alexander Doyle','2004-12-12','8728 Sarah Village, Port Marcusville, CO 79624','3333950541'),(59,'377131083804','Stephen Vargas Jr.','2001-08-28','2580 Sanders Forges Apt. 489, Melanieland, IN 53892','8388619694'),(60,'878114210581','Ashlee Smith','1981-01-28','6837 Richmond Way Apt. 232, Petersonchester, SC 02536','2939807480'),(61,'719431478908','Samantha Mcdaniel','1960-07-31','2135 Soto Mission, Villanuevastad, KS 19241','6700067577'),(62,'583792562667','Angela Hall','1995-06-03','90748 Holmes Fields Suite 984, Gregorychester, ND 53156','2549889733'),(63,'377468372026','Daniel Bauer','1960-10-12','17587 Charles Street Suite 959, Millershire, CO 48655','1247638620'),(64,'260125471864','Elizabeth Caldwell','1964-11-27','65542 George Isle, Torresshire, MA 20701','1121907508'),(65,'364905319783','Melissa Anthony','1965-12-09','200 Angel Mountain Suite 516, Lake James, CO 84737','2119406088'),(66,'404259130154','Holly Dalton','1983-03-15','460 Wood Stravenue Apt. 959, New Aaronport, WY 83593','4980066663'),(67,'679309056989','Tammy Ford','1962-05-23','8436 Daniel Curve Apt. 165, Brandonshire, IA 40824','9768749827'),(68,'920017762666','Kathleen Lopez','1999-10-15','901 Amy Square, New Virginia, MA 82606','1976995945'),(69,'233050703673','Danny Davenport','1972-05-14','6597 Ronald Stream, Gracechester, IN 49023','758623592'),(70,'481483103169','Collin Henderson','1981-01-17','Unit 7253 Box 1551, DPO AP 02938','9767900764'),(71,'452060285337','Richard Fisher','1978-03-21','730 Bryant Courts, New William, MD 24915','5027533327'),(72,'734254127391','Krista Rose','1971-06-02','47454 Melissa Rest Apt. 914, Schmidtberg, KY 28899','6948445455'),(73,'250818300532','Albert Harvey','1977-10-24','6688 Olsen Trail, Rogerston, OR 38622','7730223100'),(74,'362365896400','Jacob Ramirez','1959-03-08','7760 Christina Hill, Cookberg, FL 85455','424754787'),(75,'155055200205','Donna Bowen','1966-10-22','727 Wagner Expressway, South Antonio, ND 73666','3257948949'),(76,'217177589802','Mrs. Monica Good','1985-09-26','7313 Brittany Valley Apt. 568, Williamston, CT 09892','6802221304'),(77,'368605666534','April Bailey','2005-08-13','7814 Carter Roads, Newmanborough, WA 50542','9531647310'),(78,'969441149755','Troy Hamilton','1966-11-20','9368 Jack Valleys Apt. 075, Port David, ND 50884','2627369145'),(79,'102409908818','Diana Kent','1986-06-01','587 Samantha Run, West Toddview, NC 20956','2634285528'),(80,'469314986778','Jade Brown','1968-01-10','USNS Gomez, FPO AE 36193','9235397259'),(81,'254295109635','Shane Rice','2005-02-09','660 Brown Trail, Tiffanyside, CT 42610','4596507076'),(82,'108586999520','Julie Hebert','1969-02-15','626 Christina Ramp Suite 450, Edwardhaven, AZ 71318','6798937854'),(83,'887072401768','Michelle Williams','1986-12-08','7615 Kyle Valley Apt. 955, South Josemouth, TN 58376','8634438754'),(84,'908807204919','James Smith','1973-06-24','44387 Hobbs Bridge, North Darlene, ND 23216','4055599691'),(85,'851453885863','William Gonzalez','1986-03-08','2042 Norris Fords, Lake Jillianhaven, MD 01554','1370968887'),(86,'665747406871','Megan Daniels MD','1979-11-27','207 Meghan Route, Andersonburgh, WV 10293','6741821997'),(87,'306160843108','David Porter','1967-12-27','16371 Heather Ramp, Marcberg, DC 22349','2150707761'),(88,'948775580479','David Freeman','1989-01-04','37021 Harris Shoal, Tracyburgh, VA 37220','3252847756'),(89,'193004777953','Cathy Lee','2006-01-08','021 Guzman Union, East Ashleyview, CA 87590','6436163868'),(90,'272531021591','Donna Howard','1999-03-09','Unit 9319 Box 2446, DPO AE 69226','9538955603'),(91,'427832376422','Justin Brooks','1990-07-20','3711 Thompson Square, New Anthony, IL 02488','925090367'),(92,'800431098287','Matthew Cummings','1963-11-06','67488 Jacob Skyway, Hernandezton, OH 79769','3220195970'),(93,'216542565656','Jessica Evans','1993-01-06','35644 Lisa Harbor Suite 855, Angelamouth, AZ 43640','5295674517'),(94,'916550696822','Miss Adriana Wood','1995-03-18','5986 Underwood Flat, Wilkersonside, AL 59024','8044045223'),(95,'123313249333','Dennis Simpson','1991-12-31','69697 Scott Wall, Michaelstad, LA 28605','3610091625'),(96,'888902982544','Mary Griffith DVM','1968-06-08','Unit 0344 Box 4350, DPO AA 52273','5889420949'),(97,'279931638951','Wayne Shannon','1962-07-11','392 Rhonda Junctions Apt. 330, Ramirezburgh, WA 84975','952769808'),(98,'210571320163','Kevin West','1983-04-07','21581 Victoria Port Suite 898, Powellstad, WY 61362','3350495535'),(99,'765957963273','Christopher Lopez','2003-03-21','238 Willis Union Apt. 407, Sherriland, VA 07083','482535609'),(100,'548061405145','Daniel Cummings','1970-05-21','4759 Burns Pass Suite 553, North Vanessamouth, ND 27816','9588358121'),(101,'743303375765','Samantha Hawkins','1969-06-11','81053 Aaron Corner Apt. 791, Gloriaport, VA 64101','8747327099'),(102,'289553681022','Stanley Thompson','2003-01-03','1321 Hunt Islands Suite 488, Wendymouth, CA 11803','375630029'),(103,'693057591964','Leslie Walters','1989-02-01','99260 Matthew Pine Apt. 833, Karentown, MO 04395','5975310325'),(104,'392302053644','James Collier','1988-11-20','21399 Brooks Shoal, Jamesbury, TN 90463','5936577821'),(105,'903325781868','Kelly Graham','1999-04-12','57866 April Hollow Suite 341, West Terri, OK 27939','7222164606'),(106,'813801965746','Wendy Smith','2003-03-14','1028 Wilson Lock, New Timothymouth, NV 97423','3375883163'),(107,'938513161388','Donald Smith','1985-05-21','3946 Melvin Knoll Apt. 180, Lake Ryanborough, GA 03868','4900523794'),(108,'782030135440','Christopher Thomas','1985-09-17','Unit 5531 Box 8382, DPO AA 83755','9248702665'),(109,'993062513789','Jordan Anderson','1973-03-11','27613 Adams Port, Wadeland, KS 74295','4854340110'),(110,'901831835254','Erik Young','1990-10-16','8164 Brittany Village, New Donnatown, UT 13592','5834593921'),(111,'879848627303','Larry Franklin','1973-06-06','41641 Kevin Vista Suite 442, West Debraville, ME 04403','1877111075'),(112,'470130703619','Elizabeth Mcbride','2000-12-15','005 Young Park Suite 409, South Katherinestad, MN 92452','1020736463'),(113,'554728797463','Joe Shaw','2000-10-30','02253 Tricia Parkways, Hicksland, NY 95758','8577930838'),(114,'612944026203','Joseph Baker','1996-09-23','28207 Shannon Light Suite 559, East James, SC 59760','4302070680'),(115,'384173490199','Roy Powell','1983-03-27','20939 Tammy Parkways, Bowentown, ND 31751','1466108224'),(116,'686975107076','Mr. Nicholas Mcguire Jr.','1979-06-17','05527 Gray Keys, Amberfort, VT 22910','4734050046'),(117,'345345696796','Samantha Brown','1959-06-28','744 Ashley Plains Apt. 781, New Jessicastad, NJ 25503','6083924906'),(118,'200337798327','Bradley Goodman','1972-09-23','2211 Hamilton Meadow Apt. 607, West Paulachester, IA 36349','7472278509'),(119,'593736774962','Michelle Freeman','1962-04-08','1942 Meghan Points, Normanburgh, NJ 15795','1460489454'),(120,'144821871633','Jackie Manning','1990-03-03','1036 Jensen Alley Suite 667, Gomezburgh, NM 15036','9208223962'),(121,'548194619146','Tiffany Kramer','1989-03-17','90846 Ryan Key Apt. 109, Juanmouth, IL 70764','4847912813'),(122,'392947655487','Mary Webb','2003-01-30','USS Mccoy, FPO AA 67341','8741523109'),(123,'755008356854','Jennifer Flores','1980-08-21','692 Lindsey Mountain Apt. 884, Annaville, AL 65399','480220028'),(124,'846006558542','Lisa Bartlett','2000-11-13','918 Walls Rue, New Thomasberg, KS 60085','3778695399'),(125,'665688634978','Mary Flowers','1959-12-15','71464 Veronica Spurs, Davisland, RI 81901','3175018695'),(126,'350893278997','Sandra Huff','1988-05-02','USS Mcintyre, FPO AE 85971','1555548873'),(127,'471158327684','Phillip Brown','1959-10-01','USNS Acevedo, FPO AA 09092','9444799236'),(128,'947335646963','Sarah Hubbard','1974-06-30','87712 David Burgs, North Crystalshire, NM 50119','5706280793'),(129,'834843741137','Joseph Anderson','1989-03-20','4497 Michael Pike, Simpsonfort, AL 61678','1510470540'),(130,'260925573192','Matthew Newman','1961-08-25','6030 Dana Dale, East Raymond, KY 32662','437492221'),(131,'630834446593','Megan Ruiz','1999-10-14','18584 Susan Garden Suite 485, Martinezton, UT 11466','124395123'),(132,'558429518644','Jon Barnes','1992-06-14','57987 Jose Crest Suite 008, East Kevin, ME 29472','6970976664'),(133,'424508414748','Toni Moyer','1994-11-05','6331 Kim Flats, Hallside, TX 20755','4570118707'),(134,'471564868203','Ariel Franco','1965-04-17','56996 Derek Walks, East Stevenbury, CT 18251','2633154003'),(135,'409101230616','Amanda Smith','1968-09-08','30642 Lee Well, Robinbury, OK 65352','3073175059'),(136,'968369643003','Erika Blanchard','1961-08-03','344 Jonathan Summit, Drakeport, RI 63807','2644447166'),(137,'656554815334','John Andrews','1991-03-08','06197 Yesenia Cliff Suite 779, Anthonyhaven, WI 61998','119143207'),(138,'611674071535','Alice Nelson','1966-10-16','4526 Mathis Roads Suite 485, Frederickshire, TN 86992','5660176347'),(139,'638581116542','Matthew Sanchez','1980-04-16','3637 Jaime Throughway, Murphymouth, FL 11380','9590726867'),(140,'941413944552','Sarah Walter','1997-08-25','PSC 7062, Box 1800, APO AP 75257','4807116292'),(141,'253667406674','Nicholas Beck','1976-05-01','5110 Gabriela Island, Mariestad, IA 06188','1916233228'),(142,'340974265540','Jason Howard','2000-01-17','USNV Miller, FPO AE 78775','7360009297'),(143,'293111842749','Kelli Prince','1989-07-14','574 Vanessa Flats, Carrollhaven, WY 67149','1269666696'),(144,'776720649662','Jason Yoder','1996-12-21','031 Tanya Causeway Apt. 502, Lake Dawnview, CA 35816','8694645896'),(145,'116511604557','Julian Ramirez','1996-11-17','87729 Loretta Springs Apt. 697, Lindaville, ME 37539','374873978'),(146,'768780160668','Cynthia Miller','2005-09-11','18055 Amy Fields Apt. 568, Port Tammymouth, AR 40571','5716839086'),(147,'214366441393','Jessica Brown','1998-12-07','64761 Moreno Landing Suite 720, Port Mark, AL 91569','7864947924'),(148,'768781235319','Christopher Allen','2006-07-16','13609 Butler Crossroad Apt. 709, Moonbury, IN 24134','8977984732'),(149,'388189415829','Maria Kidd','1970-12-12','3518 Mcmillan Course, West Julian, AR 33590','3890412612'),(150,'770077422231','Anthony Deleon','1995-07-27','81894 Decker Flat Apt. 739, North William, SD 38480','7316600451'),(151,'565678788989','Supriya RS','1975-07-23','ONO.7,NNO.15, KRISHNA STREET, T.NAGAR,CH-17,SDS CHENNAI-600083.','5656787889'),(152,'111122223333','Arun Prasath B','1992-12-12','1/111, Main road mela korukkai sakkotta kumbakonan Tk','7898767875'),(153,'222233334444','Boopalan L','1985-10-16','No. 3/253 gopinathampatty parayapayyt TK dharmapuri DT','8743432343'),(154,'333344445555','Krishan Mootrhy M','1965-03-12','Visalakashipuram 4th street madurai 625014','9874342345'),(155,'444455556666','Mahaboob Pasha G','1969-05-19','Military Hospitl ST thomsa mount','8767632111'),(156,'555566667777','Suresh A','1990-06-06','3. Poosarivalasai Block-1 gudiyattam TK, vellore DT','8984332122'),(157,'666677778888','Saravanakumar V','1985-06-20','2/63- Mariamman koil street koottathuparyy po valapady salem ','9988776655');
/*!40000 ALTER TABLE `generalpeopledetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspiciouspersondetails`
--

DROP TABLE IF EXISTS `suspiciouspersondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suspiciouspersondetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PersonAadhar_no` varchar(12) NOT NULL,
  `PersonLicenseNumber` varchar(20) DEFAULT NULL,
  `TimeHappened` datetime NOT NULL,
  `Felony_Catogry` enum('Expired_Status','Past_Felony','Wanted') NOT NULL,
  `Felony_Type` varchar(25) DEFAULT NULL,
  `ReasonDetail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PersonAadhar_no` (`PersonAadhar_no`),
  KEY `PersonLicenseNumber` (`PersonLicenseNumber`),
  CONSTRAINT `suspiciouspersondetails_ibfk_1` FOREIGN KEY (`PersonAadhar_no`) REFERENCES `generalpeopledetails` (`Aadhar_no`),
  CONSTRAINT `suspiciouspersondetails_ibfk_2` FOREIGN KEY (`PersonLicenseNumber`) REFERENCES `dldetails` (`LicenseNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspiciouspersondetails`
--

LOCK TABLES `suspiciouspersondetails` WRITE;
/*!40000 ALTER TABLE `suspiciouspersondetails` DISABLE KEYS */;
INSERT INTO `suspiciouspersondetails` VALUES (1,'743303375765','RJ0120191116274','2025-01-06 02:50:13','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(2,'289553681022','JK0220251115609','2025-01-04 20:04:20','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(3,'693057591964','PB0120188520119','2025-01-09 11:50:55','Expired_Status','Insurance_Status','Forgot to renew'),(4,'392302053644','AP0220016204789','2025-01-11 02:10:36','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(5,'903325781868','CH0220179826002','2025-01-11 14:14:57','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(6,'813801965746','JK0119905838667','2025-01-08 12:25:02','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(7,'938513161388','HR0120068044809','2025-01-05 23:49:33','Past_Felony','Pole Collision','He panicked after the accident and fled the scene'),(8,'782030135440','JK0219994222916','2025-01-03 13:39:40','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(9,'993062513789','WB0220243943080','2025-01-07 04:11:52','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(10,'901831835254','DL0419849628770','2025-01-06 03:09:38','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(11,'879848627303','PB0119807046030','2025-01-11 18:10:56','Expired_Status','Registration_Status','Forgot to renew'),(12,'470130703619','HR0220035894065','2025-01-05 06:07:31','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(13,'554728797463','RJ0219920370694','2025-01-04 19:05:51','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(14,'612944026203','MP0219845021272','2025-01-11 01:46:56','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(15,'384173490199','JK0120035156317','2025-01-04 16:12:46','Past_Felony','Pole Collision','He panicked after the accident and fled the scene'),(16,'686975107076','GJ0120201822044','2025-01-06 12:50:01','Expired_Status','Insurance_Status','Forgot to renew'),(17,'345345696796','MP0219866032712','2025-01-10 06:43:54','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(18,'200337798327','UP0120058629382','2025-01-12 09:25:12','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(19,'593736774962','AP0219890139493','2025-01-07 08:51:53','Past_Felony','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(20,'144821871633','WB0120079790978','2025-01-09 13:07:55','Expired_Status','Registration_Status','Forgot to renew'),(21,'548194619146','UP0220090833340','2025-01-12 07:12:07','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(22,'392947655487','DL0420010586250','2025-01-07 19:07:23','Expired_Status','Insurance_Status','Forgot to renew'),(23,'755008356854','PB0119893665636','2025-01-11 17:53:24','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(24,'846006558542','RJ0119887376000','2025-01-05 04:11:58','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(25,'665688634978','UP0120115610674','2025-01-11 05:47:25','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(26,'350893278997','CH0220243443304','2025-01-12 13:02:44','Expired_Status','Pole Collision','He panicked after the accident and fled the scene'),(27,'471158327684','GJ1520011897930','2025-01-09 07:14:43','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(28,'947335646963','CH0120191667363','2025-01-07 00:07:47','Past_Felony','Pole Collision','He panicked after the accident and fled the scene'),(29,'834843741137','HR0120026144986','2025-01-12 08:45:13','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(30,'260925573192','TN0220111810956','2025-01-10 01:33:35','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(31,'630834446593','WB0119805156472','2025-01-06 14:55:50','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(32,'558429518644','DL0120165830748','2025-01-06 02:55:12','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(33,'424508414748','RJ0119832725627','2025-01-11 23:13:14','Expired_Status','Pole Collision','He panicked after the accident and fled the scene'),(34,'471564868203','TN0220250658786','2025-01-11 18:07:40','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(35,'409101230616','PB0220237842391','2025-01-04 05:28:40','Past_Felony','Pole Collision','He panicked after the accident and fled the scene'),(36,'968369643003','PB0220132600891','2025-01-04 11:13:11','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(37,'656554815334','JK0220059284650','2025-01-02 00:40:59','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(38,'611674071535','PB0120085760258','2025-01-06 03:32:43','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(39,'638581116542','MP0220054151377','2025-01-05 10:35:39','Expired_Status','Insurance_Status','Forgot to renew'),(40,'941413944552','JK0119858455012','2025-01-05 15:06:24','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(41,'253667406674','WB0119939338057','2025-01-06 14:36:15','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(42,'340974265540','KA0420035341460','2025-01-03 00:47:24','Expired_Status','Registration_Status','Forgot to renew'),(43,'293111842749','MP0120238835318','2025-01-10 23:28:03','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(44,'776720649662','UP0220154117974','2025-01-10 02:13:30','Past_Felony','Pole Collision','He panicked after the accident and fled the scene'),(45,'116511604557','KA0120257537088','2025-01-06 20:43:54','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(46,'768780160668','RJ0120046349594','2025-01-03 00:10:47','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(47,'214366441393','MP0219925152523','2025-01-06 11:54:59','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(48,'768781235319','AP0219826732901','2025-01-08 04:14:39','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(49,'388189415829','PB0219802220544','2025-01-06 06:01:41','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(50,'770077422231','UP0120220226048','2025-01-02 18:39:41','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(51,'565678788989','TN0090101612004','2025-01-02 18:39:41','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(52,'111122223333','TN6820120003562','2025-01-11 18:07:40','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(53,'222233334444','TN29T20100001058','2025-01-04 05:28:40','Past_Felony','Pole Collision','He panicked after the accident and fled the scene'),(54,'333344445555','TN5919990010066','2025-01-04 11:13:11','Wanted','Theft','he bought this vehicle second-hand and wasn’t informed it was stolen'),(55,'444455556666','TN0220057672005','2025-01-02 00:40:59','Wanted','Theft','she bought this vehicle second-hand and wasn’t informed it was stolen'),(56,'555566667777','TN23T20100003026','2025-01-06 03:32:43','Expired_Status','PUC_Status','He was unaware that his Pollution Under Control certificate had expired.'),(57,'666677778888','TN5420080001214','2025-01-05 10:35:39','Expired_Status','Insurance_Status','Forgot to renew');
/*!40000 ALTER TABLE `suspiciouspersondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspiciousvehicledetails`
--

DROP TABLE IF EXISTS `suspiciousvehicledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suspiciousvehicledetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `VehicleNumberPlate` varchar(15) NOT NULL,
  `OwnerAadhar_no` varchar(12) DEFAULT NULL,
  `TimeHappened` datetime NOT NULL,
  `Felony_Catogory` enum('Expired_Status','Past_Felony','Wanted') NOT NULL,
  `Felony_Type` varchar(25) DEFAULT NULL,
  `ReasonDetail` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `VehicleNumberPlate` (`VehicleNumberPlate`),
  KEY `OwnerAadhar_no` (`OwnerAadhar_no`),
  CONSTRAINT `suspiciousvehicledetails_ibfk_1` FOREIGN KEY (`VehicleNumberPlate`) REFERENCES `vehicledetails` (`NumberPlate`),
  CONSTRAINT `suspiciousvehicledetails_ibfk_2` FOREIGN KEY (`OwnerAadhar_no`) REFERENCES `generalpeopledetails` (`Aadhar_no`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspiciousvehicledetails`
--

LOCK TABLES `suspiciousvehicledetails` WRITE;
/*!40000 ALTER TABLE `suspiciousvehicledetails` DISABLE KEYS */;
INSERT INTO `suspiciousvehicledetails` VALUES (1,'GJ-35-MS-6768','225703741444','2025-01-04 19:21:00','Expired_Status','PUC expired','He was unaware that his Pollution Under Control certificate had expired.'),(2,'KA-32-EB-2885','752215040679','2025-01-10 09:25:00','Past_Felony','Stolen Vehicle','She bought this vehicle second-hand and wasn’t informed it was stolen'),(3,'HR-79-HJ-5604','439634961335','2025-01-03 09:43:00','Past_Felony','Hit and Run','He panicked after the accident and fled the scene'),(4,'MH-88-QJ-7259','357861123993','2025-01-09 08:50:00','Wanted','Criminal','Murdered a child'),(5,'HR-17-YN-5378','945118875363','2025-01-09 20:00:00','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(6,'HR-75-EM-3342','733698918231','2025-01-09 15:00:00','Wanted','Terrorist','Wated by Indian Army'),(7,'KA-16-QV-1276','927980642756','2025-01-04 09:31:00','Wanted','Criminal','Caught in theft'),(8,'RJ-69-RX-7436','789700873429','2025-01-05 23:25:00','Expired_Status','PUC expired','She thought her vehicle was exempt from PUC requirements.'),(9,'GJ-81-DH-1581','832463744765','2025-01-04 11:02:00','Wanted','Criminal','Caught in human trafficking'),(10,'RJ-26-QF-9785','292859293601','2025-01-08 14:07:00','Wanted','Criminal','Caught in theft'),(11,'HR-20-VW-4378','861936272115','2025-01-09 16:52:00','Past_Felony','Drink and drive','He admitted he had consumed alcohol at a party but thought he was fine to drive.'),(12,'DL-47-FT-8438','179226548836','2025-01-04 14:42:00','Wanted','Terrorist','Wated by Indian Army'),(13,'DL-89-AU-2376','568121583019','2025-01-07 18:01:00','Expired_Status','Registration expired','Forgot to renew'),(14,'GJ-55-CC-9420','508522394493','2025-01-04 08:14:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(15,'RJ-25-IR-1341','477849096803','2025-01-04 08:10:00','Wanted','Criminal','Murdered a child'),(16,'UP-25-TS-6177','641997082722','2025-01-04 20:27:00','Expired_Status','Insurance expired','Forgot to renew'),(17,'GJ-30-JF-1417','437539827973','2025-01-03 14:09:00','Expired_Status','PUC expired','Forgot to renew'),(18,'TN-61-ZZ-6476','359683892556','2025-01-11 03:23:00','Past_Felony','Terrorist','Wated by Indian Army'),(19,'TN-92-TN-3305','956144970154','2025-01-08 02:26:00','Expired_Status','PUC expired','He mentioned the PUC renewal service center was closed when he tried to renew it'),(20,'DL-91-UA-8208','613717293830','2025-01-08 03:43:00','Wanted','Hit and Run','He panicked after the accident and fled the scene'),(21,'DL-83-PZ-4137','468292671112','2025-01-03 17:36:00','Wanted','Stolen Vehicle','he bought this vehicle second-hand and wasn’t informed it was stolen'),(22,'GJ-48-GA-8713','383913726268','2025-01-09 03:31:00','Wanted','Stolen Vehicle','She bought this vehicle second-hand and wasn’t informed it was stolen'),(23,'MH-47-WR-7508','848337432835','2025-01-04 02:51:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(24,'TN-10-YU-5351','882770204800','2025-01-07 08:14:00','Wanted','Terrorist','Wated by Indian Army'),(25,'UP-62-YR-5149','529263978405','2025-01-09 00:11:00','Expired_Status','PUC expired','Forgot to renew'),(26,'WB-72-QE-1885','159387377325','2025-01-05 20:39:00','Wanted','Hit and Run','The person  was scared of being assaulted by bystanders after the collision'),(27,'DL-68-RD-9837','958647419414','2025-01-04 18:12:00','Wanted','Terrorist','Wated by Indian Army'),(28,'RJ-79-FR-2746','528778923330','2025-01-08 15:53:00','Wanted','Criminal','Caught in theft'),(29,'KA-96-OR-2431','658553340549','2025-01-04 06:38:00','Wanted','Criminal','Caught in human trafficking'),(30,'GJ-50-SB-7387','945935668023','2025-01-04 15:16:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(31,'TN-32-VI-6384','161492884275','2025-01-02 00:33:00','Past_Felony','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(32,'WB-64-RG-1049','908161236056','2025-01-05 23:53:00','Wanted','Hit and Run','He panicked after the accident and fled the scene'),(33,'TN-62-YP-7583','758900894442','2025-01-08 19:44:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(34,'UP-45-MP-9080','832702611347','2025-01-09 19:30:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(35,'MH-95-UR-8149','290163904877','2025-01-05 17:04:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(36,'WB-81-PM-7751','476750295249','2025-01-02 13:50:00','Expired_Status','PUC expired','Forgot to renew'),(37,'DL-80-UQ-4769','709414718756','2025-01-08 01:05:00','Wanted','Criminal','Caught in theft'),(38,'GJ-49-SP-1819','450262718373','2025-01-08 02:00:00','Wanted','Criminal','Caught in human trafficking'),(39,'MH-44-HL-6024','630003082389','2025-01-01 01:41:00','Past_Felony','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(40,'RJ-30-IY-2109','446553888547','2025-01-12 10:22:00','Wanted','Criminal','Caught in theft'),(41,'RJ-44-ET-8008','513314947378','2025-01-07 14:32:00','Wanted','Criminal','Caught in human trafficking'),(42,'RJ-39-FU-4356','745312227030','2025-01-11 08:04:00','Expired_Status','PUC expired','Forgot to renew'),(43,'DL-31-GX-9850','688795170459','2025-01-04 05:14:00','Wanted','Stolen Vehicle','She bought this vehicle second-hand and wasn’t informed it was stolen'),(44,'RJ-35-QR-8868','714554635093','2025-01-07 03:13:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(45,'TN-19-JK-3416','797060403888','2025-01-08 15:11:00','Expired_Status','PUC expired','Forgot to renew'),(46,'TN-51-ZO-7636','832871254796','2025-01-09 21:47:00','Past_Felony','Drug Possession','He said he unknowingly sold counterfeit items provided by a supplier and stopped after discovering the truth'),(47,'HR-17-RT-6665','351342953671','2025-01-09 06:52:00','Past_Felony','Drug Possession','He said he unknowingly sold counterfeit items provided by a supplier and stopped after discovering the truth'),(48,'UP-42-BA-3758','580181516492','2025-01-06 10:18:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(49,'MH-72-WX-2988','135339334493','2025-01-10 22:41:00','Past_Felony','Counterfeit Goods','He said he unknowingly sold counterfeit items from a supplier'),(50,'GJ-22-XR-8690','631842077380','2025-01-06 23:25:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(51,'GJ-44-UA-4826','515314661842','2025-01-01 22:55:00','Past_Felony','Counterfeit Goods','He said he unknowingly sold counterfeit items from a supplier'),(52,'UP-37-AM-6976','847315468080','2025-01-10 10:23:00','Expired_Status','PUC expired','he thought her vehicle was exempt from PUC requirements.'),(53,'GJ-48-XP-7979','177083112512','2025-01-02 10:30:00','Expired_Status','PUC expired','he thought her vehicle was exempt from PUC requirements.'),(54,'MH-93-UU-6234','763723388579','2025-01-04 06:04:00','Past_Felony','Drug Possession','He said he unknowingly sold counterfeit items provided by a supplier and stopped after discovering the truth'),(55,'UP-57-NJ-6751','474294074530','2025-01-09 17:53:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(56,'TN-89-EF-9536','566844715767','2025-01-07 23:13:00','Past_Felony','Counterfeit Goods','He said he unknowingly sold counterfeit items from a supplier'),(57,'GJ-49-KV-6627','175087141365','2025-01-12 02:35:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(58,'UP-32-TN-3956','906891383590','2025-01-05 19:05:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(59,'DL-35-RE-1064','377131083804','2025-01-11 12:08:00','Expired_Status','PUC expired','he thought her vehicle was exempt from PUC requirements.'),(60,'TN-99-SQ-3087','878114210581','2025-01-08 20:01:00','Wanted','Criminal','Caught in theft'),(61,'RJ-10-OK-9816','719431478908','2025-01-10 12:47:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(62,'HR-11-JY-6661','583792562667','2025-01-12 04:31:00','Wanted','Terrorist','Wated by Indian Army'),(63,'GJ-87-XV-6093','377468372026','2025-01-09 11:08:00','Expired_Status','PUC expired','he thought her vehicle was exempt from PUC requirements.'),(64,'HR-70-YH-4933','260125471864','2025-01-08 21:11:00','Past_Felony','Drug Possession','He said he unknowingly sold counterfeit items provided by a supplier and stopped after discovering the truth'),(65,'TN-20-IH-7698','364905319783','2025-01-09 03:20:00','Expired_Status','PUC expired','he thought her vehicle was exempt from PUC requirements.'),(66,'UP-15-XY-7117','404259130154','2025-01-03 01:30:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(67,'DL-98-LB-6556','679309056989','2025-01-12 08:21:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(68,'RJ-80-VP-6293','920017762666','2025-01-09 00:30:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(69,'MH-74-AH-7558','233050703673','2025-01-08 01:24:00','Expired_Status','PUC expired','he thought her vehicle was exempt from PUC requirements.'),(70,'WB-50-XU-3970','481483103169','2025-01-12 01:54:00','Wanted','Fake Plates','He confessed to using fake plates after losing the original ones'),(71,'RJ-47-VV-2849','452060285337','2025-01-06 14:18:00','Wanted','Terrorist','Wated by Indian Army'),(72,'DL-86-IR-3596','734254127391','2025-01-10 10:56:00','Expired_Status','Insurance expired','Forgot to renew'),(73,'HR-40-DQ-3686','250818300532','2025-01-04 03:52:00','Wanted','Terrorist','Wated by Indian Army'),(74,'KA-20-DA-3283','362365896400','2025-01-05 14:42:00','Wanted','Terrorist','Wated by Indian Army'),(75,'TN-47-PR-9860','155055200205','2025-01-05 20:23:00','Wanted','Fake Plates','He confessed to using fake plates after losing the original ones'),(76,'UP-79-HG-6796','217177589802','2025-01-09 14:01:00','Expired_Status','Insurance expired','Forgot to renew'),(77,'KA-53-GA-8640','368605666534','2025-01-12 06:25:00','Expired_Status','Insurance expired','Forgot to renew'),(78,'TN-13-MT-5693','969441149755','2025-01-09 10:25:00','Expired_Status','Insurance expired','Forgot to renew'),(79,'RJ-24-SV-3606','102409908818','2025-01-03 08:19:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(80,'GJ-43-FE-5776','469314986778','2025-01-10 18:48:00','Expired_Status','Insurance expired','Forgot to renew'),(81,'TN-48-DW-7579','254295109635','2025-01-08 10:17:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(82,'TN-58-XO-3948','108586999520','2025-01-02 23:32:00','Wanted','Terrorist','Wated by Indian Army'),(83,'MH-99-FN-2128','887072401768','2025-01-05 10:31:00','Wanted','Terrorist','Wated by Indian Army'),(84,'GJ-17-XD-6065','908807204919','2025-01-09 09:52:00','Wanted','Terrorist','Wated by Indian Army'),(85,'MH-43-ZD-8490','851453885863','2025-01-08 03:52:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(86,'DL-92-JT-3936','665747406871','2025-01-08 18:47:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(87,'WB-74-RD-5622','306160843108','2025-01-03 22:11:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(88,'RJ-84-RZ-9981','948775580479','2025-01-02 18:16:00','Past_Felony','Drug Possession','He said he unknowingly sold counterfeit items provided by a supplier and stopped after discovering the truth'),(89,'WB-61-PP-2324','193004777953','2025-01-03 22:55:00','Wanted','Hit and Run','He panicked after the accident and fled the scene'),(90,'MH-95-UA-1523','272531021591','2025-01-05 02:14:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(91,'GJ-97-AZ-2440','427832376422','2025-01-03 12:29:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(92,'WB-95-WU-8753','800431098287','2025-01-10 08:13:00','Wanted','Stolen Vehicle','He bought the car online and wasn’t informed it was flagged as stolen'),(93,'HR-39-IF-2930','216542565656','2025-01-02 18:58:00','Wanted','Terrorist','Wated by Indian Army'),(94,'WB-19-VU-1486','916550696822','2025-01-05 02:17:00','Expired_Status','Insurance expired','Forgot to renew'),(95,'MH-72-MV-7876','123313249333','2025-01-04 14:45:00','Wanted','Criminal','Caught in human trafficking'),(96,'WB-87-XP-7144','888902982544','2025-01-04 01:30:00','Wanted','Criminal','Caught in human trafficking'),(97,'RJ-18-CA-8086','279931638951','2025-01-07 06:58:00','Wanted','Criminal','Caught in human trafficking'),(98,'UP-61-AT-9688','210571320163','2025-01-07 05:22:00','Past_Felony','Illegal Street Racing','He acknowledged participating in street races for adrenaline but has since stopped'),(99,'TN-21-OY-8752','765957963273','2025-01-09 05:10:00','Wanted','Criminal','Caught in theft'),(100,'UP-37-UO-2737','548061405145','2025-01-09 12:48:00','Wanted','Criminal','Caught in theft');
/*!40000 ALTER TABLE `suspiciousvehicledetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicledetails`
--

DROP TABLE IF EXISTS `vehicledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicledetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NumberPlate` varchar(15) NOT NULL,
  `OwnerAadhar_no` varchar(12) NOT NULL,
  `VehicleType` varchar(50) DEFAULT NULL,
  `Registration_Date` date NOT NULL,
  `Registration_Status` enum('Valid','Expired') NOT NULL,
  `Insurance_Status` enum('Valid','Expired') NOT NULL,
  `PUC_Status` enum('Valid','Expired') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NumberPlate` (`NumberPlate`),
  KEY `OwnerAadhar_no` (`OwnerAadhar_no`),
  CONSTRAINT `vehicledetails_ibfk_1` FOREIGN KEY (`OwnerAadhar_no`) REFERENCES `generalpeopledetails` (`Aadhar_no`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicledetails`
--

LOCK TABLES `vehicledetails` WRITE;
/*!40000 ALTER TABLE `vehicledetails` DISABLE KEYS */;
INSERT INTO `vehicledetails` VALUES (1,'GJ-35-MS-6768','225703741444','Car','2021-10-04','Valid','Valid','Expired'),(2,'KA-32-EB-2885','752215040679','Car','2022-06-14','Expired','Valid','Expired'),(3,'HR-79-HJ-5604','439634961335','Bike','2024-09-12','Valid','Valid','Expired'),(4,'MH-88-QJ-7259','357861123993','Truck','2022-04-20','Valid','Valid','Expired'),(5,'HR-17-YN-5378','945118875363','Truck','2024-07-03','Valid','Valid','Expired'),(6,'HR-75-EM-3342','733698918231','Truck','2024-09-26','Expired','Valid','Expired'),(7,'KA-16-QV-1276','927980642756','Bus','2020-08-15','Valid','Valid','Expired'),(8,'RJ-69-RX-7436','789700873429','Bus','2023-06-23','Expired','Expired','Expired'),(9,'GJ-81-DH-1581','832463744765','Bus','2021-06-29','Expired','Valid','Expired'),(10,'RJ-26-QF-9785','292859293601','Bike','2023-10-11','Expired','Valid','Valid'),(11,'HR-20-VW-4378','861936272115','Bus','2021-11-02','Valid','Valid','Valid'),(12,'DL-47-FT-8438','179226548836','Car','2023-06-25','Valid','Valid','Valid'),(13,'DL-89-AU-2376','568121583019','Bus','2021-07-31','Valid','Valid','Expired'),(14,'GJ-55-CC-9420','508522394493','Bike','2020-12-26','Valid','Valid','Expired'),(15,'RJ-25-IR-1341','477849096803','Truck','2022-11-14','Valid','Valid','Valid'),(16,'UP-25-TS-6177','641997082722','Bus','2021-10-20','Expired','Valid','Expired'),(17,'GJ-30-JF-1417','437539827973','Car','2021-12-06','Expired','Valid','Valid'),(18,'TN-61-ZZ-6476','359683892556','Bike','2023-12-01','Valid','Valid','Valid'),(19,'TN-92-TN-3305','956144970154','Bus','2022-05-29','Expired','Valid','Expired'),(20,'DL-91-UA-8208','613717293830','Bike','2024-11-03','Expired','Expired','Expired'),(21,'DL-83-PZ-4137','468292671112','Truck','2022-04-20','Expired','Expired','Valid'),(22,'GJ-48-GA-8713','383913726268','Car','2024-05-12','Valid','Expired','Expired'),(23,'MH-47-WR-7508','848337432835','Bike','2023-05-01','Valid','Expired','Valid'),(24,'TN-10-YU-5351','882770204800','Car','2021-06-26','Expired','Expired','Valid'),(25,'UP-62-YR-5149','529263978405','Bus','2023-07-27','Valid','Valid','Valid'),(26,'WB-72-QE-1885','159387377325','Car','2024-08-03','Expired','Expired','Expired'),(27,'DL-68-RD-9837','958647419414','Truck','2020-12-17','Expired','Valid','Valid'),(28,'RJ-79-FR-2746','528778923330','Bike','2021-11-28','Valid','Valid','Valid'),(29,'KA-96-OR-2431','658553340549','Car','2024-01-08','Expired','Expired','Expired'),(30,'GJ-50-SB-7387','945935668023','Car','2024-04-23','Valid','Valid','Valid'),(31,'TN-32-VI-6384','161492884275','Bike','2022-10-15','Expired','Valid','Expired'),(32,'WB-64-RG-1049','908161236056','Car','2023-12-04','Valid','Valid','Valid'),(33,'TN-62-YP-7583','758900894442','Car','2024-02-18','Expired','Expired','Expired'),(34,'UP-45-MP-9080','832702611347','Bike','2022-06-25','Expired','Expired','Expired'),(35,'MH-95-UR-8149','290163904877','Bus','2021-01-15','Valid','Expired','Valid'),(36,'WB-81-PM-7751','476750295249','Car','2024-01-24','Expired','Expired','Expired'),(37,'DL-80-UQ-4769','709414718756','Car','2022-01-01','Expired','Expired','Valid'),(38,'GJ-49-SP-1819','450262718373','Car','2022-01-11','Expired','Expired','Expired'),(39,'MH-44-HL-6024','630003082389','Bus','2020-07-02','Valid','Valid','Valid'),(40,'RJ-30-IY-2109','446553888547','Truck','2024-06-08','Valid','Expired','Expired'),(41,'RJ-44-ET-8008','513314947378','Truck','2021-04-17','Expired','Valid','Expired'),(42,'RJ-39-FU-4356','745312227030','Bike','2024-04-27','Expired','Valid','Valid'),(43,'DL-31-GX-9850','688795170459','Bus','2020-10-12','Valid','Expired','Expired'),(44,'RJ-35-QR-8868','714554635093','Car','2023-12-08','Expired','Valid','Expired'),(45,'TN-19-JK-3416','797060403888','Car','2021-11-01','Expired','Valid','Valid'),(46,'TN-51-ZO-7636','832871254796','Car','2022-07-18','Valid','Valid','Valid'),(47,'HR-17-RT-6665','351342953671','Truck','2023-10-06','Expired','Expired','Expired'),(48,'UP-42-BA-3758','580181516492','Car','2022-09-20','Valid','Expired','Valid'),(49,'MH-72-WX-2988','135339334493','Car','2024-02-12','Valid','Expired','Valid'),(50,'GJ-22-XR-8690','631842077380','Truck','2022-07-21','Expired','Expired','Expired'),(51,'GJ-44-UA-4826','515314661842','Car','2021-10-30','Valid','Valid','Expired'),(52,'UP-37-AM-6976','847315468080','Bus','2021-07-29','Expired','Expired','Valid'),(53,'GJ-48-XP-7979','177083112512','Truck','2021-09-23','Valid','Valid','Expired'),(54,'MH-93-UU-6234','763723388579','Truck','2022-06-14','Expired','Expired','Valid'),(55,'UP-57-NJ-6751','474294074530','Bike','2021-06-12','Valid','Expired','Valid'),(56,'TN-89-EF-9536','566844715767','Truck','2024-07-24','Expired','Valid','Expired'),(57,'GJ-49-KV-6627','175087141365','Bike','2024-05-10','Valid','Valid','Valid'),(58,'UP-32-TN-3956','906891383590','Bike','2020-03-17','Expired','Expired','Expired'),(59,'DL-35-RE-1064','377131083804','Truck','2020-02-20','Valid','Valid','Valid'),(60,'TN-99-SQ-3087','878114210581','Bus','2024-01-29','Expired','Valid','Expired'),(61,'RJ-10-OK-9816','719431478908','Bike','2021-12-09','Expired','Expired','Valid'),(62,'HR-11-JY-6661','583792562667','Bus','2022-07-18','Expired','Valid','Expired'),(63,'GJ-87-XV-6093','377468372026','Car','2023-05-30','Expired','Valid','Valid'),(64,'HR-70-YH-4933','260125471864','Bike','2020-01-27','Expired','Expired','Valid'),(65,'TN-20-IH-7698','364905319783','Bike','2020-08-30','Valid','Expired','Valid'),(66,'UP-15-XY-7117','404259130154','Bus','2023-04-07','Valid','Expired','Valid'),(67,'DL-98-LB-6556','679309056989','Truck','2021-12-23','Valid','Valid','Expired'),(68,'RJ-80-VP-6293','920017762666','Bus','2022-05-05','Valid','Valid','Valid'),(69,'MH-74-AH-7558','233050703673','Car','2024-05-26','Valid','Valid','Valid'),(70,'WB-50-XU-3970','481483103169','Bus','2025-01-03','Valid','Valid','Expired'),(71,'RJ-47-VV-2849','452060285337','Bus','2023-04-25','Expired','Expired','Valid'),(72,'DL-86-IR-3596','734254127391','Bus','2021-10-12','Valid','Valid','Valid'),(73,'HR-40-DQ-3686','250818300532','Car','2022-03-21','Expired','Valid','Valid'),(74,'KA-20-DA-3283','362365896400','Bus','2022-10-12','Expired','Expired','Expired'),(75,'TN-47-PR-9860','155055200205','Truck','2021-07-20','Valid','Valid','Valid'),(76,'UP-79-HG-6796','217177589802','Bus','2022-11-06','Valid','Expired','Valid'),(77,'KA-53-GA-8640','368605666534','Car','2020-10-10','Valid','Valid','Expired'),(78,'TN-13-MT-5693','969441149755','Bus','2021-12-16','Expired','Expired','Valid'),(79,'RJ-24-SV-3606','102409908818','Bus','2022-06-13','Expired','Expired','Valid'),(80,'GJ-43-FE-5776','469314986778','Bus','2023-10-12','Valid','Expired','Valid'),(81,'TN-48-DW-7579','254295109635','Bike','2020-11-22','Valid','Expired','Expired'),(82,'TN-58-XO-3948','108586999520','Bus','2020-10-14','Valid','Expired','Valid'),(83,'MH-99-FN-2128','887072401768','Bike','2024-07-20','Expired','Expired','Valid'),(84,'GJ-17-XD-6065','908807204919','Truck','2020-10-12','Valid','Valid','Expired'),(85,'MH-43-ZD-8490','851453885863','Bus','2021-03-27','Valid','Valid','Expired'),(86,'DL-92-JT-3936','665747406871','Bus','2021-08-13','Valid','Expired','Valid'),(87,'WB-74-RD-5622','306160843108','Bike','2023-09-26','Expired','Valid','Expired'),(88,'RJ-84-RZ-9981','948775580479','Car','2020-08-13','Expired','Valid','Valid'),(89,'WB-61-PP-2324','193004777953','Bus','2021-11-25','Expired','Expired','Valid'),(90,'MH-95-UA-1523','272531021591','Bus','2024-07-30','Valid','Valid','Expired'),(91,'GJ-97-AZ-2440','427832376422','Bike','2021-07-09','Expired','Expired','Expired'),(92,'WB-95-WU-8753','800431098287','Bus','2023-11-21','Expired','Valid','Valid'),(93,'HR-39-IF-2930','216542565656','Truck','2024-11-06','Expired','Expired','Expired'),(94,'WB-19-VU-1486','916550696822','Bus','2023-01-20','Valid','Valid','Valid'),(95,'MH-72-MV-7876','123313249333','Bike','2024-09-04','Valid','Valid','Valid'),(96,'WB-87-XP-7144','888902982544','Bike','2021-08-15','Valid','Expired','Expired'),(97,'RJ-18-CA-8086','279931638951','Bus','2022-10-18','Valid','Valid','Expired'),(98,'UP-61-AT-9688','210571320163','Bike','2023-01-26','Expired','Valid','Expired'),(99,'TN-21-OY-8752','765957963273','Car','2023-03-29','Valid','Valid','Expired'),(100,'UP-37-UO-2737','548061405145','Truck','2020-03-31','Expired','Valid','Valid'),(101,'DL-45-UJ-6642','743303375765','Car','2024-04-30','Valid','Valid','Valid'),(102,'RJ-22-JP-4905','289553681022','Bike','2022-07-05','Valid','Valid','Valid'),(103,'DL-20-DD-1084','693057591964','Truck','2021-02-16','Valid','Valid','Valid'),(104,'UP-65-IJ-2633','392302053644','Bike','2024-11-01','Valid','Valid','Valid'),(105,'MH-17-BW-2035','903325781868','Bus','2021-11-23','Valid','Valid','Valid'),(106,'RJ-64-CE-4709','813801965746','Bike','2023-10-16','Valid','Valid','Valid'),(107,'RJ-20-PW-9668','938513161388','Bus','2023-08-06','Valid','Valid','Valid'),(108,'RJ-47-YH-1524','782030135440','Bus','2022-01-30','Valid','Valid','Valid'),(109,'DL-14-HK-7894','993062513789','Bike','2022-04-27','Valid','Valid','Valid'),(110,'GJ-98-IV-8816','901831835254','Bike','2022-04-05','Valid','Valid','Valid'),(111,'WB-20-TJ-1024','879848627303','Bus','2025-01-05','Valid','Valid','Valid'),(112,'HR-91-FJ-2574','470130703619','Car','2024-09-22','Valid','Valid','Valid'),(113,'KA-83-TF-9416','554728797463','Bike','2020-11-25','Valid','Valid','Valid'),(114,'TN-55-JW-3962','612944026203','Car','2024-05-29','Valid','Valid','Valid'),(115,'MH-99-UN-6629','384173490199','Bus','2022-07-13','Valid','Valid','Valid'),(116,'HR-82-NA-1015','686975107076','Bike','2021-05-19','Valid','Valid','Valid'),(117,'MH-42-MW-1008','345345696796','Car','2020-09-12','Valid','Valid','Valid'),(118,'RJ-84-DZ-7467','200337798327','Car','2022-04-08','Valid','Valid','Valid'),(119,'HR-10-TN-8890','593736774962','Car','2021-03-19','Valid','Valid','Valid'),(120,'TN-72-BJ-4666','144821871633','Car','2022-07-31','Valid','Valid','Valid'),(121,'RJ-79-IE-8622','548194619146','Car','2024-01-26','Valid','Valid','Valid'),(122,'WB-63-NN-3640','392947655487','Truck','2024-07-22','Valid','Valid','Valid'),(123,'UP-53-SE-2842','755008356854','Truck','2024-02-18','Valid','Valid','Valid'),(124,'TN-90-BA-4088','846006558542','Bike','2024-07-17','Valid','Valid','Valid'),(125,'UP-97-HV-7183','665688634978','Bus','2022-12-18','Valid','Valid','Valid'),(126,'GJ-41-BG-6136','350893278997','Truck','2020-05-14','Valid','Valid','Valid'),(127,'KA-64-FX-8651','471158327684','Bus','2020-05-04','Valid','Valid','Valid'),(128,'MH-24-VM-3350','947335646963','Car','2020-07-17','Valid','Valid','Valid'),(129,'HR-52-BK-4472','834843741137','Truck','2022-08-05','Valid','Valid','Valid'),(130,'TN-28-RS-5438','260925573192','Bike','2022-03-14','Valid','Valid','Valid'),(131,'MH-35-PS-2721','630834446593','Car','2024-06-21','Valid','Valid','Valid'),(132,'WB-83-CP-2069','558429518644','Truck','2021-06-20','Valid','Valid','Valid'),(133,'WB-94-JJ-4054','424508414748','Bike','2022-02-27','Valid','Valid','Valid'),(134,'KA-73-UD-2786','471564868203','Car','2020-08-18','Valid','Valid','Valid'),(135,'HR-92-JE-6854','409101230616','Bus','2024-04-19','Valid','Valid','Valid'),(136,'DL-13-HU-2974','968369643003','Bus','2023-04-02','Valid','Valid','Valid'),(137,'TN-21-PK-2561','656554815334','Bus','2020-09-15','Valid','Valid','Valid'),(138,'HR-18-UA-1410','611674071535','Car','2024-10-26','Valid','Valid','Valid'),(139,'DL-26-UV-1049','638581116542','Bike','2022-11-22','Valid','Valid','Valid'),(140,'UP-86-CA-9942','941413944552','Bike','2021-11-16','Valid','Valid','Valid'),(141,'UP-57-TW-8208','253667406674','Truck','2022-04-20','Valid','Valid','Valid'),(142,'TN-12-YE-7231','340974265540','Car','2023-12-29','Valid','Valid','Valid'),(143,'RJ-27-ZJ-6884','293111842749','Truck','2020-12-12','Valid','Valid','Valid'),(144,'HR-60-UC-8154','776720649662','Car','2020-10-24','Valid','Valid','Valid'),(145,'KA-62-RS-4889','116511604557','Car','2024-05-17','Valid','Valid','Valid'),(146,'KA-36-PI-4498','768780160668','Car','2022-08-11','Valid','Valid','Valid'),(147,'WB-85-XX-6742','214366441393','Car','2024-11-23','Valid','Valid','Valid'),(148,'TN-53-ZG-6407','768781235319','Truck','2023-03-02','Valid','Valid','Valid'),(149,'GJ-12-VU-5186','388189415829','Truck','2024-08-01','Valid','Valid','Valid'),(150,'MH-54-QO-5620','770077422231','Bus','2023-04-08','Valid','Valid','Valid'),(151,'TN-54-VU-4645','565678788989','Car','2023-04-08','Valid','Valid','Valid'),(152,'KA-36-PI-4444','111122223333','Car','2022-08-11','Valid','Valid','Valid'),(153,'WB-85-XX-6666','222233334444','Car','2024-11-23','Valid','Valid','Valid'),(154,'TN-53-ZG-6464','333344445555','Bike','2023-03-02','Valid','Valid','Valid'),(155,'GJ-12-VU-5555','444455556666','Car','2024-08-01','Valid','Valid','Valid'),(156,'MH-54-QO-222','555566667777','Bus','2023-04-08','Valid','Valid','Valid'),(157,'TN-54-VU-9999','666677778888','Car','2023-04-08','Valid','Valid','Valid');
/*!40000 ALTER TABLE `vehicledetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-16 14:38:31
