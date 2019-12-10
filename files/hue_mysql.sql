-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: hue
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2-log

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
-- Current Database: `hue`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hue`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'default');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add group',1,'add_group'),(2,'Can change group',1,'change_group'),(3,'Can delete group',1,'delete_group'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add user open id',4,'add_useropenid'),(11,'Can change user open id',4,'change_useropenid'),(12,'Can delete user open id',4,'delete_useropenid'),(13,'The OpenID has been verified',4,'account_verified'),(14,'Can add nonce',5,'add_nonce'),(15,'Can change nonce',5,'change_nonce'),(16,'Can delete nonce',5,'delete_nonce'),(17,'Can add association',6,'add_association'),(18,'Can change association',6,'change_association'),(19,'Can delete association',6,'delete_association'),(20,'Can add content type',7,'add_contenttype'),(21,'Can change content type',7,'change_contenttype'),(22,'Can delete content type',7,'delete_contenttype'),(23,'Can add session',8,'add_session'),(24,'Can change session',8,'change_session'),(25,'Can delete session',8,'delete_session'),(26,'Can add site',9,'add_site'),(27,'Can change site',9,'change_site'),(28,'Can delete site',9,'delete_site'),(29,'Can add log entry',10,'add_logentry'),(30,'Can change log entry',10,'change_logentry'),(31,'Can delete log entry',10,'delete_logentry'),(32,'Can add document permission',11,'add_documentpermission'),(33,'Can change document permission',11,'change_documentpermission'),(34,'Can delete document permission',11,'delete_documentpermission'),(35,'Can add default configuration',12,'add_defaultconfiguration'),(36,'Can change default configuration',12,'change_defaultconfiguration'),(37,'Can delete default configuration',12,'delete_defaultconfiguration'),(38,'Can add document',13,'add_document'),(39,'Can change document',13,'change_document'),(40,'Can delete document',13,'delete_document'),(41,'Can add document tag',14,'add_documenttag'),(42,'Can change document tag',14,'change_documenttag'),(43,'Can delete document tag',14,'delete_documenttag'),(44,'Can add settings',15,'add_settings'),(45,'Can change settings',15,'change_settings'),(46,'Can delete settings',15,'delete_settings'),(47,'Can add document2',16,'add_document2'),(48,'Can change document2',16,'change_document2'),(49,'Can delete document2',16,'delete_document2'),(50,'Can add document2 permission',17,'add_document2permission'),(51,'Can change document2 permission',17,'change_document2permission'),(52,'Can delete document2 permission',17,'delete_document2permission'),(53,'Can add user preferences',18,'add_userpreferences'),(54,'Can change user preferences',18,'change_userpreferences'),(55,'Can delete user preferences',18,'delete_userpreferences'),(56,'Can add hue user',3,'add_hueuser'),(57,'Can change hue user',3,'change_hueuser'),(58,'Can delete hue user',3,'delete_hueuser'),(59,'Can add directory',16,'add_directory'),(60,'Can change directory',16,'change_directory'),(61,'Can delete directory',16,'delete_directory'),(62,'Can add access log',21,'add_accesslog'),(63,'Can change access log',21,'change_accesslog'),(64,'Can delete access log',21,'delete_accesslog'),(65,'Can add access attempt',22,'add_accessattempt'),(66,'Can change access attempt',22,'change_accessattempt'),(67,'Can delete access attempt',22,'delete_accessattempt'),(68,'Can add session',23,'add_session'),(69,'Can change session',23,'change_session'),(70,'Can delete session',23,'delete_session'),(71,'Can add saved query',24,'add_savedquery'),(72,'Can change saved query',24,'change_savedquery'),(73,'Can delete saved query',24,'delete_savedquery'),(74,'Can add meta install',25,'add_metainstall'),(75,'Can change meta install',25,'change_metainstall'),(76,'Can delete meta install',25,'delete_metainstall'),(77,'Can add query history',26,'add_queryhistory'),(78,'Can change query history',26,'change_queryhistory'),(79,'Can delete query history',26,'delete_queryhistory'),(80,'Can add hive server query history',26,'add_hiveserverqueryhistory'),(81,'Can change hive server query history',26,'change_hiveserverqueryhistory'),(82,'Can delete hive server query history',26,'delete_hiveserverqueryhistory'),(83,'Can add oozie action',28,'add_oozieaction'),(84,'Can change oozie action',28,'change_oozieaction'),(85,'Can delete oozie action',28,'delete_oozieaction'),(86,'Can add check for setup',29,'add_checkforsetup'),(87,'Can change check for setup',29,'change_checkforsetup'),(88,'Can delete check for setup',29,'delete_checkforsetup'),(89,'Can add job history',30,'add_jobhistory'),(90,'Can change job history',30,'change_jobhistory'),(91,'Can delete job history',30,'delete_jobhistory'),(92,'Can add oozie mapreduce action',31,'add_ooziemapreduceaction'),(93,'Can change oozie mapreduce action',31,'change_ooziemapreduceaction'),(94,'Can delete oozie mapreduce action',31,'delete_ooziemapreduceaction'),(95,'Can add job design',32,'add_jobdesign'),(96,'Can change job design',32,'change_jobdesign'),(97,'Can delete job design',32,'delete_jobdesign'),(98,'Can add oozie java action',33,'add_ooziejavaaction'),(99,'Can change oozie java action',33,'change_ooziejavaaction'),(100,'Can delete oozie java action',33,'delete_ooziejavaaction'),(101,'Can add oozie design',34,'add_ooziedesign'),(102,'Can change oozie design',34,'change_ooziedesign'),(103,'Can delete oozie design',34,'delete_ooziedesign'),(104,'Can add oozie streaming action',35,'add_ooziestreamingaction'),(105,'Can change oozie streaming action',35,'change_ooziestreamingaction'),(106,'Can delete oozie streaming action',35,'delete_ooziestreamingaction'),(107,'Can add bundled coordinator',36,'add_bundledcoordinator'),(108,'Can change bundled coordinator',36,'change_bundledcoordinator'),(109,'Can delete bundled coordinator',36,'delete_bundledcoordinator'),(110,'Can add data output',37,'add_dataoutput'),(111,'Can change data output',37,'change_dataoutput'),(112,'Can delete data output',37,'delete_dataoutput'),(113,'Can add history',38,'add_history'),(114,'Can change history',38,'change_history'),(115,'Can delete history',38,'delete_history'),(116,'Can add link',39,'add_link'),(117,'Can change link',39,'change_link'),(118,'Can delete link',39,'delete_link'),(119,'Can add job',40,'add_job'),(120,'Can change job',40,'change_job'),(121,'Can delete job',40,'delete_job'),(122,'Can add data input',41,'add_datainput'),(123,'Can change data input',41,'change_datainput'),(124,'Can delete data input',41,'delete_datainput'),(125,'Can add coordinator',42,'add_coordinator'),(126,'Can change coordinator',42,'change_coordinator'),(127,'Can delete coordinator',42,'delete_coordinator'),(128,'Can add node',43,'add_node'),(129,'Can change node',43,'change_node'),(130,'Can delete node',43,'delete_node'),(131,'Can add dataset',44,'add_dataset'),(132,'Can change dataset',44,'change_dataset'),(133,'Can delete dataset',44,'delete_dataset'),(134,'Can add ssh',45,'add_ssh'),(135,'Can change ssh',45,'change_ssh'),(136,'Can delete ssh',45,'delete_ssh'),(137,'Can add start',46,'add_start'),(138,'Can change start',46,'change_start'),(139,'Can delete start',46,'delete_start'),(140,'Can add kill',47,'add_kill'),(141,'Can change kill',47,'change_kill'),(142,'Can delete kill',47,'delete_kill'),(143,'Can add fs',48,'add_fs'),(144,'Can change fs',48,'change_fs'),(145,'Can delete fs',48,'delete_fs'),(146,'Can add decision end',49,'add_decisionend'),(147,'Can change decision end',49,'change_decisionend'),(148,'Can delete decision end',49,'delete_decisionend'),(149,'Can add sqoop',50,'add_sqoop'),(150,'Can change sqoop',50,'change_sqoop'),(151,'Can delete sqoop',50,'delete_sqoop'),(152,'Can add join',51,'add_join'),(153,'Can change join',51,'change_join'),(154,'Can delete join',51,'delete_join'),(155,'Can add mapreduce',52,'add_mapreduce'),(156,'Can change mapreduce',52,'change_mapreduce'),(157,'Can delete mapreduce',52,'delete_mapreduce'),(158,'Can add decision',53,'add_decision'),(159,'Can change decision',53,'change_decision'),(160,'Can delete decision',53,'delete_decision'),(161,'Can add email',54,'add_email'),(162,'Can change email',54,'change_email'),(163,'Can delete email',54,'delete_email'),(164,'Can add workflow',55,'add_workflow'),(165,'Can change workflow',55,'change_workflow'),(166,'Can delete workflow',55,'delete_workflow'),(167,'Can add java',56,'add_java'),(168,'Can change java',56,'change_java'),(169,'Can delete java',56,'delete_java'),(170,'Can add fork',57,'add_fork'),(171,'Can change fork',57,'change_fork'),(172,'Can delete fork',57,'delete_fork'),(173,'Can add generic',58,'add_generic'),(174,'Can change generic',58,'change_generic'),(175,'Can delete generic',58,'delete_generic'),(176,'Can add pig',59,'add_pig'),(177,'Can change pig',59,'change_pig'),(178,'Can delete pig',59,'delete_pig'),(179,'Can add dist cp',60,'add_distcp'),(180,'Can change dist cp',60,'change_distcp'),(181,'Can delete dist cp',60,'delete_distcp'),(182,'Can add sub workflow',61,'add_subworkflow'),(183,'Can change sub workflow',61,'change_subworkflow'),(184,'Can delete sub workflow',61,'delete_subworkflow'),(185,'Can add bundle',62,'add_bundle'),(186,'Can change bundle',62,'change_bundle'),(187,'Can delete bundle',62,'delete_bundle'),(188,'Can add end',63,'add_end'),(189,'Can change end',63,'change_end'),(190,'Can delete end',63,'delete_end'),(191,'Can add streaming',64,'add_streaming'),(192,'Can change streaming',64,'change_streaming'),(193,'Can delete streaming',64,'delete_streaming'),(194,'Can add shell',65,'add_shell'),(195,'Can change shell',65,'change_shell'),(196,'Can delete shell',65,'delete_shell'),(197,'Can add hive',66,'add_hive'),(198,'Can change hive',66,'change_hive'),(199,'Can delete hive',66,'delete_hive'),(200,'Can add document',67,'add_document'),(201,'Can change document',67,'change_document'),(202,'Can delete document',67,'delete_document'),(203,'Can add pig script',68,'add_pigscript'),(204,'Can change pig script',68,'change_pigscript'),(205,'Can delete pig script',68,'delete_pigscript'),(206,'Can add facet',69,'add_facet'),(207,'Can change facet',69,'change_facet'),(208,'Can delete facet',69,'delete_facet'),(209,'Can add sorting',70,'add_sorting'),(210,'Can change sorting',70,'change_sorting'),(211,'Can delete sorting',70,'delete_sorting'),(212,'Can add result',71,'add_result'),(213,'Can change result',71,'change_result'),(214,'Can delete result',71,'delete_result'),(215,'Can add collection',72,'add_collection'),(216,'Can change collection',72,'change_collection'),(217,'Can delete collection',72,'delete_collection'),(218,'Can add hue permission',73,'add_huepermission'),(219,'Can change hue permission',73,'change_huepermission'),(220,'Can delete hue permission',73,'delete_huepermission'),(221,'Can add user profile',74,'add_userprofile'),(222,'Can change user profile',74,'change_userprofile'),(223,'Can delete user profile',74,'delete_userprofile'),(224,'Can add group permission',75,'add_grouppermission'),(225,'Can change group permission',75,'change_grouppermission'),(226,'Can delete group permission',75,'delete_grouppermission'),(227,'Can add ldap group',76,'add_ldapgroup'),(228,'Can change ldap group',76,'change_ldapgroup'),(229,'Can delete ldap group',76,'delete_ldapgroup');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axes_accessattempt`
--

