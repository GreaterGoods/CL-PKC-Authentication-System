-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: django_as_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add manager table',7,'add_managertable'),(26,'Can change manager table',7,'change_managertable'),(27,'Can delete manager table',7,'delete_managertable'),(28,'Can view manager table',7,'view_managertable'),(29,'Can add user table',8,'add_usertable'),(30,'Can change user table',8,'change_usertable'),(31,'Can delete user table',8,'delete_usertable'),(32,'Can view user table',8,'view_usertable'),(33,'Can add entity table',9,'add_entitytable'),(34,'Can change entity table',9,'change_entitytable'),(35,'Can delete entity table',9,'delete_entitytable'),(36,'Can view entity table',9,'view_entitytable'),(37,'Can add kgc paramter table',10,'add_kgcparamtertable'),(38,'Can change kgc paramter table',10,'change_kgcparamtertable'),(39,'Can delete kgc paramter table',10,'delete_kgcparamtertable'),(40,'Can view kgc paramter table',10,'view_kgcparamtertable');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'entitymanage','entitytable'),(10,'entitymanage','kgcparamtertable'),(6,'sessions','session'),(7,'usermanage','managertable'),(8,'usermanage','usertable');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-17 06:50:50.023408'),(2,'auth','0001_initial','2025-05-17 06:51:15.872353'),(3,'admin','0001_initial','2025-05-17 06:51:22.556928'),(4,'admin','0002_logentry_remove_auto_add','2025-05-17 06:51:22.830582'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-17 06:51:23.108849'),(6,'contenttypes','0002_remove_content_type_name','2025-05-17 06:51:27.507400'),(7,'auth','0002_alter_permission_name_max_length','2025-05-17 06:51:30.555022'),(8,'auth','0003_alter_user_email_max_length','2025-05-17 06:51:31.600635'),(9,'auth','0004_alter_user_username_opts','2025-05-17 06:51:31.868797'),(10,'auth','0005_alter_user_last_login_null','2025-05-17 06:51:34.105559'),(11,'auth','0006_require_contenttypes_0002','2025-05-17 06:51:34.281694'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-17 06:51:34.605014'),(13,'auth','0008_alter_user_username_max_length','2025-05-17 06:51:37.766857'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-17 06:51:40.737025'),(15,'auth','0010_alter_group_name_max_length','2025-05-17 06:51:41.297676'),(16,'auth','0011_update_proxy_permissions','2025-05-17 06:51:41.741508'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-17 06:51:44.707736'),(18,'sessions','0001_initial','2025-05-17 06:51:46.349968');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitymanage_entitytable`
--

DROP TABLE IF EXISTS `entitymanage_entitytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitymanage_entitytable` (
  `entity_index` int NOT NULL AUTO_INCREMENT,
  `entity_pid` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `entity_partialkey` tinytext,
  `entity_ip` varchar(39) NOT NULL,
  `entity_port` int NOT NULL,
  `is_alive` tinyint NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`entity_index`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitymanage_entitytable`
--

