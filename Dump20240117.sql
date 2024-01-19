-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: train_medicine
-- ------------------------------------------------------
-- Server version	5.7.40-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,1,'2024-01-15','11:18:01','Approved'),(3,4,1,'2024-01-17','18:50:00',''),(4,4,1,'2024-01-11','21:48:00',''),(5,4,5,'2024-01-24','21:54:00',''),(6,4,5,'2024-01-17','11:11:00','Approved');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assign_delivery_agent`
--

DROP TABLE IF EXISTS `assign_delivery_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assign_delivery_agent` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_delivery_agent`
--

LOCK TABLES `assign_delivery_agent` WRITE;
/*!40000 ALTER TABLE `assign_delivery_agent` DISABLE KEYS */;
INSERT INTO `assign_delivery_agent` VALUES (1,1,'xmCZKLmc kscmkzm',1),(2,1,'yes',1),(5,6,'deliverd',3);
/*!40000 ALTER TABLE `assign_delivery_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add appointment',7,'add_appointment'),(26,'Can change appointment',7,'change_appointment'),(27,'Can delete appointment',7,'delete_appointment'),(28,'Can view appointment',7,'view_appointment'),(29,'Can add assign delivery agent',8,'add_assigndeliveryagent'),(30,'Can change assign delivery agent',8,'change_assigndeliveryagent'),(31,'Can delete assign delivery agent',8,'delete_assigndeliveryagent'),(32,'Can view assign delivery agent',8,'view_assigndeliveryagent'),(33,'Can add booking',9,'add_booking'),(34,'Can change booking',9,'change_booking'),(35,'Can delete booking',9,'delete_booking'),(36,'Can view booking',9,'view_booking'),(37,'Can add complaint',10,'add_complaint'),(38,'Can change complaint',10,'change_complaint'),(39,'Can delete complaint',10,'delete_complaint'),(40,'Can view complaint',10,'view_complaint'),(41,'Can add delivery agent',11,'add_deliveryagent'),(42,'Can change delivery agent',11,'change_deliveryagent'),(43,'Can delete delivery agent',11,'delete_deliveryagent'),(44,'Can view delivery agent',11,'view_deliveryagent'),(45,'Can add doctor',12,'add_doctor'),(46,'Can change doctor',12,'change_doctor'),(47,'Can delete doctor',12,'delete_doctor'),(48,'Can view doctor',12,'view_doctor'),(49,'Can add login',13,'add_login'),(50,'Can change login',13,'change_login'),(51,'Can delete login',13,'delete_login'),(52,'Can view login',13,'view_login'),(53,'Can add medicine',14,'add_medicine'),(54,'Can change medicine',14,'change_medicine'),(55,'Can delete medicine',14,'delete_medicine'),(56,'Can view medicine',14,'view_medicine'),(57,'Can add payment',15,'add_payment'),(58,'Can change payment',15,'change_payment'),(59,'Can delete payment',15,'delete_payment'),(60,'Can view payment',15,'view_payment'),(61,'Can add pharmacy',16,'add_pharmacy'),(62,'Can change pharmacy',16,'change_pharmacy'),(63,'Can delete pharmacy',16,'delete_pharmacy'),(64,'Can view pharmacy',16,'view_pharmacy'),(65,'Can add prescription',17,'add_prescription'),(66,'Can change prescription',17,'change_prescription'),(67,'Can delete prescription',17,'delete_prescription'),(68,'Can view prescription',17,'view_prescription'),(69,'Can add rating',18,'add_rating'),(70,'Can change rating',18,'change_rating'),(71,'Can delete rating',18,'delete_rating'),(72,'Can view rating',18,'view_rating'),(73,'Can add user',19,'add_user'),(74,'Can change user',19,'change_user'),(75,'Can delete user',19,'delete_user'),(76,'Can view user',19,'view_user'),(77,'Can add order',20,'add_order'),(78,'Can change order',20,'change_order'),(79,'Can delete order',20,'delete_order'),(80,'Can view order',20,'view_order'),(81,'Can add train',21,'add_train'),(82,'Can change train',21,'change_train'),(83,'Can delete train',21,'delete_train'),(84,'Can view train',21,'view_train');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `reply` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (3,1,'jnojzx  jznjzx zncknczxkc','mjo jsfnnsfd','2024-01-15'),(4,1,' lmjbzsx jbaxjlbas jbcxsljbcs','jxnkan jNXKLna knSKLNAS JNCIAKS C JSNJNCKJLNCLJNSJL CJ JANKLCNKC','2024-01-15'),(5,1,'z,L: KL:','pending','2024-01-16'),(6,1,'fljnzdf njzxcklznx','pending','2024-01-16'),(7,5,'smS m,lcm njkasnksac','pending','2024-01-16');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_agent`
--

DROP TABLE IF EXISTS `delivery_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `phone no` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_agent`
--

LOCK TABLES `delivery_agent` WRITE;
/*!40000 ALTER TABLE `delivery_agent` DISABLE KEYS */;
INSERT INTO `delivery_agent` VALUES (5,'xkNK',55,'male','9685741235','klxzmoZo@gmail.com','xmlZ','mxl;zx'),(6,'Delivery Agent',22,'male','0987415','agent@gmail.com','3333','kjzb jbz  jbjzxjcb');
/*!40000 ALTER TABLE `delivery_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'appointment','appointment'),(8,'assign_delivery_agent','assigndeliveryagent'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'booking','booking'),(10,'complaint','complaint'),(5,'contenttypes','contenttype'),(11,'delivery_agent','deliveryagent'),(12,'doctor','doctor'),(13,'login','login'),(14,'medicine','medicine'),(20,'order','order'),(15,'payment','payment'),(16,'pharmacy','pharmacy'),(17,'prescription','prescription'),(18,'rating','rating'),(6,'sessions','session'),(21,'train','train'),(19,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-01-15 11:13:12.416743'),(2,'auth','0001_initial','2024-01-15 11:13:12.692491'),(3,'admin','0001_initial','2024-01-15 11:13:12.760995'),(4,'admin','0002_logentry_remove_auto_add','2024-01-15 11:13:12.764026'),(5,'admin','0003_logentry_add_action_flag_choices','2024-01-15 11:13:12.774094'),(6,'appointment','0001_initial','2024-01-15 11:13:12.774094'),(7,'assign_delivery_agent','0001_initial','2024-01-15 11:13:12.784850'),(8,'contenttypes','0002_remove_content_type_name','2024-01-15 11:13:12.835004'),(9,'auth','0002_alter_permission_name_max_length','2024-01-15 11:13:12.844665'),(10,'auth','0003_alter_user_email_max_length','2024-01-15 11:13:12.864717'),(11,'auth','0004_alter_user_username_opts','2024-01-15 11:13:12.874910'),(12,'auth','0005_alter_user_last_login_null','2024-01-15 11:13:12.903745'),(13,'auth','0006_require_contenttypes_0002','2024-01-15 11:13:12.905436'),(14,'auth','0007_alter_validators_add_error_messages','2024-01-15 11:13:12.917378'),(15,'auth','0008_alter_user_username_max_length','2024-01-15 11:13:12.927904'),(16,'auth','0009_alter_user_last_name_max_length','2024-01-15 11:13:12.940850'),(17,'auth','0010_alter_group_name_max_length','2024-01-15 11:13:12.952938'),(18,'auth','0011_update_proxy_permissions','2024-01-15 11:13:12.963477'),(19,'auth','0012_alter_user_first_name_max_length','2024-01-15 11:13:12.975682'),(20,'booking','0001_initial','2024-01-15 11:13:12.976861'),(21,'complaint','0001_initial','2024-01-15 11:13:12.976861'),(22,'delivery_agent','0001_initial','2024-01-15 11:13:12.990438'),(23,'doctor','0001_initial','2024-01-15 11:13:12.996952'),(24,'login','0001_initial','2024-01-15 11:13:13.001138'),(25,'medicine','0001_initial','2024-01-15 11:13:13.007157'),(26,'order','0001_initial','2024-01-15 11:13:13.012194'),(27,'payment','0001_initial','2024-01-15 11:13:13.017214'),(28,'pharmacy','0001_initial','2024-01-15 11:13:13.024841'),(29,'prescription','0001_initial','2024-01-15 11:13:13.027363'),(30,'rating','0001_initial','2024-01-15 11:13:13.036998'),(31,'sessions','0001_initial','2024-01-15 11:13:13.060897'),(32,'train','0001_initial','2024-01-15 11:13:13.067918'),(33,'user','0001_initial','2024-01-15 11:13:13.071977');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7i14utgldvxu7wwz4hi604cnitskvw7e','eyJ1X2lkIjoxfQ:1rPLHU:MxSf88TcblFiVV15uhpGpqAgff8OWE2VDshfOypW0Us','2024-01-29 11:37:28.691662'),('eo1qgzpkdi9x16stfrzsa5496tbddym5','eyJ1X2lkIjo3fQ:1rQ0Fk:eVqoOWy93aKmJRbqDkfGq9igfHEsTPtoRMREkM9xWfU','2024-01-31 07:22:24.330132'),('qc7g11z8g1ddokqthpfz5dy4ascpssdj','eyJ1X2lkIjoxfQ:1rPafm:RUq0hnP5eOwruqPF4Y1VEdbk2Eb88zAkY5w7V3D7LCc','2024-01-30 04:03:34.365425'),('qfliwmzgeso9l3h0daefq9p3omrq8y7v','eyJ1X2lkIjo1fQ:1rPhYS:tNvtE9rlDxI_3Pag8weqr6Kpb4nIvC7L2DNUlSAVIBc','2024-01-30 11:24:28.996382'),('se7yb25djdv2vk17dn8wzz0mxhy272ir','eyJ1X2lkIjo1fQ:1rPzjb:FEnxXcFBdamR_2bY4iEe2Kefz-pCxXa4muNUTFf9hv8','2024-01-31 06:49:11.959924'),('xkmuhsrewi730kh3d35ybtp36dss1dsq','eyJ1X2lkIjo1fQ:1rPzNU:3uax1H44KMtjDLEcPpcIj9G27D3DMaTUGeQjZJoXn2Q','2024-01-31 06:26:20.639768');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `specialization` varchar(25) NOT NULL,
  `experience` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone no` int(11) NOT NULL,
  `password` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (3,'niranjana','90','female','kozhi','45','no',100,'dd',''),(4,'doctor','22','male','cardio','4','doctor@gmail.com',756321,'1111','xnZK jXklXAN NXlkjnZ');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','1234','admin',1),(2,'nishalkk@gmail.com','0000','user',1),(3,'doctor@gmail.com','1111','doctor',4),(4,'pharmacy@gmail.com','2222','pharmacy',7),(5,'agent@gmail.com','3333','delivery_boy',6),(6,'user@gmail.com','4444','user',5),(7,'user@gmail.com','4444','user',6),(8,'chingchang@gmail.com','1212','user',7);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `description` varchar(25) NOT NULL,
  `p_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (5,'Paracip 500','Paracetamol',1,0),(6,'dolo','Paracetamol',7,0),(7,'vit d3','vitamine',7,25);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `quantity` int(30) NOT NULL,
  `seat_no` varchar(20) NOT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `train_number` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,5,5,'pending',50,'cb2',NULL,'98657'),(2,5,6,'Accepted',50,'cb2',NULL,'98657'),(3,5,7,'Accepted',20,'cb2',NULL,'98657');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account name` varchar(25) DEFAULT NULL,
  `account no` int(11) DEFAULT NULL,
  `cvv` varchar(25) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (9,1,'name',34567,'4566',100,'10:23:28','2023-12-31',6,''),(10,5,NULL,NULL,NULL,NULL,'12:02:13','2024-01-17',3,'paid'),(11,5,NULL,NULL,NULL,25,'12:30:17','2024-01-17',3,'paid');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone no` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES (5,'kcxkn','xknxZKz','xlmol','mxoXZO',''),(7,'pharmacy','kjzb jbz  jbjzxjcb','0987456','2222','pharmacy@gmail.com');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `prescription` varchar(25) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (3,2,'12:59:49','2024-01-15','c m c',1),(4,5,'09:41:35','2024-01-17','mxl;',4),(5,5,'11:11:27','2024-01-17','paracetamol',4);
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `rating` varchar(25) NOT NULL,
  `review` varchar(20) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'11:18:01','2023-12-12','jkuygfg',''),(2,'20:39:04','2023-12-17','dfjfjdff',''),(3,'09:56:28','2023-12-31','dfjfjdff','ierng');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_id` int(11) NOT NULL AUTO_INCREMENT,
  `train_name` varchar(20) NOT NULL,
  `route` varchar(60) NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone no` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'niranjana',65,'female','illa',765433,'dfgh','ewd'),(3,'mo',19,'male','no',989896,'efgbn','546'),(5,'user',22,'male','xkaoichouacschkhb cajbucucsac',7563217,'user@gmail.com','4444'),(6,'user',22,'male','dbqwobdvdh dvbqwd;vqiwyiyqwd',7563217,'user@gmail.com','4444'),(7,'noduhd',20,'male','xkaoichouacschkhb cajbucucsac',756321,'chingchang@gmail.com','1212');
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

-- Dump completed on 2024-01-17 12:55:36