DROP TABLE IF EXISTS `axes_accessattempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `axes_accessattempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `trusted` tinyint(1) NOT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `get_data` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `failures_since_start` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `axes_accessattempt_ip_address_10922d9c` (`ip_address`),
  KEY `axes_accessattempt_trusted_0eddf52e` (`trusted`),
  KEY `axes_accessattempt_user_agent_ad89678b` (`user_agent`),
  KEY `axes_accessattempt_username_3f2d4ca0` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axes_accessattempt`
--

LOCK TABLES `axes_accessattempt` WRITE;
/*!40000 ALTER TABLE `axes_accessattempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `axes_accessattempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axes_accesslog`
--

DROP TABLE IF EXISTS `axes_accesslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `axes_accesslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `trusted` tinyint(1) NOT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `axes_accesslog_ip_address_86b417e5` (`ip_address`),
  KEY `axes_accesslog_trusted_496c5681` (`trusted`),
  KEY `axes_accesslog_user_agent_0e659004` (`user_agent`),
  KEY `axes_accesslog_username_df93064b` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axes_accesslog`
--

LOCK TABLES `axes_accesslog` WRITE;
/*!40000 ALTER TABLE `axes_accesslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `axes_accesslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_metainstall`
--

DROP TABLE IF EXISTS `beeswax_metainstall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_metainstall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `installed_example` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_metainstall`
--