LOCK TABLES `entitymanage_entitytable` WRITE;
/*!40000 ALTER TABLE `entitymanage_entitytable` DISABLE KEYS */;
INSERT INTO `entitymanage_entitytable` VALUES (2,'node_3z6y9w1q','manager_id','fb40b8de99ac8aada7d3af56c074f78e271ebc14a1e9b61b0f83601103d7d1d7','192.168.3.17',7998,1,'2025-05-16 16:30:08','2025-05-16 16:30:08'),(3,'service_6c1x8w4q','manager_id','c2ebcabfe20a357ffe03045959dc37e96e8b72d7dc08a3c1d9b476a12cc4a6ec','192.168.3.17',7997,1,'2025-05-16 16:32:16','2025-05-16 16:32:16'),(4,'f94918acc7e752b43b6dc9b4a2e20876','1a82191dcc220242b2edd0eb78b9de6a','179eb0ecd31e1aea393f1469fd9929bafb31a52d6b73623aa68c4b9f3c7e73c3','192.168.3.17',7999,1,'2025-05-19 05:36:47','2025-05-19 05:36:47'),(5,'153162ff2f3479436d81bdc5589c6f25','1a82191dcc220242b2edd0eb78b9de6a','ad9da4c9b61a7d70a4d0b6bf521804b9c9816d290f1eaef701d12feab8249992','192.168.3.17',7999,0,'2025-05-19 11:27:20','2025-05-27 08:18:47'),(6,'147383917921d61a37a6f2791c66e260','1a82191dcc220242b2edd0eb78b9de6a','745b2b88dda0e43df8ad0a8e00a9672046b1b51054ac03f66b2838b7203b740a','192.168.3.17',7999,0,'2025-05-27 09:29:38','2025-05-27 09:34:17'),(7,'1a6fd2957f98e64831503dccf33af95a','1a82191dcc220242b2edd0eb78b9de6a','e4d29fd7fd6aca820581df3a509909139f002ce8b600c70a93bf2806adbbba13','192.168.3.17',7999,0,'2025-05-30 07:53:34','2025-05-30 07:58:56');
/*!40000 ALTER TABLE `entitymanage_entitytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entitymanage_kgcparamtertable`
--

DROP TABLE IF EXISTS `entitymanage_kgcparamtertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entitymanage_kgcparamtertable` (
  `kgc_id` varchar(32) NOT NULL,
  `kgc_s` tinytext NOT NULL,
  `kgc_P` tinytext NOT NULL,
  `kgc_Ppub` tinytext NOT NULL,
  `kgc_q` tinytext NOT NULL,
  `kgc_acc_G` tinytext NOT NULL,
  `kgc_acc_publickey` tinytext NOT NULL,
  `kgc_acc_cur` tinytext NOT NULL,
  `kgc_acc_serectkey0` tinytext NOT NULL,
  `kgc_acc_serectkey1` tinytext NOT NULL,
  PRIMARY KEY (`kgc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entitymanage_kgcparamtertable`
--

LOCK TABLES `entitymanage_kgcparamtertable` WRITE;
/*!40000 ALTER TABLE `entitymanage_kgcparamtertable` DISABLE KEYS */;
INSERT INTO `entitymanage_kgcparamtertable` VALUES ('kgc_id','57b831ef836d237bbe55065fd97a21a58c82789810a931d4023a212c6e1a2df6','79be667ef9dcbbac55a06295ce870b07029bfcdb2dce28d959f2815b16f81798|483ada7726a3c4655da4fbfc0e1108a8fd17b448a68554199c47d08ffb10d4b8','93b07eb082a7c58a1474302894ca31880d02a9ae7adbe102bcc25a58edc4e2e5|e28beb63378a2d4b8e2314b5733e52db5991a92ddf8acd4ff9b0a543ac41dbfd','fffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141','97ef1f09dcc6e81e2c08f3c96f04710fe1d05b39ac00e6fc190de20293c7ee01','a775863f0ad44ca20035dbc8bee624ec9d65415f670e0a7b501bffb6bb298c064d977c6f3a43728ca6a4eca0c35cf0a3957c007de7b601e4302738a734c3bd43','97ef1f09dcc6e81e2c08f3c96f04710fe1d05b39ac00e6fc190de20293c7ee01','f04fccdf714e91d01d7d87fbb12c8826ca0aad405aeab51f72c91dbcedbd5991','b2642d67ff49bb64d5de352ddf412a0681495550ad73799772de8648ddc4df93');
/*!40000 ALTER TABLE `entitymanage_kgcparamtertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanage_managertable`
--

DROP TABLE IF EXISTS `usermanage_managertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usermanage_managertable` (
  `manager_id` varchar(32) NOT NULL,
  `manager_name` varchar(20) NOT NULL,
  `manager_pwd` varchar(20) NOT NULL,
  `manager_phone` varchar(11) DEFAULT NULL,
  `manager_email` varchar(254) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanage_managertable`
--

LOCK TABLES `usermanage_managertable` WRITE;
/*!40000 ALTER TABLE `usermanage_managertable` DISABLE KEYS */;
INSERT INTO `usermanage_managertable` VALUES ('0ad9e30ca539f968e662b6d505fcd276','Plant_Manager','user_pwd','17899012894','PlantManager@nav.com','2025-05-16 08:04:48','2025-05-16 08:04:48');
/*!40000 ALTER TABLE `usermanage_managertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermanage_usertable`
--

DROP TABLE IF EXISTS `usermanage_usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usermanage_usertable` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_fingerprint` tinytext NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermanage_usertable`
--

LOCK TABLES `usermanage_usertable` WRITE;
/*!40000 ALTER TABLE `usermanage_usertable` DISABLE KEYS */;
INSERT INTO `usermanage_usertable` VALUES ('1a82191dcc220242b2edd0eb78b9de6a','luoliang','','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6cfb','2025-05-19 11:27:19','2025-05-30 07:53:34');
/*!40000 ALTER TABLE `usermanage_usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-04 14:09:53