LOCK TABLES `beeswax_metainstall` WRITE;
/*!40000 ALTER TABLE `beeswax_metainstall` DISABLE KEYS */;
/*!40000 ALTER TABLE `beeswax_metainstall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_queryhistory`
--

DROP TABLE IF EXISTS `beeswax_queryhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_queryhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query` longtext NOT NULL,
  `last_state` int(11) NOT NULL,
  `has_results` tinyint(1) NOT NULL,
  `submission_date` datetime(6) NOT NULL,
  `server_id` varchar(1024) DEFAULT NULL,
  `server_guid` varchar(1024) DEFAULT NULL,
  `statement_number` smallint(6) NOT NULL,
  `operation_type` smallint(6) DEFAULT NULL,
  `modified_row_count` double DEFAULT NULL,
  `log_context` varchar(1024) DEFAULT NULL,
  `server_host` varchar(128) NOT NULL,
  `server_port` int(10) unsigned NOT NULL,
  `server_name` varchar(128) NOT NULL,
  `server_type` varchar(128) NOT NULL,
  `query_type` smallint(6) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `is_redacted` tinyint(1) NOT NULL,
  `extra` longtext NOT NULL,
  `is_cleared` tinyint(1) NOT NULL,
  `design_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `beeswax_queryhistory_last_state_3b123643` (`last_state`),
  KEY `beeswax_queryhistory_design_id_8b19f1ba_fk_beeswax_savedquery_id` (`design_id`),
  KEY `beeswax_queryhistory_owner_id_f56d0c52_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `beeswax_queryhistory_design_id_8b19f1ba_fk_beeswax_savedquery_id` FOREIGN KEY (`design_id`) REFERENCES `beeswax_savedquery` (`id`),
  CONSTRAINT `beeswax_queryhistory_owner_id_f56d0c52_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_queryhistory`
--

LOCK TABLES `beeswax_queryhistory` WRITE;
/*!40000 ALTER TABLE `beeswax_queryhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `beeswax_queryhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_savedquery`
--

DROP TABLE IF EXISTS `beeswax_savedquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_savedquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `name` varchar(80) NOT NULL,
  `desc` longtext NOT NULL,
  `mtime` datetime(6) NOT NULL,
  `is_auto` tinyint(1) NOT NULL,
  `is_trashed` tinyint(1) NOT NULL,
  `is_redacted` tinyint(1) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `beeswax_savedquery_owner_id_f98eb824_fk_auth_user_id` (`owner_id`),
  KEY `beeswax_savedquery_is_auto_7ba521ab` (`is_auto`),
  KEY `beeswax_savedquery_is_trashed_8dc60321` (`is_trashed`),
  CONSTRAINT `beeswax_savedquery_owner_id_f98eb824_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_savedquery`
--

LOCK TABLES `beeswax_savedquery` WRITE;
/*!40000 ALTER TABLE `beeswax_savedquery` DISABLE KEYS */;
/*!40000 ALTER TABLE `beeswax_savedquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_session`
--

DROP TABLE IF EXISTS `beeswax_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_code` smallint(5) unsigned NOT NULL,
  `secret` longtext NOT NULL,
  `guid` longtext NOT NULL,
  `server_protocol_version` smallint(6) NOT NULL,
  `last_used` datetime(6) NOT NULL,
  `application` varchar(128) NOT NULL,
  `properties` longtext NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `beeswax_session_owner_id_46797e50_fk_auth_user_id` (`owner_id`),
  KEY `beeswax_session_last_used_df0f793b` (`last_used`),
  CONSTRAINT `beeswax_session_owner_id_46797e50_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_session`
--

LOCK TABLES `beeswax_session` WRITE;
/*!40000 ALTER TABLE `beeswax_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `beeswax_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultconfiguration_groups`
--

DROP TABLE IF EXISTS `defaultconfiguration_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultconfiguration_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `defaultconfiguration_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `defaultconfiguration_gro_defaultconfiguration_id__89a9cd30_uniq` (`defaultconfiguration_id`,`group_id`),
  KEY `defaultconfiguration_groups_group_id_f9733e62_fk_auth_group_id` (`group_id`),
  CONSTRAINT `defaultconfiguration_defaultconfiguration_16cbc944_fk_desktop_d` FOREIGN KEY (`defaultconfiguration_id`) REFERENCES `desktop_defaultconfiguration` (`id`),
  CONSTRAINT `defaultconfiguration_groups_group_id_f9733e62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultconfiguration_groups`
--

LOCK TABLES `defaultconfiguration_groups` WRITE;
/*!40000 ALTER TABLE `defaultconfiguration_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `defaultconfiguration_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_defaultconfiguration`
--

DROP TABLE IF EXISTS `desktop_defaultconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_defaultconfiguration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(32) NOT NULL,
  `properties` longtext NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_defaultconfiguration_app_2a22dcdc` (`app`),
  KEY `desktop_defaultconfiguration_is_default_3a224335` (`is_default`),
  KEY `desktop_defaultconfiguration_user_id_8611da32_fk_auth_user_id` (`user_id`),
  CONSTRAINT `desktop_defaultconfiguration_user_id_8611da32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_defaultconfiguration`
--

LOCK TABLES `desktop_defaultconfiguration` WRITE;
/*!40000 ALTER TABLE `desktop_defaultconfiguration` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_defaultconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document`
--

DROP TABLE IF EXISTS `desktop_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `version` smallint(6) NOT NULL,
  `extra` longtext NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document_content_type_id_object_id_af1b9053_uniq` (`content_type_id`,`object_id`),
  KEY `desktop_document_last_modified_36ad4264` (`last_modified`),
  KEY `desktop_document_owner_id_6209716b_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `desktop_document_content_type_id_fe7f05ef_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `desktop_document_owner_id_6209716b_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document`
--

LOCK TABLES `desktop_document` WRITE;
/*!40000 ALTER TABLE `desktop_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document2`
--

DROP TABLE IF EXISTS `desktop_document2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `type` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `extra` longtext NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `version` smallint(6) NOT NULL,
  `is_history` tinyint(1) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `parent_directory_id` int(11) DEFAULT NULL,
  `search` longtext,
  `is_trashed` tinyint(1),
  `is_managed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document2_uuid_version_is_history_f449ad78_uniq` (`uuid`,`version`,`is_history`),
  KEY `desktop_document2_uuid_01e04a24` (`uuid`),
  KEY `desktop_document2_type_7a9e90a7` (`type`),
  KEY `desktop_document2_last_modified_15243c0d` (`last_modified`),
  KEY `desktop_document2_version_2299c6bb` (`version`),
  KEY `desktop_document2_is_history_c15f5853` (`is_history`),
  KEY `desktop_document2_owner_id_342662fe_fk_auth_user_id` (`owner_id`),
  KEY `desktop_document2_parent_directory_id_428ead9c_fk_desktop_d` (`parent_directory_id`),
  KEY `desktop_document2_is_trashed_e36a0b8a` (`is_trashed`),
  KEY `desktop_document2_is_managed_572d9c22` (`is_managed`),
  CONSTRAINT `desktop_document2_owner_id_342662fe_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `desktop_document2_parent_directory_id_428ead9c_fk_desktop_d` FOREIGN KEY (`parent_directory_id`) REFERENCES `desktop_document2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document2`
--

LOCK TABLES `desktop_document2` WRITE;
/*!40000 ALTER TABLE `desktop_document2` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_document2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document2_dependencies`
--

DROP TABLE IF EXISTS `desktop_document2_dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document2_dependencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_document2_id` int(11) NOT NULL,
  `to_document2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document2_depend_from_document2_id_to_doc_e8e0aebc_uniq` (`from_document2_id`,`to_document2_id`),
  KEY `desktop_document2_de_to_document2_id_2a18afeb_fk_desktop_d` (`to_document2_id`),
  CONSTRAINT `desktop_document2_de_from_document2_id_e5f62f5a_fk_desktop_d` FOREIGN KEY (`from_document2_id`) REFERENCES `desktop_document2` (`id`),
  CONSTRAINT `desktop_document2_de_to_document2_id_2a18afeb_fk_desktop_d` FOREIGN KEY (`to_document2_id`) REFERENCES `desktop_document2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document2_dependencies`
--

LOCK TABLES `desktop_document2_dependencies` WRITE;
/*!40000 ALTER TABLE `desktop_document2_dependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_document2_dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document2permission`
--

DROP TABLE IF EXISTS `desktop_document2permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document2permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perms` varchar(10) NOT NULL,
  `doc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document2permission_doc_id_perms_5a4d2ad8_uniq` (`doc_id`,`perms`),
  KEY `desktop_document2permission_perms_449c1144` (`perms`),
  CONSTRAINT `desktop_document2per_doc_id_b851e790_fk_desktop_d` FOREIGN KEY (`doc_id`) REFERENCES `desktop_document2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document2permission`
--

LOCK TABLES `desktop_document2permission` WRITE;
/*!40000 ALTER TABLE `desktop_document2permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_document2permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document_tags`
--

DROP TABLE IF EXISTS `desktop_document_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `documenttag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document_tags_document_id_documenttag_id_b89a0f94_uniq` (`document_id`,`documenttag_id`),
  KEY `desktop_document_tag_documenttag_id_4ac450c6_fk_desktop_d` (`documenttag_id`),
  CONSTRAINT `desktop_document_tag_document_id_97885747_fk_desktop_d` FOREIGN KEY (`document_id`) REFERENCES `desktop_document` (`id`),
  CONSTRAINT `desktop_document_tag_documenttag_id_4ac450c6_fk_desktop_d` FOREIGN KEY (`documenttag_id`) REFERENCES `desktop_documenttag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document_tags`
--

LOCK TABLES `desktop_document_tags` WRITE;
/*!40000 ALTER TABLE `desktop_document_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_document_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_documentpermission`
--

DROP TABLE IF EXISTS `desktop_documentpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_documentpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perms` varchar(10) NOT NULL,
  `doc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_documentpermission_doc_id_perms_e898a5e1_uniq` (`doc_id`,`perms`),
  CONSTRAINT `desktop_documentperm_doc_id_f3913804_fk_desktop_d` FOREIGN KEY (`doc_id`) REFERENCES `desktop_document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_documentpermission`
--

LOCK TABLES `desktop_documentpermission` WRITE;
/*!40000 ALTER TABLE `desktop_documentpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_documentpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_documenttag`
--

DROP TABLE IF EXISTS `desktop_documenttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_documenttag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_documenttag_owner_id_tag_040d0073_uniq` (`owner_id`,`tag`),
  KEY `desktop_documenttag_tag_0cc3fdde` (`tag`),
  CONSTRAINT `desktop_documenttag_owner_id_74dfe3a5_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_documenttag`
--

LOCK TABLES `desktop_documenttag` WRITE;
/*!40000 ALTER TABLE `desktop_documenttag` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_documenttag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_settings`
--

DROP TABLE IF EXISTS `desktop_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collect_usage` tinyint(1) NOT NULL,
  `tours_and_tutorials` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_settings_collect_usage_a62e7068` (`collect_usage`),
  KEY `desktop_settings_tours_and_tutorials_376b46bd` (`tours_and_tutorials`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_settings`
--

LOCK TABLES `desktop_settings` WRITE;
/*!40000 ALTER TABLE `desktop_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_userpreferences`
--

DROP TABLE IF EXISTS `desktop_userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_userpreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(20) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_userpreferences_user_id_f372df8e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `desktop_userpreferences_user_id_f372df8e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_userpreferences`
--

LOCK TABLES `desktop_userpreferences` WRITE;
/*!40000 ALTER TABLE `desktop_userpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'admin','logentry'),(1,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(22,'axes','accessattempt'),(21,'axes','accesslog'),(27,'beeswax','hiveserverqueryhistory'),(25,'beeswax','metainstall'),(26,'beeswax','queryhistory'),(24,'beeswax','savedquery'),(23,'beeswax','session'),(7,'contenttypes','contenttype'),(12,'desktop','defaultconfiguration'),(20,'desktop','directory'),(13,'desktop','document'),(16,'desktop','document2'),(17,'desktop','document2permission'),(11,'desktop','documentpermission'),(14,'desktop','documenttag'),(19,'desktop','hueuser'),(15,'desktop','settings'),(18,'desktop','userpreferences'),(6,'django_openid_auth','association'),(5,'django_openid_auth','nonce'),(4,'django_openid_auth','useropenid'),(29,'jobsub','checkforsetup'),(32,'jobsub','jobdesign'),(30,'jobsub','jobhistory'),(28,'jobsub','oozieaction'),(34,'jobsub','ooziedesign'),(33,'jobsub','ooziejavaaction'),(31,'jobsub','ooziemapreduceaction'),(35,'jobsub','ooziestreamingaction'),(62,'oozie','bundle'),(36,'oozie','bundledcoordinator'),(42,'oozie','coordinator'),(41,'oozie','datainput'),(37,'oozie','dataoutput'),(44,'oozie','dataset'),(53,'oozie','decision'),(49,'oozie','decisionend'),(60,'oozie','distcp'),(54,'oozie','email'),(63,'oozie','end'),(57,'oozie','fork'),(48,'oozie','fs'),(58,'oozie','generic'),(38,'oozie','history'),(66,'oozie','hive'),(56,'oozie','java'),(40,'oozie','job'),(51,'oozie','join'),(47,'oozie','kill'),(39,'oozie','link'),(52,'oozie','mapreduce'),(43,'oozie','node'),(59,'oozie','pig'),(65,'oozie','shell'),(50,'oozie','sqoop'),(45,'oozie','ssh'),(46,'oozie','start'),(64,'oozie','streaming'),(61,'oozie','subworkflow'),(55,'oozie','workflow'),(67,'pig','document'),(68,'pig','pigscript'),(72,'search','collection'),(69,'search','facet'),(71,'search','result'),(70,'search','sorting'),(8,'sessions','session'),(9,'sites','site'),(75,'useradmin','grouppermission'),(73,'useradmin','huepermission'),(76,'useradmin','ldapgroup'),(74,'useradmin','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-12-10 21:38:54.929372'),(2,'auth','0001_initial','2019-12-10 21:38:55.100723'),(3,'admin','0001_initial','2019-12-10 21:38:55.149159'),(4,'admin','0002_logentry_remove_auto_add','2019-12-10 21:38:55.166753'),(5,'contenttypes','0002_remove_content_type_name','2019-12-10 21:38:55.210325'),(6,'auth','0002_alter_permission_name_max_length','2019-12-10 21:38:55.227763'),(7,'auth','0003_alter_user_email_max_length','2019-12-10 21:38:55.249422'),(8,'auth','0004_alter_user_username_opts','2019-12-10 21:38:55.261266'),(9,'auth','0005_alter_user_last_login_null','2019-12-10 21:38:55.282997'),(10,'auth','0006_require_contenttypes_0002','2019-12-10 21:38:55.285571'),(11,'auth','0007_alter_validators_add_error_messages','2019-12-10 21:38:55.297378'),(12,'auth','0008_alter_user_username_max_length','2019-12-10 21:38:55.318551'),(13,'axes','0001_initial','2019-12-10 21:38:55.347483'),(14,'axes','0002_auto_20151217_2044','2019-12-10 21:38:55.435294'),(15,'axes','0003_auto_20160322_0929','2019-12-10 21:38:55.495000'),(16,'axes','0004_auto_20191108_0546','2019-12-10 21:38:55.527454'),(17,'beeswax','0001_initial','2019-12-10 21:38:55.739644'),(18,'desktop','0001_initial','2019-12-10 21:38:57.001550'),(19,'desktop','0002_initial','2019-12-10 21:38:57.214203'),(20,'desktop','0003_initial','2019-12-10 21:38:57.227064'),(21,'desktop','0004_initial','2019-12-10 21:38:57.239157'),(22,'desktop','0005_initial','2019-12-10 21:38:57.299219'),(23,'desktop','0006_initial','2019-12-10 21:38:57.366876'),(24,'desktop','0007_initial','2019-12-10 21:38:57.452108'),(25,'django_openid_auth','0001_initial','2019-12-10 21:38:57.566320'),(26,'jobsub','0001_initial','2019-12-10 21:38:58.068143'),(27,'oozie','0001_initial','2019-12-10 21:38:59.159009'),(28,'oozie','0002_initial','2019-12-10 21:38:59.188444'),(29,'oozie','0003_initial','2019-12-10 21:38:59.813710'),(30,'oozie','0004_initial','2019-12-10 21:38:59.909593'),(31,'oozie','0005_initial','2019-12-10 21:39:00.204865'),(32,'pig','0001_initial','2019-12-10 21:39:00.448204'),(33,'search','0001_initial','2019-12-10 21:39:00.817674'),(34,'sessions','0001_initial','2019-12-10 21:39:00.842859'),(35,'sites','0001_initial','2019-12-10 21:39:00.861798'),(36,'sites','0002_alter_domain_unique','2019-12-10 21:39:00.879596'),(37,'useradmin','0001_initial','2019-12-10 21:39:01.469756');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_openid_auth_association`
--

DROP TABLE IF EXISTS `django_openid_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_openid_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` longtext NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` longtext NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_openid_auth_association`
--

LOCK TABLES `django_openid_auth_association` WRITE;
/*!40000 ALTER TABLE `django_openid_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_openid_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_openid_auth_nonce`
--

DROP TABLE IF EXISTS `django_openid_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_openid_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(2000) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_openid_auth_nonce`
--

LOCK TABLES `django_openid_auth_nonce` WRITE;
/*!40000 ALTER TABLE `django_openid_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_openid_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_openid_auth_useropenid`
--

DROP TABLE IF EXISTS `django_openid_auth_useropenid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_openid_auth_useropenid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claimed_id` longtext NOT NULL,
  `display_id` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_openid_auth_useropenid_user_id_707d846c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_openid_auth_useropenid_user_id_707d846c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_openid_auth_useropenid`
--

LOCK TABLES `django_openid_auth_useropenid` WRITE;
/*!40000 ALTER TABLE `django_openid_auth_useropenid` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_openid_auth_useropenid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission2_groups`
--

DROP TABLE IF EXISTS `documentpermission2_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission2_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document2permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission2_grou_document2permission_id_g_b82724d9_uniq` (`document2permission_id`,`group_id`),
  KEY `documentpermission2_groups_group_id_7efb8a45_fk_auth_group_id` (`group_id`),
  CONSTRAINT `documentpermission2__document2permission__1f9f783b_fk_desktop_d` FOREIGN KEY (`document2permission_id`) REFERENCES `desktop_document2permission` (`id`),
  CONSTRAINT `documentpermission2_groups_group_id_7efb8a45_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission2_groups`
--

LOCK TABLES `documentpermission2_groups` WRITE;
/*!40000 ALTER TABLE `documentpermission2_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentpermission2_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission2_users`
--

DROP TABLE IF EXISTS `documentpermission2_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document2permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission2_user_document2permission_id_u_66ccf253_uniq` (`document2permission_id`,`user_id`),
  KEY `documentpermission2_users_user_id_848e20ce_fk_auth_user_id` (`user_id`),
  CONSTRAINT `documentpermission2__document2permission__ad7af084_fk_desktop_d` FOREIGN KEY (`document2permission_id`) REFERENCES `desktop_document2permission` (`id`),
  CONSTRAINT `documentpermission2_users_user_id_848e20ce_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission2_users`
--

LOCK TABLES `documentpermission2_users` WRITE;
/*!40000 ALTER TABLE `documentpermission2_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentpermission2_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission_groups`
--

DROP TABLE IF EXISTS `documentpermission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentpermission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission_group_documentpermission_id_gr_b617df3f_uniq` (`documentpermission_id`,`group_id`),
  KEY `documentpermission_groups_group_id_d44a4071_fk_auth_group_id` (`group_id`),
  CONSTRAINT `documentpermission_g_documentpermission_i_d838bd22_fk_desktop_d` FOREIGN KEY (`documentpermission_id`) REFERENCES `desktop_documentpermission` (`id`),
  CONSTRAINT `documentpermission_groups_group_id_d44a4071_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission_groups`
--

LOCK TABLES `documentpermission_groups` WRITE;
/*!40000 ALTER TABLE `documentpermission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentpermission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission_users`
--

DROP TABLE IF EXISTS `documentpermission_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentpermission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission_users_documentpermission_id_us_b0be31ca_uniq` (`documentpermission_id`,`user_id`),
  KEY `documentpermission_users_user_id_4afc7785_fk_auth_user_id` (`user_id`),
  CONSTRAINT `documentpermission_u_documentpermission_i_4546e93f_fk_desktop_d` FOREIGN KEY (`documentpermission_id`) REFERENCES `desktop_documentpermission` (`id`),
  CONSTRAINT `documentpermission_users_user_id_4afc7785_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission_users`
--

LOCK TABLES `documentpermission_users` WRITE;
/*!40000 ALTER TABLE `documentpermission_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentpermission_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_checkforsetup`
--

DROP TABLE IF EXISTS `jobsub_checkforsetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_checkforsetup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setup_run` tinyint(1) NOT NULL,
  `setup_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_checkforsetup`
--

LOCK TABLES `jobsub_checkforsetup` WRITE;
/*!40000 ALTER TABLE `jobsub_checkforsetup` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_checkforsetup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_jobdesign`
--

DROP TABLE IF EXISTS `jobsub_jobdesign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_jobdesign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `type` varchar(128) NOT NULL,
  `data` longtext NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobsub_jobdesign_owner_id_648998a1_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `jobsub_jobdesign_owner_id_648998a1_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_jobdesign`
--

LOCK TABLES `jobsub_jobdesign` WRITE;
/*!40000 ALTER TABLE `jobsub_jobdesign` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_jobdesign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_jobhistory`
--

DROP TABLE IF EXISTS `jobsub_jobhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_jobhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_date` datetime(6) NOT NULL,
  `job_id` varchar(128) NOT NULL,
  `design_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobsub_jobhistory_design_id_06d16a98_fk_jobsub_ooziedesign_id` (`design_id`),
  KEY `jobsub_jobhistory_owner_id_5bdaa10b_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `jobsub_jobhistory_design_id_06d16a98_fk_jobsub_ooziedesign_id` FOREIGN KEY (`design_id`) REFERENCES `jobsub_ooziedesign` (`id`),
  CONSTRAINT `jobsub_jobhistory_owner_id_5bdaa10b_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_jobhistory`
--

LOCK TABLES `jobsub_jobhistory` WRITE;
/*!40000 ALTER TABLE `jobsub_jobhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_jobhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_oozieaction`
--

DROP TABLE IF EXISTS `jobsub_oozieaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_oozieaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_oozieaction`
--

LOCK TABLES `jobsub_oozieaction` WRITE;
/*!40000 ALTER TABLE `jobsub_oozieaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_oozieaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziedesign`
--

DROP TABLE IF EXISTS `jobsub_ooziedesign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziedesign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `root_action_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobsub_ooziedesign_owner_id_cb5405f3_fk_auth_user_id` (`owner_id`),
  KEY `jobsub_ooziedesign_root_action_id_a68cdf79_fk_jobsub_oo` (`root_action_id`),
  CONSTRAINT `jobsub_ooziedesign_owner_id_cb5405f3_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `jobsub_ooziedesign_root_action_id_a68cdf79_fk_jobsub_oo` FOREIGN KEY (`root_action_id`) REFERENCES `jobsub_oozieaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziedesign`
--

LOCK TABLES `jobsub_ooziedesign` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziedesign` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziedesign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziejavaaction`
--

DROP TABLE IF EXISTS `jobsub_ooziejavaaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziejavaaction` (
  `oozieaction_ptr_id` int(11) NOT NULL,
  `files` varchar(512) NOT NULL,
  `archives` varchar(512) NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  `main_class` varchar(256) NOT NULL,
  `args` longtext NOT NULL,
  `java_opts` varchar(256) NOT NULL,
  `job_properties` longtext NOT NULL,
  PRIMARY KEY (`oozieaction_ptr_id`),
  CONSTRAINT `jobsub_ooziejavaacti_oozieaction_ptr_id_0f52fef4_fk_jobsub_oo` FOREIGN KEY (`oozieaction_ptr_id`) REFERENCES `jobsub_oozieaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziejavaaction`
--

LOCK TABLES `jobsub_ooziejavaaction` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziejavaaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziejavaaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziemapreduceaction`
--

DROP TABLE IF EXISTS `jobsub_ooziemapreduceaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziemapreduceaction` (
  `oozieaction_ptr_id` int(11) NOT NULL,
  `files` varchar(512) NOT NULL,
  `archives` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  PRIMARY KEY (`oozieaction_ptr_id`),
  CONSTRAINT `jobsub_ooziemapreduc_oozieaction_ptr_id_92fe5d48_fk_jobsub_oo` FOREIGN KEY (`oozieaction_ptr_id`) REFERENCES `jobsub_oozieaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziemapreduceaction`
--

LOCK TABLES `jobsub_ooziemapreduceaction` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziemapreduceaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziemapreduceaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziestreamingaction`
--

DROP TABLE IF EXISTS `jobsub_ooziestreamingaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziestreamingaction` (
  `oozieaction_ptr_id` int(11) NOT NULL,
  `files` varchar(512) NOT NULL,
  `archives` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `mapper` varchar(512) NOT NULL,
  `reducer` varchar(512) NOT NULL,
  PRIMARY KEY (`oozieaction_ptr_id`),
  CONSTRAINT `jobsub_ooziestreamin_oozieaction_ptr_id_8007acc7_fk_jobsub_oo` FOREIGN KEY (`oozieaction_ptr_id`) REFERENCES `jobsub_oozieaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziestreamingaction`
--

LOCK TABLES `jobsub_ooziestreamingaction` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziestreamingaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziestreamingaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_bundle`
--

DROP TABLE IF EXISTS `oozie_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_bundle` (
  `job_ptr_id` int(11) NOT NULL,
  `kick_off_time` datetime(6) NOT NULL,
  PRIMARY KEY (`job_ptr_id`),
  CONSTRAINT `oozie_bundle_job_ptr_id_0c53aa88_fk_oozie_job_id` FOREIGN KEY (`job_ptr_id`) REFERENCES `oozie_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_bundle`
--

LOCK TABLES `oozie_bundle` WRITE;
/*!40000 ALTER TABLE `oozie_bundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_bundledcoordinator`
--

DROP TABLE IF EXISTS `oozie_bundledcoordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_bundledcoordinator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameters` longtext NOT NULL,
  `bundle_id` int(11) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_bundledcoordin_bundle_id_c0a51e15_fk_oozie_bun` (`bundle_id`),
  KEY `oozie_bundledcoordin_coordinator_id_deb5052a_fk_oozie_coo` (`coordinator_id`),
  CONSTRAINT `oozie_bundledcoordin_bundle_id_c0a51e15_fk_oozie_bun` FOREIGN KEY (`bundle_id`) REFERENCES `oozie_bundle` (`job_ptr_id`),
  CONSTRAINT `oozie_bundledcoordin_coordinator_id_deb5052a_fk_oozie_coo` FOREIGN KEY (`coordinator_id`) REFERENCES `oozie_coordinator` (`job_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_bundledcoordinator`
--

LOCK TABLES `oozie_bundledcoordinator` WRITE;
/*!40000 ALTER TABLE `oozie_bundledcoordinator` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_bundledcoordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_coordinator`
--

DROP TABLE IF EXISTS `oozie_coordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_coordinator` (
  `job_ptr_id` int(11) NOT NULL,
  `frequency_number` smallint(6) NOT NULL,
  `frequency_unit` varchar(20) NOT NULL,
  `timezone` varchar(24) NOT NULL,
  `start` datetime(6) NOT NULL,
  `end` datetime(6) NOT NULL,
  `timeout` smallint(6) DEFAULT NULL,
  `concurrency` smallint(5) unsigned DEFAULT NULL,
  `execution` varchar(10) DEFAULT NULL,
  `throttle` smallint(5) unsigned DEFAULT NULL,
  `job_properties` longtext NOT NULL,
  `coordinatorworkflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_ptr_id`),
  KEY `oozie_coordinator_coordinatorworkflow__b6161414_fk_oozie_wor` (`coordinatorworkflow_id`),
  CONSTRAINT `oozie_coordinator_coordinatorworkflow__b6161414_fk_oozie_wor` FOREIGN KEY (`coordinatorworkflow_id`) REFERENCES `oozie_workflow` (`job_ptr_id`),
  CONSTRAINT `oozie_coordinator_job_ptr_id_59cbcc0c_fk_oozie_job_id` FOREIGN KEY (`job_ptr_id`) REFERENCES `oozie_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_coordinator`
--

LOCK TABLES `oozie_coordinator` WRITE;
/*!40000 ALTER TABLE `oozie_coordinator` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_coordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_datainput`
--

DROP TABLE IF EXISTS `oozie_datainput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_datainput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dataset_id` (`dataset_id`),
  KEY `oozie_datainput_coordinator_id_d8d911b9_fk_oozie_coo` (`coordinator_id`),
  CONSTRAINT `oozie_datainput_coordinator_id_d8d911b9_fk_oozie_coo` FOREIGN KEY (`coordinator_id`) REFERENCES `oozie_coordinator` (`job_ptr_id`),
  CONSTRAINT `oozie_datainput_dataset_id_5fcb31a7_fk_oozie_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `oozie_dataset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_datainput`
--

LOCK TABLES `oozie_datainput` WRITE;
/*!40000 ALTER TABLE `oozie_datainput` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_datainput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_dataoutput`
--

DROP TABLE IF EXISTS `oozie_dataoutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_dataoutput` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dataset_id` (`dataset_id`),
  KEY `oozie_dataoutput_coordinator_id_12e73c29_fk_oozie_coo` (`coordinator_id`),
  CONSTRAINT `oozie_dataoutput_coordinator_id_12e73c29_fk_oozie_coo` FOREIGN KEY (`coordinator_id`) REFERENCES `oozie_coordinator` (`job_ptr_id`),
  CONSTRAINT `oozie_dataoutput_dataset_id_84e68919_fk_oozie_dataset_id` FOREIGN KEY (`dataset_id`) REFERENCES `oozie_dataset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_dataoutput`
--

LOCK TABLES `oozie_dataoutput` WRITE;
/*!40000 ALTER TABLE `oozie_dataoutput` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_dataoutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_dataset`
--

DROP TABLE IF EXISTS `oozie_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `start` datetime(6) NOT NULL,
  `frequency_number` smallint(6) NOT NULL,
  `frequency_unit` varchar(20) NOT NULL,
  `uri` varchar(1024) NOT NULL,
  `timezone` varchar(24) NOT NULL,
  `done_flag` varchar(64) NOT NULL,
  `instance_choice` varchar(10) NOT NULL,
  `advanced_start_instance` varchar(128) NOT NULL,
  `advanced_end_instance` varchar(128) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_dataset_coordinator_id_4d1eb286_fk_oozie_coo` (`coordinator_id`),
  CONSTRAINT `oozie_dataset_coordinator_id_4d1eb286_fk_oozie_coo` FOREIGN KEY (`coordinator_id`) REFERENCES `oozie_coordinator` (`job_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_dataset`
--

LOCK TABLES `oozie_dataset` WRITE;
/*!40000 ALTER TABLE `oozie_dataset` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_decision`
--

DROP TABLE IF EXISTS `oozie_decision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_decision` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_decision_node_ptr_id_1ee18de2_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_decision`
--

LOCK TABLES `oozie_decision` WRITE;
/*!40000 ALTER TABLE `oozie_decision` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_decision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_decisionend`
--

DROP TABLE IF EXISTS `oozie_decisionend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_decisionend` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_decisionend_node_ptr_id_ec0ad089_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_decisionend`
--

LOCK TABLES `oozie_decisionend` WRITE;
/*!40000 ALTER TABLE `oozie_decisionend` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_decisionend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_distcp`
--

DROP TABLE IF EXISTS `oozie_distcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_distcp` (
  `node_ptr_id` int(11) NOT NULL,
  `params` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_distcp_node_ptr_id_0f63bff7_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_distcp`
--

LOCK TABLES `oozie_distcp` WRITE;
/*!40000 ALTER TABLE `oozie_distcp` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_distcp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_email`
--

DROP TABLE IF EXISTS `oozie_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_email` (
  `node_ptr_id` int(11) NOT NULL,
  `to` longtext NOT NULL,
  `cc` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_email_node_ptr_id_b6164766_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_email`
--

LOCK TABLES `oozie_email` WRITE;
/*!40000 ALTER TABLE `oozie_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_end`
--

DROP TABLE IF EXISTS `oozie_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_end` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_end_node_ptr_id_9a6db5e6_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_end`
--

LOCK TABLES `oozie_end` WRITE;
/*!40000 ALTER TABLE `oozie_end` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_fork`
--

DROP TABLE IF EXISTS `oozie_fork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_fork` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_fork_node_ptr_id_286409b0_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_fork`
--

LOCK TABLES `oozie_fork` WRITE;
/*!40000 ALTER TABLE `oozie_fork` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_fork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_fs`
--

DROP TABLE IF EXISTS `oozie_fs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_fs` (
  `node_ptr_id` int(11) NOT NULL,
  `deletes` longtext NOT NULL,
  `mkdirs` longtext NOT NULL,
  `moves` longtext NOT NULL,
  `chmods` longtext NOT NULL,
  `touchzs` longtext NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_fs_node_ptr_id_324d62ec_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_fs`
--

LOCK TABLES `oozie_fs` WRITE;
/*!40000 ALTER TABLE `oozie_fs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_fs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_generic`
--

DROP TABLE IF EXISTS `oozie_generic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_generic` (
  `node_ptr_id` int(11) NOT NULL,
  `xml` longtext NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_generic_node_ptr_id_39a1a65a_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_generic`
--

LOCK TABLES `oozie_generic` WRITE;
/*!40000 ALTER TABLE `oozie_generic` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_generic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_history`
--

DROP TABLE IF EXISTS `oozie_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_date` datetime(6) NOT NULL,
  `oozie_job_id` varchar(128) NOT NULL,
  `properties` longtext NOT NULL,
  `submitter_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_history_submission_date_85ff5210` (`submission_date`),
  KEY `oozie_history_submitter_id_b55e2183_fk_auth_user_id` (`submitter_id`),
  KEY `oozie_history_job_id_fbea900b_fk_oozie_job_id` (`job_id`),
  CONSTRAINT `oozie_history_job_id_fbea900b_fk_oozie_job_id` FOREIGN KEY (`job_id`) REFERENCES `oozie_job` (`id`),
  CONSTRAINT `oozie_history_submitter_id_b55e2183_fk_auth_user_id` FOREIGN KEY (`submitter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_history`
--

LOCK TABLES `oozie_history` WRITE;
/*!40000 ALTER TABLE `oozie_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_hive`
--

DROP TABLE IF EXISTS `oozie_hive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_hive` (
  `node_ptr_id` int(11) NOT NULL,
  `script_path` varchar(256) NOT NULL,
  `params` longtext NOT NULL,
  `files` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_hive_node_ptr_id_747c09c7_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_hive`
--

LOCK TABLES `oozie_hive` WRITE;
/*!40000 ALTER TABLE `oozie_hive` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_hive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_java`
--

DROP TABLE IF EXISTS `oozie_java`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_java` (
  `node_ptr_id` int(11) NOT NULL,
  `files` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  `main_class` varchar(256) NOT NULL,
  `args` longtext NOT NULL,
  `java_opts` varchar(256) NOT NULL,
  `job_properties` longtext NOT NULL,
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `capture_output` tinyint(1) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_java_node_ptr_id_41ceeff8_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_java`
--

LOCK TABLES `oozie_java` WRITE;
/*!40000 ALTER TABLE `oozie_java` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_java` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_job`
--

DROP TABLE IF EXISTS `oozie_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `last_modified` datetime(6) NOT NULL,
  `schema_version` varchar(128) NOT NULL,
  `deployment_dir` varchar(1024) NOT NULL,
  `is_shared` tinyint(1) NOT NULL,
  `parameters` longtext NOT NULL,
  `is_trashed` tinyint(1) NOT NULL,
  `data` longtext NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_job_last_modified_75350e87` (`last_modified`),
  KEY `oozie_job_is_shared_353b5458` (`is_shared`),
  KEY `oozie_job_is_trashed_da42d7e5` (`is_trashed`),
  KEY `oozie_job_owner_id_c255618e_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `oozie_job_owner_id_c255618e_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_job`
--

LOCK TABLES `oozie_job` WRITE;
/*!40000 ALTER TABLE `oozie_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_join`
--

DROP TABLE IF EXISTS `oozie_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_join` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_join_node_ptr_id_17901551_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_join`
--

LOCK TABLES `oozie_join` WRITE;
/*!40000 ALTER TABLE `oozie_join` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_kill`
--

DROP TABLE IF EXISTS `oozie_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_kill` (
  `node_ptr_id` int(11) NOT NULL,
  `message` varchar(256) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_kill_node_ptr_id_6e3b4c7f_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_kill`
--

LOCK TABLES `oozie_kill` WRITE;
/*!40000 ALTER TABLE `oozie_kill` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_link`
--

DROP TABLE IF EXISTS `oozie_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `child_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_link_child_id_c3e8341e_fk_oozie_node_id` (`child_id`),
  KEY `oozie_link_parent_id_5b2a2286_fk_oozie_node_id` (`parent_id`),
  CONSTRAINT `oozie_link_child_id_c3e8341e_fk_oozie_node_id` FOREIGN KEY (`child_id`) REFERENCES `oozie_node` (`id`),
  CONSTRAINT `oozie_link_parent_id_5b2a2286_fk_oozie_node_id` FOREIGN KEY (`parent_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_link`
--

LOCK TABLES `oozie_link` WRITE;
/*!40000 ALTER TABLE `oozie_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_mapreduce`
--

DROP TABLE IF EXISTS `oozie_mapreduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_mapreduce` (
  `node_ptr_id` int(11) NOT NULL,
  `files` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_mapreduce_node_ptr_id_5ef2cd6d_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_mapreduce`
--

LOCK TABLES `oozie_mapreduce` WRITE;
/*!40000 ALTER TABLE `oozie_mapreduce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_mapreduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_node`
--

DROP TABLE IF EXISTS `oozie_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `node_type` varchar(64) NOT NULL,
  `data` longtext NOT NULL,
  `workflow_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_node_workflow_id_a6bd1a69_fk_oozie_workflow_job_ptr_id` (`workflow_id`),
  CONSTRAINT `oozie_node_workflow_id_a6bd1a69_fk_oozie_workflow_job_ptr_id` FOREIGN KEY (`workflow_id`) REFERENCES `oozie_workflow` (`job_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_node`
--

LOCK TABLES `oozie_node` WRITE;
/*!40000 ALTER TABLE `oozie_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_pig`
--

DROP TABLE IF EXISTS `oozie_pig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_pig` (
  `node_ptr_id` int(11) NOT NULL,
  `script_path` varchar(256) NOT NULL,
  `params` longtext NOT NULL,
  `files` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_pig_node_ptr_id_251c17e0_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_pig`
--

LOCK TABLES `oozie_pig` WRITE;
/*!40000 ALTER TABLE `oozie_pig` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_pig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_shell`
--

DROP TABLE IF EXISTS `oozie_shell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_shell` (
  `node_ptr_id` int(11) NOT NULL,
  `command` varchar(256) NOT NULL,
  `params` longtext NOT NULL,
  `files` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `capture_output` tinyint(1) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_shell_node_ptr_id_4b2d0551_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_shell`
--

LOCK TABLES `oozie_shell` WRITE;
/*!40000 ALTER TABLE `oozie_shell` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_shell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_sqoop`
--

DROP TABLE IF EXISTS `oozie_sqoop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_sqoop` (
  `node_ptr_id` int(11) NOT NULL,
  `script_path` longtext NOT NULL,
  `params` longtext NOT NULL,
  `files` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_sqoop_node_ptr_id_bc17434d_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_sqoop`
--

LOCK TABLES `oozie_sqoop` WRITE;
/*!40000 ALTER TABLE `oozie_sqoop` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_sqoop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_ssh`
--

DROP TABLE IF EXISTS `oozie_ssh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_ssh` (
  `node_ptr_id` int(11) NOT NULL,
  `user` varchar(64) NOT NULL,
  `host` varchar(256) NOT NULL,
  `command` varchar(256) NOT NULL,
  `params` longtext NOT NULL,
  `capture_output` tinyint(1) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_ssh_node_ptr_id_f8399593_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_ssh`
--

LOCK TABLES `oozie_ssh` WRITE;
/*!40000 ALTER TABLE `oozie_ssh` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_ssh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_start`
--

DROP TABLE IF EXISTS `oozie_start`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_start` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_start_node_ptr_id_845ed7e5_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_start`
--

LOCK TABLES `oozie_start` WRITE;
/*!40000 ALTER TABLE `oozie_start` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_start` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_streaming`
--

DROP TABLE IF EXISTS `oozie_streaming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_streaming` (
  `node_ptr_id` int(11) NOT NULL,
  `files` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `mapper` varchar(512) NOT NULL,
  `reducer` varchar(512) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  CONSTRAINT `oozie_streaming_node_ptr_id_33986c0c_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_streaming`
--

LOCK TABLES `oozie_streaming` WRITE;
/*!40000 ALTER TABLE `oozie_streaming` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_streaming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_subworkflow`
--

DROP TABLE IF EXISTS `oozie_subworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_subworkflow` (
  `node_ptr_id` int(11) NOT NULL,
  `propagate_configuration` tinyint(1) NOT NULL,
  `job_properties` longtext NOT NULL,
  `sub_workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`node_ptr_id`),
  KEY `oozie_subworkflow_sub_workflow_id_4e2908b9_fk_oozie_wor` (`sub_workflow_id`),
  CONSTRAINT `oozie_subworkflow_node_ptr_id_6d9b076e_fk_oozie_node_id` FOREIGN KEY (`node_ptr_id`) REFERENCES `oozie_node` (`id`),
  CONSTRAINT `oozie_subworkflow_sub_workflow_id_4e2908b9_fk_oozie_wor` FOREIGN KEY (`sub_workflow_id`) REFERENCES `oozie_workflow` (`job_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_subworkflow`
--

LOCK TABLES `oozie_subworkflow` WRITE;
/*!40000 ALTER TABLE `oozie_subworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_subworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_workflow`
--

DROP TABLE IF EXISTS `oozie_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_workflow` (
  `job_ptr_id` int(11) NOT NULL,
  `is_single` tinyint(1) NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `managed` tinyint(1) NOT NULL,
  `end_id` int(11) DEFAULT NULL,
  `start_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_ptr_id`),
  KEY `oozie_workflow_end_id_2f6d0f36_fk_oozie_end_node_ptr_id` (`end_id`),
  KEY `oozie_workflow_start_id_677c5e08_fk_oozie_start_node_ptr_id` (`start_id`),
  CONSTRAINT `oozie_workflow_end_id_2f6d0f36_fk_oozie_end_node_ptr_id` FOREIGN KEY (`end_id`) REFERENCES `oozie_end` (`node_ptr_id`),
  CONSTRAINT `oozie_workflow_job_ptr_id_8f44b9da_fk_oozie_job_id` FOREIGN KEY (`job_ptr_id`) REFERENCES `oozie_job` (`id`),
  CONSTRAINT `oozie_workflow_start_id_677c5e08_fk_oozie_start_node_ptr_id` FOREIGN KEY (`start_id`) REFERENCES `oozie_start` (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_workflow`
--

LOCK TABLES `oozie_workflow` WRITE;
/*!40000 ALTER TABLE `oozie_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pig_document`
--

DROP TABLE IF EXISTS `pig_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pig_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_design` tinyint(1) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pig_document_is_design_f1e0139b` (`is_design`),
  KEY `pig_document_owner_id_27d3660e_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `pig_document_owner_id_27d3660e_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pig_document`
--

LOCK TABLES `pig_document` WRITE;
/*!40000 ALTER TABLE `pig_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `pig_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pig_pigscript`
--

DROP TABLE IF EXISTS `pig_pigscript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pig_pigscript` (
  `document_ptr_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`document_ptr_id`),
  CONSTRAINT `pig_pigscript_document_ptr_id_8cbae244_fk_pig_document_id` FOREIGN KEY (`document_ptr_id`) REFERENCES `pig_document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pig_pigscript`
--

LOCK TABLES `pig_pigscript` WRITE;
/*!40000 ALTER TABLE `pig_pigscript` DISABLE KEYS */;
/*!40000 ALTER TABLE `pig_pigscript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_collection`
--

DROP TABLE IF EXISTS `search_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL,
  `name` varchar(40) NOT NULL,
  `label` varchar(100) NOT NULL,
  `is_core_only` tinyint(1) NOT NULL,
  `cores` longtext NOT NULL,
  `properties` longtext NOT NULL,
  `facets_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `result_id` int(11) NOT NULL,
  `sorting_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_collection_facets_id_38fca094_fk_search_facet_id` (`facets_id`),
  KEY `search_collection_owner_id_e32f7d25_fk_auth_user_id` (`owner_id`),
  KEY `search_collection_result_id_d20b13e1_fk_search_result_id` (`result_id`),
  KEY `search_collection_sorting_id_9d8d07cf_fk_search_sorting_id` (`sorting_id`),
  CONSTRAINT `search_collection_facets_id_38fca094_fk_search_facet_id` FOREIGN KEY (`facets_id`) REFERENCES `search_facet` (`id`),
  CONSTRAINT `search_collection_owner_id_e32f7d25_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `search_collection_result_id_d20b13e1_fk_search_result_id` FOREIGN KEY (`result_id`) REFERENCES `search_result` (`id`),
  CONSTRAINT `search_collection_sorting_id_9d8d07cf_fk_search_sorting_id` FOREIGN KEY (`sorting_id`) REFERENCES `search_sorting` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_collection`
--

LOCK TABLES `search_collection` WRITE;
/*!40000 ALTER TABLE `search_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_facet`
--

DROP TABLE IF EXISTS `search_facet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_facet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_facet`
--

LOCK TABLES `search_facet` WRITE;
/*!40000 ALTER TABLE `search_facet` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_facet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_result`
--

DROP TABLE IF EXISTS `search_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_result`
--

LOCK TABLES `search_result` WRITE;
/*!40000 ALTER TABLE `search_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_sorting`
--

DROP TABLE IF EXISTS `search_sorting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_sorting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_sorting`
--

LOCK TABLES `search_sorting` WRITE;
/*!40000 ALTER TABLE `search_sorting` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_sorting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_grouppermission`
--

DROP TABLE IF EXISTS `useradmin_grouppermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_grouppermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `hue_permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `useradmin_grouppermission_group_id_da9c1a34_fk_auth_group_id` (`group_id`),
  KEY `useradmin_grouppermi_hue_permission_id_ece6426f_fk_useradmin` (`hue_permission_id`),
  CONSTRAINT `useradmin_grouppermi_hue_permission_id_ece6426f_fk_useradmin` FOREIGN KEY (`hue_permission_id`) REFERENCES `useradmin_huepermission` (`id`),
  CONSTRAINT `useradmin_grouppermission_group_id_da9c1a34_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_grouppermission`
--

LOCK TABLES `useradmin_grouppermission` WRITE;
/*!40000 ALTER TABLE `useradmin_grouppermission` DISABLE KEYS */;
INSERT INTO `useradmin_grouppermission` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,7),(5,1,8),(6,1,9),(7,1,10),(8,1,11),(9,1,12),(10,1,14),(11,1,15),(12,1,16),(13,1,18),(14,1,19),(15,1,20),(16,1,21),(17,1,23),(18,1,24),(19,1,25),(20,1,27),(21,1,29),(22,1,30),(23,1,31),(24,1,32),(25,1,33),(26,1,34),(27,1,35);
/*!40000 ALTER TABLE `useradmin_grouppermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_huepermission`
--

DROP TABLE IF EXISTS `useradmin_huepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_huepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(30) NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_huepermission`
--

LOCK TABLES `useradmin_huepermission` WRITE;
/*!40000 ALTER TABLE `useradmin_huepermission` DISABLE KEYS */;
INSERT INTO `useradmin_huepermission` VALUES (1,'about','access','Launch this application'),(2,'beeswax','access','Launch this application'),(3,'filebrowser','adls_access','Access to ADLS from filebrowser and filepicker.'),(4,'filebrowser','access','Launch this application'),(5,'filebrowser','s3_access','Access to S3 from filebrowser and filepicker.'),(6,'hbase','write','Allow writing in the HBase app.'),(7,'hbase','access','Launch this application'),(8,'help','access','Launch this application'),(9,'hive','access','Launch this application'),(10,'impala','access','Launch this application'),(11,'jobbrowser','access','Launch this application'),(12,'jobsub','access','Launch this application'),(13,'metastore','write','Allow DDL operations. Need the app access too.'),(14,'metastore','access','Launch this application'),(15,'oozie','dashboard_jobs_access','Oozie Dashboard read-only user for all jobs'),(16,'oozie','access','Launch this application'),(17,'oozie','disable_editor_access','Disable Oozie Editor access'),(18,'pig','access','Launch this application'),(19,'proxy','access','Launch this application'),(20,'rdbms','access','Launch this application'),(21,'search','access','Launch this application'),(22,'security','impersonate','Let a user impersonate another user when listing objects like files or tables.'),(23,'security','access','Launch this application'),(24,'spark','access','Launch this application'),(25,'sqoop','access','Launch this application'),(26,'useradmin','superuser','Give superuser access to members of group'),(27,'useradmin','access_view:useradmin:edit_user','Access to profile page on User Admin'),(28,'useradmin','access','Launch this application'),(29,'zookeeper','access','Launch this application'),(30,'indexer','access','Launch this application'),(31,'metadata','write','Allow edition of metadata like tags.'),(32,'metadata','access','Launch this application'),(33,'notebook','access','Launch this application'),(34,'dashboard','access','Launch this application'),(35,'kafka','access','Launch this application');
/*!40000 ALTER TABLE `useradmin_huepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_ldapgroup`
--

DROP TABLE IF EXISTS `useradmin_ldapgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_ldapgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `useradmin_ldapgroup_group_id_162e4d49_fk_auth_group_id` (`group_id`),
  CONSTRAINT `useradmin_ldapgroup_group_id_162e4d49_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_ldapgroup`
--

LOCK TABLES `useradmin_ldapgroup` WRITE;
/*!40000 ALTER TABLE `useradmin_ldapgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `useradmin_ldapgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_userprofile`
--

DROP TABLE IF EXISTS `useradmin_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_directory` varchar(1024) DEFAULT NULL,
  `creation_method` varchar(64) NOT NULL,
  `first_login` tinyint(1) NOT NULL,
  `last_activity` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `useradmin_userprofile_last_activity_c0e0b56b` (`last_activity`),
  CONSTRAINT `useradmin_userprofile_user_id_6333d17b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_userprofile`
--

LOCK TABLES `useradmin_userprofile` WRITE;
/*!40000 ALTER TABLE `useradmin_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `useradmin_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-10 21:45:01