-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mymo_server
-- ------------------------------------------------------
-- Server version	5.5.31-0+wheezy1

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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent` (
  `agent_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `is_active` enum('0','1','2','10') NOT NULL DEFAULT '1' COMMENT '0 = inactive - 1 = active - 2 = under approval |  10 = deleted',
  `user_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `conn_type` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `link` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `db` varchar(255) DEFAULT NULL,
  `delimiter` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `idx_left_right` (`left_id`,`right_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,'Test',17,NULL,1,2,'1',NULL,'en','1','bills.csv',NULL,NULL,NULL,NULL,NULL,NULL),(2,'University ',19,NULL,3,4,'1',NULL,'en','1','http://94.127.208.130/mymo/site_mymoserver/public_html/upload/files/bills.csv',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_details`
--

DROP TABLE IF EXISTS `agent_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_details` (
  `agent_id` int(11) NOT NULL,
  `mymo_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bill_number` decimal(30,0) NOT NULL,
  `date` datetime NOT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`agent_id`,`mymo_id`,`bill_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_details`
--

LOCK TABLES `agent_details` WRITE;
/*!40000 ALTER TABLE `agent_details` DISABLE KEYS */;
INSERT INTO `agent_details` VALUES (2,4007,15,125587,'1970-01-02 12:53:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,4008,16,125588,'1970-01-02 12:53:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,4009,17,125589,'1970-01-02 12:53:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,4010,18,125590,'1970-01-02 12:53:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,4011,19,125591,'1970-01-02 12:53:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,40016,34,55,'1970-01-01 02:00:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,40016,53,66,'1970-01-01 02:01:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,40025,76,44,'1970-01-01 02:00:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,40025,44,77,'1970-01-01 02:01:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(2,40025,33,88,'1970-01-01 02:01:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `agent_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_field`
--

DROP TABLE IF EXISTS `agent_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval',
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_field`
--

LOCK TABLES `agent_field` WRITE;
/*!40000 ALTER TABLE `agent_field` DISABLE KEYS */;
INSERT INTO `agent_field` VALUES (1,1,'mymo_id','1',2,1,'en',NULL,0),(2,1,'amount','1',4,3,'en',NULL,0),(3,1,'num','1',6,5,'en',NULL,0),(4,2,'mymo_id','1',8,7,'en',NULL,0),(5,2,'amount','1',10,9,'en',NULL,0),(6,2,'num','1',12,11,'en',NULL,0);
/*!40000 ALTER TABLE `agent_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `briefname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `regioncode` varchar(255) NOT NULL,
  `registrationno` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `telex` varchar(255) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_jop_title` varchar(255) NOT NULL,
  `auth_name` varchar(255) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `officer_id` varchar(255) NOT NULL,
  `officer_name` varchar(255) NOT NULL,
  `mail_statement` varchar(255) NOT NULL,
  `periodicity` varchar(255) NOT NULL,
  `correspondent_bank` enum('0','1') NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval',
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (2,'CB','192.168.15.141','CB','','','','','','','','','','','','','','','','','1',NULL,3,4,'1'),(3,'PSF','192.168.15.102','PSF','','','','','','','','','','','','','','','','','0',NULL,1,2,'1');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `country` int(3) NOT NULL,
  `oid_document_nbr` varchar(40) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_by` varchar(8) NOT NULL,
  `date_created` date NOT NULL,
  `updated_by` varchar(8) DEFAULT NULL,
  `date_updated` date DEFAULT NULL,
  `approved_by` varchar(8) DEFAULT NULL,
  `date_approved` date DEFAULT NULL,
  `reversed_by` varchar(8) DEFAULT NULL,
  `date_reversed` date DEFAULT NULL,
  `cif_mother_name_en` varchar(25) NOT NULL,
  `cif_mother_name_ar` varchar(25) DEFAULT NULL,
  `cif_first_name_eng` varchar(30) NOT NULL,
  `cif_sec_name_eng` varchar(30) NOT NULL,
  `cif_third_name_eng` varchar(30) NOT NULL,
  `cif_last_name_eng` varchar(30) NOT NULL,
  `cif_first_name_ar` varchar(30) NOT NULL,
  `cif_sec_name_ar` varchar(30) NOT NULL,
  `cif_third_name_ar` varchar(30) NOT NULL,
  `cif_last_name_ar` varchar(30) NOT NULL,
  `cif_place_of_birth` varchar(20) NOT NULL,
  `cif_register_no` int(8) NOT NULL,
  `cif_region_code` int(6) NOT NULL,
  `cif_nation_code` bigint(20) NOT NULL,
  `cif_type` int(4) NOT NULL,
  `long_description` varchar(100) NOT NULL,
  `is_active` enum('0','1','2','10') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval |  10 = deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_file`
--

DROP TABLE IF EXISTS `blacklist_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_file` (
  `date_of_birth` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `oid_document_nbr` varchar(50) NOT NULL,
  `cif_mother_name_en` varchar(50) NOT NULL,
  `cif_mother_name_ar` varchar(50) NOT NULL,
  `cif_first_name_eng` varchar(50) NOT NULL,
  `cif_sec_name_eng` varchar(50) NOT NULL,
  `cif_third_name_eng` varchar(50) NOT NULL,
  `cif_last_name_eng` varchar(50) NOT NULL,
  `cif_first_name_ar` varchar(50) NOT NULL,
  `cif_sec_name_ar` varchar(50) NOT NULL,
  `cif_third_name_ar` varchar(50) NOT NULL,
  `cif_last_name_ar` varchar(50) NOT NULL,
  `cif_place_of_birth` varchar(50) NOT NULL,
  `cif_register_no` varchar(50) NOT NULL,
  `cif_region_code` varchar(50) NOT NULL,
  `cif_nation_code` varchar(50) NOT NULL,
  `long_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_file`
--

LOCK TABLES `blacklist_file` WRITE;
/*!40000 ALTER TABLE `blacklist_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_info`
--

DROP TABLE IF EXISTS `blacklist_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_info` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `oid_issuing_country` int(3) NOT NULL,
  `date_issued` date NOT NULL,
  `source_blaclisting` varchar(10) NOT NULL,
  `code_source` int(4) NOT NULL,
  `source_reference` varchar(20) NOT NULL,
  `source_date` date NOT NULL,
  `type` varchar(10) NOT NULL,
  `revision_date` date NOT NULL,
  `reason` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_info`
--

LOCK TABLES `blacklist_info` WRITE;
/*!40000 ALTER TABLE `blacklist_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_source`
--

DROP TABLE IF EXISTS `blacklist_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_source` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `long_desc_eng` varchar(40) NOT NULL,
  `long_desc_arab` varchar(40) NOT NULL,
  `is_active` enum('0','1','2','10') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval |  10 = deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_source`
--

LOCK TABLES `blacklist_source` WRITE;
/*!40000 ALTER TABLE `blacklist_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist_type`
--

DROP TABLE IF EXISTS `blacklist_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist_type` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `long_name_en` varchar(40) NOT NULL,
  `long_name_ar` varchar(40) NOT NULL,
  `revision_basis` varchar(10) NOT NULL,
  `revision_period` int(6) NOT NULL,
  `revision_type` varchar(20) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `date_created` date NOT NULL,
  `is_active` enum('0','1','2','10') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval |  10 = deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist_type`
--

LOCK TABLES `blacklist_type` WRITE;
/*!40000 ALTER TABLE `blacklist_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `number` bigint(14) NOT NULL,
  `serialnumber` bigint(20) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (100,16,2147483647,25252445254,'1','2014-03-17 20:37:57'),(101,16,7527523577,5252525,'1','2014-03-17 20:37:57'),(102,16,345435453,45245245,'1','2014-03-17 20:37:57'),(103,16,4324324324,45254245,'1','2014-03-17 20:37:57'),(104,16,3534543543,5430000000000,'1','2014-03-17 20:37:57'),(105,16,2343246226,8668,'1','2014-03-17 20:37:57'),(106,16,6464646765,356,'1','2014-03-17 20:37:57'),(107,16,6787684654,5365356,'1','2014-03-17 20:37:57'),(108,16,879879879,56,'1','2014-03-17 20:37:57'),(109,16,45645654,653,'1','2014-03-17 20:37:57'),(110,16,87700000,356,'1','2014-03-17 20:37:57'),(111,16,57800000000,356,'1','2014-03-17 20:37:57'),(112,16,342332,35,'1','2014-03-17 20:37:57'),(113,16,2342350000000,66,'1','2014-03-17 20:37:57'),(114,16,555,89875,'1','2014-03-19 10:25:26'),(115,16,99887,5252,'1','2014-03-19 10:25:26'),(116,16,255252,8888,'1','2014-03-19 10:25:26'),(117,21,5728227,78787878,'1','2014-10-27 14:54:14'),(118,21,54455365,4532873782,'1','2014-10-27 14:54:14'),(119,21,452543000000000,58756787,'1','2014-10-27 14:54:14'),(120,22,5552002,78787878,'1','2014-10-30 14:57:03'),(121,22,4747,525,'1','2014-10-30 14:57:03'),(122,22,455747,58756787,'1','2014-10-30 14:57:03'),(123,22,474447,140140,'1','2014-10-30 14:57:03'),(124,22,4551747,58756787,'1','2014-10-30 14:57:03'),(125,22,42424,14,'1','2014-10-30 14:57:03'),(126,22,47463657,141401,'1','2014-10-30 14:57:03'),(127,22,2520,410,'1','2014-10-30 14:57:03'),(128,22,5425425,14041,'1','2014-10-30 14:57:03'),(129,22,45240,14041,'1','2014-10-30 14:57:03'),(130,22,410425,14554855,'1','2014-10-30 14:57:03'),(131,23,555200211,787878878,'1','2014-10-30 15:16:59'),(132,23,47472,88885825,'1','2014-10-30 15:16:59'),(133,23,4557473,587567887,'1','2014-10-30 15:16:59'),(134,23,4744474,1408140,'1','2014-10-30 15:16:59'),(135,23,45517475,587565787,'1','2014-10-30 15:16:59'),(136,23,424246,85858514,'1','2014-10-30 15:16:59'),(137,23,474636577,858141401,'1','2014-10-30 15:16:59'),(138,23,25270,85854710,'1','2014-10-30 15:16:59'),(139,23,54254255,140841,'1','2014-10-30 15:16:59'),(140,23,4524870,147041,'1','2014-10-30 15:16:59'),(141,23,41048725,1455478855,'1','2014-10-30 15:16:59'),(143,21,111,11,'1','2014-10-30 23:33:21'),(144,21,222,22,'1','2014-10-30 23:33:21'),(145,21,333,33,'1','2014-10-30 23:33:21'),(147,21,45714272,23443,'1','2014-10-30 23:37:59'),(148,21,38952653,5454,'1','2014-10-30 23:37:59'),(149,21,45713818,454,'1','2014-10-30 23:37:59'),(150,21,38952108,545,'1','2014-10-30 23:37:59'),(151,21,59173,45654645,'1','2014-10-30 23:37:59'),(152,21,38946654,5454,'1','2014-10-30 23:37:59'),(153,21,54628,4545,'1','2014-10-30 23:37:59'),(154,21,34401109,4545545,'1','2014-10-30 23:37:59'),(155,21,9174,45454,'1','2014-10-30 23:37:59'),(156,21,56565,34344544,'1','2014-10-30 23:37:59'),(157,21,7590,1584,'1','2014-10-30 23:37:59'),(158,21,8490,2563,'1','2014-10-30 23:37:59'),(159,21,3443,4147,'1','2014-10-30 23:37:59'),(160,21,4343,4147,'1','2014-10-30 23:37:59');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `price` float NOT NULL,
  `soundfile_en` varchar(255) NOT NULL,
  `soundfile_ar` varchar(255) NOT NULL,
  `prompt` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '0 = inactive - 1 = active - 2 = under approval',
  `user_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `idx_left_right` (`left_id`,`right_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (16,4,5,7,'sounds/ar/5jd','sounds/ar/5jd',2,1,2,'1',NULL,'en'),(18,4,1,1.5,'sounds/ar/1jd','sounds/ar/1jd',1,3,4,'1',NULL,'en'),(19,4,10,12,'sounds/ar/10jd','sounds/ar/10jd',3,5,6,'1',NULL,'en'),(20,6,1,1.5,'sounds/ar/1jd','sounds/ar/1jd',4,7,8,'1',NULL,'en'),(21,5,1,1.5,'sounds/currency/dinar','sounds/currency/dinar',1,9,10,'0',NULL,'en'),(22,8,5,7.5,'sounds/20130116130856','sounds/20130116130856',5,11,12,'0',NULL,'en'),(23,9,1,1.5,'sounds/mall-card-1-en','sounds/mall-card-1-ar',6,13,14,'0',NULL,'en');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` varchar(10) DEFAULT NULL,
  `dst_mymoid` int(10) DEFAULT NULL,
  `src_mymoid` int(10) DEFAULT NULL,
  `issuer_bank` int(11) DEFAULT NULL,
  `receiver_bank` int(11) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `answer` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `src` varchar(50) DEFAULT NULL,
  `clid` int(11) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `billsec` int(10) DEFAULT NULL,
  `disposition` varchar(255) DEFAULT NULL,
  `status` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0' COMMENT '1 = Success Payment | 2 = waiting call back | 0 = Error | 3 = Calling Now | 4 = Request | 5 = Error from CB | 6 = Error from receiver bank | 7 = Froud',
  `trx_method` int(11) DEFAULT NULL,
  `trx_type` int(11) DEFAULT NULL,
  `extra_data` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `currency` int(3) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr`
--

LOCK TABLES `cdr` WRITE;
/*!40000 ALTER TABLE `cdr` DISABLE KEYS */;
INSERT INTO `cdr` VALUES (151,'0',4008,4006,3,3,'15','2017-11-10 06:45:09','2017-11-10 06:45:09','2017-11-10 06:45:09','0786945106',0,'0',0,NULL,'1',1,1,'',1,400,1),(152,'0',4006,4004,3,3,'45','2017-11-10 06:52:16','2017-11-10 06:52:16','2017-11-10 06:52:16','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(153,'0',4006,4004,3,3,'17','2017-11-10 06:54:03','2017-11-10 06:54:03','2017-11-10 06:54:03','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(154,'0',4006,4004,3,3,'75','2017-11-10 08:02:39','2017-11-10 08:02:39','2017-11-10 08:02:39','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(155,'0',4006,4009,3,3,'25','2017-11-10 08:57:50','2017-11-10 08:57:50','2017-11-10 08:57:50','0799010693',0,'0',0,NULL,'1',1,1,'',1,400,1),(156,'0',4009,4004,3,3,'35','2017-11-11 08:56:00','2017-11-11 08:56:00','2017-11-11 08:56:00','0799113799',0,'0',0,NULL,'2',1,1,'',1,400,1),(157,'74',4006,4004,3,3,'18','2017-11-11 02:01:47','2017-11-11 02:01:47','2017-11-11 02:03:02','0799113799',0,'DAHDI/i4/0799113799-4',74,'ANSWERED','1',1,1,'',1,400,1),(158,'79',NULL,NULL,NULL,NULL,NULL,'2017-11-11 02:01:47','2017-11-11 02:01:47','2017-11-11 02:03:06','0799113799',799113799,'DAHDI/i4/0799113799-4',79,'ANSWERED','0',NULL,NULL,NULL,0,NULL,NULL),(159,'0',4006,4004,3,3,'18','2017-11-11 09:27:25','2017-11-11 09:27:25','2017-11-11 09:27:25','0799113799',0,'0',0,NULL,'0',1,1,'',1,400,1),(160,'0',4006,4004,3,3,'45','2017-11-11 09:30:06','2017-11-11 09:30:06','2017-11-11 09:30:06','0799113799',0,'0',0,NULL,'3',1,1,'',1,1,1),(161,'0',4006,4004,3,3,'18','2017-11-11 09:39:05','2017-11-11 09:39:05','2017-11-11 09:39:05','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(162,'0',4006,4004,3,3,'14','2017-11-11 09:41:47','2017-11-11 09:41:47','2017-11-11 09:41:47','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(163,'0',4006,4004,3,3,'18','2017-11-11 09:46:17','2017-11-11 09:46:17','2017-11-11 09:46:17','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(164,'0',4006,4004,3,3,'17','2017-11-11 09:51:35','2017-11-11 09:51:35','2017-11-11 09:51:35','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(165,'0',4006,4004,3,3,'12','2017-11-11 10:07:28','2017-11-11 10:07:28','2017-11-11 10:07:28','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(166,'0',4006,4004,3,3,'34','2017-11-11 12:13:15','2017-11-11 12:13:15','2017-11-11 12:13:15','0799113799',0,'0',0,NULL,'1',1,1,'',1,400,1),(167,'0',4006,4006,3,3,'19','2017-11-11 12:31:31','2017-11-11 12:31:31','2017-11-11 12:31:31','0786945106',0,'0',0,NULL,'1',1,1,'',1,400,1),(168,'0',4008,4006,3,3,'72','2017-11-11 12:31:52','2017-11-11 12:31:52','2017-11-11 12:31:52','0786945106',0,'0',0,NULL,'2',1,1,'',1,400,1),(169,'0',4006,4004,3,3,'25','2017-11-11 01:17:24','2017-11-11 01:17:24','2017-11-11 01:17:24','0799113799',0,'0',0,NULL,'3',1,1,'',1,1,1),(170,'0',40012,4006,3,3,'65','2017-11-11 01:17:40','2017-11-11 01:17:40','2017-11-11 01:17:40','0786945106',0,'0',0,NULL,'2',1,1,'',1,1,1),(171,'0',NULL,NULL,NULL,NULL,NULL,'2017-11-11 06:18:43','2017-11-11 06:18:43','2017-11-11 06:18:43','0799113799',799113799,'DAHDI/i4/0799113799-5',0,'ANSWERED','0',NULL,NULL,NULL,0,NULL,NULL),(172,'0',40012,4009,3,3,'35','2017-11-11 03:41:16','2017-11-11 03:41:16','2017-11-11 03:41:16','0799010693',0,'0',0,NULL,'1',1,1,'',1,400,1),(173,'0',40012,4009,3,3,'25','2017-11-11 03:50:27','2017-11-11 03:50:27','2017-11-11 03:50:27','0799010693',0,'0',0,NULL,'1',1,1,'',1,400,1),(174,'73',NULL,NULL,NULL,NULL,NULL,'2017-11-11 09:09:18','2017-11-11 09:09:18','2017-11-11 09:10:31','0799113799',799113799,'DAHDI/i4/0799113799-6',73,'ANSWERED','0',NULL,NULL,NULL,0,NULL,NULL),(175,'0',4008,4006,3,3,'74','2017-11-11 04:13:05','2017-11-11 04:13:05','2017-11-11 04:13:05','0786945106',0,'0',0,NULL,'1',1,1,'',1,400,1),(176,'0',4009,4004,3,3,'18','2017-11-11 04:15:22','2017-11-11 04:15:22','2017-11-11 04:15:22','0799113799',0,'0',0,NULL,'2',1,1,'',1,1,1),(177,'0',4004,4008,3,3,'28','2017-11-11 04:16:11','2017-11-11 04:16:11','2017-11-11 04:16:11','0785199013',0,'0',0,NULL,'3',1,1,'',1,400,1),(178,'0',4006,4004,3,3,'89','2017-11-11 04:22:48','2017-11-11 04:22:48','2017-11-11 04:22:48','0799113799',0,'0',0,NULL,'2',1,1,'extension=1',1,1,1),(179,'0',4006,4004,3,3,'42','2017-11-12 12:53:24','2017-11-12 12:53:24','2017-11-12 12:53:24','0799113799',0,'0',0,NULL,'1',1,1,'',1,1,1),(180,'0',4009,40012,3,3,'19','2017-11-12 05:17:05','2017-11-12 05:17:05','2017-11-12 05:17:05','0796388863',0,'0',0,NULL,'3',1,1,'',1,1,1),(181,'78',4006,4004,3,3,'29','2017-11-12 13:08:47','2017-11-12 13:08:47','2017-11-12 13:10:06','0799113799',0,'DAHDI/i4/0799113799-7',78,'ANSWERED','1',1,1,'',1,400,1),(182,'84',NULL,NULL,NULL,NULL,NULL,'2017-11-12 13:08:47','2017-11-12 13:08:47','2017-11-12 13:10:11','0799113799',799113799,'DAHDI/i4/0799113799-7',84,'ANSWERED','0',NULL,NULL,NULL,0,NULL,NULL),(183,'0',4006,4004,3,3,'28','2017-11-12 08:19:33','2017-11-12 08:19:33','2017-11-12 08:19:33','0799113799',0,'0',0,NULL,'2',1,1,'',1,1,1),(184,'0',4004,40012,3,3,'17','2017-11-12 11:42:53','2017-11-12 11:42:53','2017-11-12 11:42:53','0796388863',0,'0',0,NULL,'1',1,1,'',1,400,1),(185,'0',4004,40012,3,3,'65','2017-11-12 11:45:13','2017-11-12 11:45:13','2017-11-12 11:45:13','0796388863',0,'0',0,NULL,'1',1,1,'',1,1,1),(186,'0',40012,4009,3,3,'45','2017-11-13 12:09:45','2017-11-13 12:09:45','2017-11-13 12:09:45','0799010693',0,'0',0,NULL,'1',1,1,'',1,1,1),(187,'0',40012,4009,3,3,'24','2017-11-13 12:39:58','2017-11-13 12:39:58','2017-11-13 12:39:58','0799010693',0,'0',0,NULL,'1',1,1,'',1,1,1),(188,'72',40012,4009,3,3,'120','2017-11-12 17:42:32','2017-11-12 17:42:32','2017-11-12 17:43:45','0799010693',0,'DAHDI/i4/0799010693-8',72,'ANSWERED','0',1,1,'',1,400,1),(189,'78',NULL,NULL,NULL,NULL,NULL,'2017-11-12 17:42:32','2017-11-12 17:42:32','2017-11-12 17:43:50','0799010693',799010693,'DAHDI/i4/0799010693-8',78,'ANSWERED','0',NULL,NULL,NULL,0,NULL,NULL),(190,'0',4006,4009,3,3,'84','2017-11-17 08:28:24','2017-11-17 08:28:24','2017-11-17 08:28:24','0799010693',0,'0',0,NULL,'2',1,1,'',1,1,1);
/*!40000 ALTER TABLE `cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdr_commission`
--

DROP TABLE IF EXISTS `cdr_commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr_commission` (
  `trx_type` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `mymo_comm` float NOT NULL,
  `bank_comm` float NOT NULL,
  `merchant_comm` float NOT NULL,
  `amount_sender` float NOT NULL,
  `amount_receiver` float NOT NULL,
  `cdr_id` int(11) NOT NULL,
  `updated` enum('0','1') NOT NULL COMMENT '''0''=> No, ''1''=> Yes',
  `country_id` int(11) NOT NULL,
  UNIQUE KEY `cdr_id` (`cdr_id`,`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr_commission`
--

LOCK TABLES `cdr_commission` WRITE;
/*!40000 ALTER TABLE `cdr_commission` DISABLE KEYS */;
INSERT INTO `cdr_commission` VALUES (1,2,0.9,0.1,0,13,12,151,'0',1),(1,13,0.9,0.1,0,31,30,152,'0',1),(1,13,0.9,0.1,0,11,10,153,'0',1),(1,13,0.9,0.1,0,41,40,154,'0',1),(1,5,0.9,0.1,0,21,20,155,'0',1),(1,13,0.9,0.1,0,26,25,156,'0',1),(1,13,0.9,0.1,0,13,12,157,'0',1),(1,13,0.9,0.1,0,15,14,159,'0',1),(1,13,0.9,0.1,0,36,35,160,'0',1),(1,13,0.9,0.1,0,15,14,161,'0',1),(1,13,0.9,0.1,0,13,12,162,'0',1),(1,13,0.9,0.1,0,16,15,163,'0',1),(1,13,0.9,0.1,0,16,15,164,'0',1),(1,13,0.9,0.1,0,18,17,165,'0',1),(1,13,0.9,0.1,0,41,40,166,'0',1),(1,2,0.9,0.1,0,12,11,167,'0',1),(1,2,0.9,0.1,0,89,88,168,'0',1),(1,13,0.9,0.1,0,21,20,169,'0',1),(1,2,0.9,0.1,0,44,43,170,'0',1),(1,5,0.9,0.1,0,21,20,172,'0',1),(1,5,0.9,0.1,0,31,30,173,'0',1),(1,2,0.9,0.1,0,67,66,175,'0',1),(1,13,0.9,0.1,0,13,12,176,'0',1),(1,4,0.9,0.1,0,21,20,177,'0',1),(1,13,0.9,0.1,0,112,111,178,'0',1),(1,13,0.9,0.1,0,13,12,179,'0',1),(1,8,0.9,0.1,0,11,10,180,'0',1),(1,13,0.9,0.1,0,21,20,181,'0',1),(1,13,0.9,0.1,0,12,11,183,'0',1),(1,8,0.9,0.1,0,13,12,184,'0',1),(1,8,0.9,0.1,0,8,7,185,'0',1),(1,5,0.9,0.1,0,21,20,186,'0',1),(1,5,0.9,0.1,0,201,200,187,'0',1),(1,5,0.9,0.1,0,16,15,188,'0',1),(1,5,0.9,0.1,0,51,50,190,'0',1);
/*!40000 ALTER TABLE `cdr_commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdr_commission_updated`
--

DROP TABLE IF EXISTS `cdr_commission_updated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr_commission_updated` (
  `trx_type` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `mymo_comm` float NOT NULL,
  `bank_comm` float NOT NULL,
  `amount` float NOT NULL,
  `amount_sender` float NOT NULL,
  `cdr_id` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  UNIQUE KEY `cdr_id` (`cdr_id`,`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr_commission_updated`
--

LOCK TABLES `cdr_commission_updated` WRITE;
/*!40000 ALTER TABLE `cdr_commission_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdr_commission_updated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `familyname` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `mymo_id` int(11) NOT NULL,
  `national_id` bigint(20) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `is_active` enum('0','1','2','3','4') NOT NULL COMMENT '0 = inactive | 1 = active | 2 = deleted from mymo_bank | 3 = deactivate by client | 4 = under approval',
  `language` varchar(5) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `mit` varchar(255) NOT NULL,
  `authorized` varchar(255) NOT NULL,
  `co_type` varchar(255) NOT NULL,
  `co_address` varchar(255) NOT NULL,
  `short_code` int(5) DEFAULT NULL,
  `user_type` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `receivelimit` float NOT NULL,
  `gender` enum('male','female') NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `mymo_id` (`mymo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (2,'Alaa','PSF','PSF','Duksi','',4006,0,'3','2014-12-01 18:57:12','e10adc3949ba59abbe56e057f20f883e',4,3,'1','en',' ',' ',' ',' ',' ',NULL,1,1,500,'male'),(3,'Zeina','Monther','Ahmad','Khasawneh','',4007,0,'3','2014-12-02 15:53:08','e10adc3949ba59abbe56e057f20f883e',6,5,'1','en',' ',' ',' ',' ',' ',NULL,1,1,500,'male'),(4,'Abed','Abed','Abed','Abed','',4008,5454545454,'3','2014-12-10 16:44:17','e10adc3949ba59abbe56e057f20f883e',16,15,'1','en',' ',' ',' ',' ',' ',NULL,1,2,1000,'male'),(5,'Murad','PSF','PSF','Obaid','',4009,9991111222,'3','2014-12-09 17:57:33','e10adc3949ba59abbe56e057f20f883e',8,7,'1','en',' ',' ',' ',' ',' ',NULL,1,1,500,'male'),(6,'Duksi','D','D','Alaa','',40010,5454545454,'3','2014-12-10 11:18:08','e10adc3949ba59abbe56e057f20f883e',10,9,'1','en',' ',' ',' ',' ',' ',NULL,1,2,1000,'male'),(7,'Wathiq','PSF','PSF','Shehab','',40011,1222211112,'3','2014-12-10 14:39:27','e10adc3949ba59abbe56e057f20f883e',12,11,'1','en',' ',' ',' ',' ',' ',NULL,1,1,500,'male'),(8,'Abdullah','F','F','Fazaa','',40012,5454545454,'3','2014-12-10 16:40:51','e10adc3949ba59abbe56e057f20f883e',14,13,'1','en',' ',' ',' ',' ',' ',NULL,1,1,1000,'male'),(13,'Alaa','PSF','PSF','AlAli','',4004,0,'3','2014-12-01 18:46:48','e10adc3949ba59abbe56e057f20f883e',2,1,'1','en',' ',' ',' ',' ',' ',NULL,1,1,500,'male');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_account`
--

DROP TABLE IF EXISTS `client_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(25) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `account` (`account`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_account`
--

LOCK TABLES `client_account` WRITE;
/*!40000 ALTER TABLE `client_account` DISABLE KEYS */;
INSERT INTO `client_account` VALUES (7,'10109007',3,1),(17,'1010905',2,1),(21,'1010905',13,1),(22,'1233333',6,1),(30,'100102',7,1),(32,'44444444',8,1),(34,'5555444',5,1),(36,'889977',4,1);
/*!40000 ALTER TABLE `client_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_fees`
--

DROP TABLE IF EXISTS `client_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `mymo_id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `fees_amount` float NOT NULL,
  `mymo_comm` float NOT NULL,
  `bank_comm` float NOT NULL,
  `status` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_fees`
--

LOCK TABLES `client_fees` WRITE;
/*!40000 ALTER TABLE `client_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_old_password`
--

DROP TABLE IF EXISTS `client_old_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_old_password` (
  `client_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_old_password`
--

LOCK TABLES `client_old_password` WRITE;
/*!40000 ALTER TABLE `client_old_password` DISABLE KEYS */;
INSERT INTO `client_old_password` VALUES (2,'1f443740da5f422fe88f8d5d81a611c5'),(2,'e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `client_old_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_phone`
--

DROP TABLE IF EXISTS `client_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_phone` (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(25) NOT NULL,
  `transaction_limit_send` int(11) NOT NULL,
  `transaction_limit_receive` int(11) NOT NULL,
  `limitation_type` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`phone_id`),
  UNIQUE KEY `phone` (`phone`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_phone`
--

LOCK TABLES `client_phone` WRITE;
/*!40000 ALTER TABLE `client_phone` DISABLE KEYS */;
INSERT INTO `client_phone` VALUES (5,'0795686232',500,0,3,3),(10,'0786945106',500,0,1,2),(12,'0799113799',500,0,1,13),(13,'0799540916',1000,0,2,6),(18,'0789508015',500,0,1,7),(19,'0796388863',600,0,1,8),(20,'0799010693',500,0,1,5),(21,'0785199013',1000,0,1,4);
/*!40000 ALTER TABLE `client_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commission` (
  `trx_type` int(11) NOT NULL,
  `mymo` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `transfer_bank` int(11) NOT NULL,
  `merchant` int(11) NOT NULL,
  `min_commision` int(11) NOT NULL,
  `paid_by` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES (7,90,1,10,0,2,'1'),(9,80,1,20,0,3,'1'),(2,90,4,10,0,1,'2'),(2,10,6,90,0,1,'2'),(2,80,7,20,0,1,'2'),(1,80,4,20,0,1,'1'),(1,90,7,10,0,1,'1'),(1,90,0,10,0,1,'1'),(3,60,0,40,0,1,'1');
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `prompt` int(11) NOT NULL,
  `soundfile_en` varchar(255) NOT NULL,
  `soundfile_ar` varchar(255) NOT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '0 = inactive - 1 = active - 2 = under approval',
  `user_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `idx_left_right` (`left_id`,`right_id`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (4,'Zain',1,1,'sounds/ar/20130116130129','sounds/ar/20130116130129',0,0,'1',NULL,'en'),(5,'Orange',2,3,'sounds/ar/20130116130141','sounds/ar/20130116130141',3,4,'0',NULL,'en'),(6,'Umniah',1,2,'sounds/ar/20130116130157','sounds/ar/20130116130157',1,2,'1',NULL,'en'),(8,'Mada Internet',2,1,'sounds/ar/20130116130856','sounds/ar/20130116130856',5,6,'0',NULL,'en'),(9,'Mada Mobile',1,4,'sounds/mall-card-mada-en','sounds/ar/20130116130856',7,8,'0',NULL,'en');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companytype`
--

DROP TABLE IF EXISTS `companytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companytype` (
  `companytype_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `soundfile_en` varchar(255) NOT NULL,
  `soundfile_ar` varchar(255) NOT NULL,
  `prompt` int(11) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval',
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`companytype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companytype`
--

LOCK TABLES `companytype` WRITE;
/*!40000 ALTER TABLE `companytype` DISABLE KEYS */;
INSERT INTO `companytype` VALUES (1,'Mobile','sounds/ar/20130116130058','sounds/ar/20130116130058',1,'1',2,1,'en',NULL),(2,'Internet','sounds/ar/20130116130801','sounds/ar/20130116130801',2,'0',4,3,'en',NULL);
/*!40000 ALTER TABLE `companytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_db_all_tbl`
--

DROP TABLE IF EXISTS `config_db_all_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_db_all_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `type` enum('src','trgt') NOT NULL,
  `user_id` int(10) NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  `right_id` int(11) DEFAULT NULL,
  `left_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_db_all_tbl`
--

LOCK TABLES `config_db_all_tbl` WRITE;
/*!40000 ALTER TABLE `config_db_all_tbl` DISABLE KEYS */;
INSERT INTO `config_db_all_tbl` VALUES (1,1,'callback_phone','src',1,'1',NULL,NULL),(2,1,'cdr','src',1,'1',NULL,NULL),(3,1,'cdr_commission','src',1,'1',NULL,NULL),(4,1,'cdr_commission_updated','src',1,'1',NULL,NULL),(5,1,'cdr_id','src',1,'1',NULL,NULL),(6,1,'client','src',1,'1',NULL,NULL),(7,1,'client_account','src',1,'1',NULL,NULL),(8,1,'client_fees','src',1,'1',NULL,NULL),(9,1,'client_phone','src',1,'1',NULL,NULL),(10,1,'config_db_all_tbl','src',1,'1',NULL,NULL),(11,1,'config_db_conn_func','src',1,'1',NULL,NULL),(12,1,'config_db_tbl','src',1,'1',NULL,NULL),(13,1,'config_db_type','src',1,'1',NULL,NULL),(14,1,'config_integration_info','src',1,'1',NULL,NULL),(15,1,'config_tbl_all_cols','src',1,'1',NULL,NULL),(16,1,'config_tbl_cols','src',1,'1',NULL,NULL),(17,1,'core_dashboard','src',1,'1',NULL,NULL),(18,1,'core_plugin','src',1,'1',NULL,NULL),(19,1,'core_privilege','src',1,'1',NULL,NULL),(20,1,'core_resource','src',1,'1',NULL,NULL),(21,1,'core_role','src',1,'1',NULL,NULL),(22,1,'core_role_inheritance','src',1,'1',NULL,NULL),(23,1,'core_rule','src',1,'1',NULL,NULL),(24,1,'core_session','src',1,'1',NULL,NULL),(25,1,'core_target','src',1,'1',NULL,NULL),(26,1,'core_translation','src',1,'1',NULL,NULL),(27,1,'core_user','src',1,'1',NULL,NULL),(28,1,'correspondent_bank_ip','src',1,'1',NULL,NULL),(29,1,'currency','src',1,'1',NULL,NULL),(30,1,'extrasim','src',1,'1',NULL,NULL),(31,1,'fees','src',1,'1',NULL,NULL),(32,1,'iso','src',1,'1',NULL,NULL),(33,1,'iso_content','src',1,'1',NULL,NULL),(34,1,'limitation_type','src',1,'1',NULL,NULL),(35,1,'mymo_lastused','src',1,'1',NULL,NULL),(36,1,'prompt','src',1,'1',NULL,NULL),(37,1,'setting','src',1,'1',NULL,NULL),(38,1,'temp_client','src',1,'1',NULL,NULL),(39,1,'test','src',1,'1',NULL,NULL),(40,1,'transaction_method','src',1,'1',NULL,NULL),(41,1,'validation_key','src',1,'1',NULL,NULL),(42,1,'book','trgt',1,'1',NULL,NULL),(43,1,'v_attachment','trgt',1,'1',NULL,NULL),(44,1,'v_category','trgt',1,'1',NULL,NULL),(45,1,'v_comment','trgt',1,'1',NULL,NULL),(46,1,'v_item_plugin','trgt',1,'1',NULL,NULL),(47,1,'v_options','trgt',1,'1',NULL,NULL),(48,1,'v_posts','trgt',1,'1',NULL,NULL);
/*!40000 ALTER TABLE `config_db_all_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_db_conn_func`
--

DROP TABLE IF EXISTS `config_db_conn_func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_db_conn_func` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_type_id` int(11) NOT NULL,
  `select_db_tbl` varchar(255) NOT NULL,
  `select_col_tbl_name` varchar(255) NOT NULL,
  `select_col_db_name` varchar(255) NOT NULL,
  `select_tbl_col` varchar(255) NOT NULL,
  `select_col_name` varchar(255) NOT NULL,
  `select_col_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_type_id` (`db_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_db_conn_func`
--

LOCK TABLES `config_db_conn_func` WRITE;
/*!40000 ALTER TABLE `config_db_conn_func` DISABLE KEYS */;
INSERT INTO `config_db_conn_func` VALUES (1,1,'information_schema.TABLES','TABLE_NAME','TABLE_SCHEMA','information_schema.COLUMNS','COLUMN_NAME','DATA_TYPE'),(2,2,'information_schema.TABLES','TABLE_NAME','TABLE_SCHEMA','INFORMATION_SCHEMA.COLUMNS','COLUMN_NAME','DATA_TYPE'),(3,3,'sys.ALL_ALL_TABLES','TABLE_NAME','TABLE_SCHEMA','ALL_TAB_COLS','COLUMN_NAME','DATA_TYPE');
/*!40000 ALTER TABLE `config_db_conn_func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_db_tbl`
--

DROP TABLE IF EXISTS `config_db_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_db_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) NOT NULL,
  `src_table` varchar(255) NOT NULL,
  `trgt_table` varchar(255) NOT NULL,
  `description` text,
  `user_id` int(10) NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  `right_id` int(11) DEFAULT NULL,
  `left_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_db_tbl`
--

LOCK TABLES `config_db_tbl` WRITE;
/*!40000 ALTER TABLE `config_db_tbl` DISABLE KEYS */;
INSERT INTO `config_db_tbl` VALUES (1,1,'callback_phone','book','',1,'1',NULL,NULL);
/*!40000 ALTER TABLE `config_db_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_db_type`
--

DROP TABLE IF EXISTS `config_db_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_db_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_mang_sys` varchar(255) NOT NULL,
  `db_value` varchar(255) NOT NULL,
  `adapter_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_db_type`
--

LOCK TABLES `config_db_type` WRITE;
/*!40000 ALTER TABLE `config_db_type` DISABLE KEYS */;
INSERT INTO `config_db_type` VALUES (1,'MySQL','mysql','Pdo_Mysql'),(2,'Microsoft SQL Server 2008','sql','Pdo_Mssql'),(3,'Oracle Database 10g','orcl','Pdo_Oci');
/*!40000 ALTER TABLE `config_db_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_integration_info`
--

DROP TABLE IF EXISTS `config_integration_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_integration_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_dbtype` varchar(255) NOT NULL,
  `src_ip` varchar(255) NOT NULL,
  `src_username` varchar(255) NOT NULL,
  `src_password` varchar(255) NOT NULL,
  `src_dbname` varchar(255) NOT NULL,
  `trgt_dbtype` varchar(255) NOT NULL,
  `trgt_ip` varchar(255) NOT NULL,
  `trgt_username` varchar(255) NOT NULL,
  `trgt_password` varchar(255) NOT NULL,
  `trgt_dbname` varchar(255) NOT NULL,
  `conn_type` varchar(55) NOT NULL,
  `interval_type` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_integration_info`
--

LOCK TABLES `config_integration_info` WRITE;
/*!40000 ALTER TABLE `config_integration_info` DISABLE KEYS */;
INSERT INTO `config_integration_info` VALUES (1,'mysql','127.0.0.1','root','root','mymo_bank','mysql','127.0.0.1','root','root','test','src','online');
/*!40000 ALTER TABLE `config_integration_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_tbl_all_cols`
--

DROP TABLE IF EXISTS `config_tbl_all_cols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_tbl_all_cols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `col_datatype` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `type` enum('src','trgt') NOT NULL,
  `user_id` int(10) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL DEFAULT '0',
  `right_id` int(11) DEFAULT NULL,
  `left_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tbl_all_cols`
--

LOCK TABLES `config_tbl_all_cols` WRITE;
/*!40000 ALTER TABLE `config_tbl_all_cols` DISABLE KEYS */;
INSERT INTO `config_tbl_all_cols` VALUES (1,1,'phone_id','int','callback_phone','src',1,'2',NULL,NULL),(2,1,'phone','varchar','callback_phone','src',1,'2',NULL,NULL),(3,1,'client_id','int','callback_phone','src',1,'2',NULL,NULL),(4,1,'BookID','int','book','trgt',1,'2',NULL,NULL),(5,1,'Title','varchar','book','trgt',1,'2',NULL,NULL),(6,1,'Description','varchar','book','trgt',1,'2',NULL,NULL),(7,1,'PagesNum','int','book','trgt',1,'2',NULL,NULL),(8,1,'ReleasedDate','date','book','trgt',1,'2',NULL,NULL),(9,1,'Price','float','book','trgt',1,'2',NULL,NULL),(10,1,'AuthorID','int','book','trgt',1,'2',NULL,NULL),(11,1,'CategoryID','int','book','trgt',1,'2',NULL,NULL),(12,1,'approved','int','book','trgt',1,'2',NULL,NULL),(13,1,'bookType','int','book','trgt',1,'2',NULL,NULL);
/*!40000 ALTER TABLE `config_tbl_all_cols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_dashboard`
--

DROP TABLE IF EXISTS `core_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_dashboard` (
  `dashboard_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `layout` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_is_default` (`is_default`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dashboard`
--

LOCK TABLES `core_dashboard` WRITE;
/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_module`
--

DROP TABLE IF EXISTS `core_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_module` (
  `module_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` text,
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `license` text,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_module`
--

LOCK TABLES `core_module` WRITE;
/*!40000 ALTER TABLE `core_module` DISABLE KEYS */;
INSERT INTO `core_module` VALUES (1,'client','Manage client','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.0','free'),(2,'category','Manage categories','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.0','free'),(3,'comment','Manage comments','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.1','free'),(4,'core','Core module. This module will be installed at the first time you install website','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.1','free'),(5,'mail','Manage mails','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.6','free'),(6,'menu','Manage menus','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.2','free'),(7,'multimedia','Multimedia module: Manage photos and clips','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.0','free'),(8,'news','Manage articles','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.0','free'),(9,'page','Manage static pages','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.7','free'),(10,'poll','Manage polls','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.0','free'),(11,'seo','Provide utilities which make your site is better for SEO','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.7','free'),(12,'tag','Manage tags','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.2','free'),(13,'upload','Upload file and manage uploaded files','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.0','free'),(14,'utility','Provide utilities. Most of utility widgets belong to this module','','TomatoCMS Core Team','alaa.m.duksi@gmail.com','2.0.0','free');
/*!40000 ALTER TABLE `core_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page`
--

DROP TABLE IF EXISTS `core_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `ordering` smallint(6) DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,'core_index_index','Homepage',0),(2,'news_article_category','View articles in category',1);
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_plugin`
--

DROP TABLE IF EXISTS `core_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_plugin` (
  `plugin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` text,
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `license` text,
  `ordering` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`plugin_id`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_plugin`
--

LOCK TABLES `core_plugin` WRITE;
/*!40000 ALTER TABLE `core_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_privilege`
--

DROP TABLE IF EXISTS `core_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_privilege` (
  `privilege_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `module_name` varchar(100) DEFAULT NULL,
  `controller_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_privilege`
--

LOCK TABLES `core_privilege` WRITE;
/*!40000 ALTER TABLE `core_privilege` DISABLE KEYS */;
INSERT INTO `core_privilege` VALUES (1,'add','Create new client','client','client'),(2,'delete','Delete a client','client','client'),(3,'edit','Edit a client','client','client'),(4,'list','View the list of clients','client','client'),(5,'add','Add new client','ad','client'),(6,'delete','Delete client','ad','client'),(7,'edit','Edit client information','ad','client'),(8,'list','View the list of clients','ad','client'),(9,'add','Create new zone','ad','zone'),(10,'delete','Delete a zone','ad','zone'),(11,'edit','Edit a zone','ad','zone'),(12,'list','View the list of zones','ad','zone'),(13,'add','Create new category','category','category'),(14,'delete','Delete a category','category','category'),(15,'edit','Edit a category','category','category'),(16,'list','View the list of categories','category','category'),(17,'order','Order categories','category','category'),(18,'activate','Activate comment','comment','comment'),(19,'add','Add/Reply comment','comment','comment'),(20,'delete','Delete comment','comment','comment'),(21,'edit','Edit comment','comment','comment'),(22,'list','View the list of comments','comment','comment'),(23,'thread','View the list comments in thread','comment','comment'),(24,'clear','Clear all cached data','core','cache'),(25,'config','Configure cache','core','cache'),(26,'delete','Delete cached item','core','cache'),(27,'list','View the list of cached items by id','core','cache'),(28,'app','Configure application\'s settings','core','config'),(29,'add','Add setting','core','config'),(30,'delete','Delete settings','core','config'),(31,'edit','Edit setting','core','config'),(32,'list','View the list of settings','core','config'),(33,'update','Update setting','core','config'),(34,'index','Administrator Dashboard','core','dashboard'),(35,'config','Config hook','core','hook'),(36,'install','Install hook','core','hook'),(37,'list','View the list of hooks','core','hook'),(38,'uninstall','Uninstall hook','core','hook'),(39,'upload','Upload new hook','core','hook'),(40,'add','Add item to language file','core','language'),(41,'delete','Delete item from language file','core','language'),(42,'edit','Edit language file','core','language'),(43,'list','View the list of language files for module/widget','core','language'),(44,'new','Create new language file','core','language'),(45,'update','Update item in language file','core','language'),(46,'upload','Upload new language package','core','language'),(47,'config','Configure localization settings','core','locale'),(48,'delete','Delete error','core','log'),(49,'list','List errors','core','log'),(50,'install','Install module','core','module'),(51,'list','View the list of modules','core','module'),(52,'uninstall','Uninstall module','core','module'),(53,'upload','Upload new module','core','module'),(54,'add','Create new page','core','page'),(55,'edit','Edit page','core','page'),(56,'layout','View layout of page','core','page'),(57,'savelayout','Update layout of page','core','page'),(58,'list','View the list of pages','core','page'),(59,'ordering','Update order of pages','core','page'),(60,'index','Manage permalinks','core','permalink'),(61,'config','Config plugin','core','plugin'),(62,'install','Install plugin','core','plugin'),(63,'list','View the list of plugins','core','plugin'),(64,'ordering','Update order of plugins','core','plugin'),(65,'uninstall','Uninstall plugin','core','plugin'),(66,'upload','Upload new plugin','core','plugin'),(67,'add','Add action','core','privilege'),(68,'delete','Delete action','core','privilege'),(69,'list','View the list of actions','core','privilege'),(70,'add','Add resource','core','resource'),(71,'delete','Delete resource','core','resource'),(72,'add','Add role','core','role'),(73,'delete','Delete role','core','role'),(74,'list','View the list of roles','core','role'),(75,'lock','Lock/unlock role','core','role'),(76,'role','Set rules for role','core','rule'),(77,'user','Set rules for user','core','rule'),(78,'add','Apply hook for target','core','target'),(79,'list','View the list of targets','core','target'),(80,'remove','Remove hook from target','core','target'),(81,'activate','Activate template','core','template'),(82,'editskin','Edit skin of template','core','template'),(83,'list','View the list of templates','core','template'),(84,'skin','Set skin for current template','core','template'),(85,'activate','Activate/deactivate an user','core','user'),(86,'add','Add user','core','user'),(87,'changepass','Update password','core','user'),(88,'edit','Update user information','core','user'),(89,'list','View the list of users','core','user'),(90,'install','Install widget','core','widget'),(91,'list','View the list of widgets','core','widget'),(92,'uninstall','Uninstall widget','core','widget'),(93,'upload','Upload new widget','core','widget'),(94,'server','Config mail server','mail','config'),(95,'add','Add new mail template','mail','template'),(96,'delete','Delete the mail template','mail','template'),(97,'edit','Edit the mail template','mail','template'),(98,'list','View the list of templates','mail','template'),(99,'list','View the list of mails','mail','mail'),(100,'send','Send mails','mail','mail'),(101,'build','Build new menu','menu','menu'),(102,'delete','Delete a menu','menu','menu'),(103,'edit','Edit a menu','menu','menu'),(104,'list','View the list of menus','menu','menu'),(105,'activate','Activate a file','multimedia','file'),(106,'add','Create new file','multimedia','file'),(107,'delete','Delete a file','multimedia','file'),(108,'edit','Edit given file','multimedia','file'),(109,'editor','Image editor','multimedia','file'),(110,'activate','Activate a note','multimedia','note'),(111,'delete','Delete a note','multimedia','note'),(112,'edit','Edit given note','multimedia','note'),(113,'list','View list of notes','multimedia','note'),(114,'upload','Upload new photo','multimedia','photo'),(115,'activate','Activate a set','multimedia','set'),(116,'add','Create new set','multimedia','set'),(117,'delete','Delete a set','multimedia','set'),(118,'edit','Edit given set','multimedia','set'),(119,'activate','Activate article','news','article'),(120,'add','Add new article','news','article'),(121,'delete','Delete article','news','article'),(122,'edit','Edit article','news','article'),(123,'emptytrash','Empty the trash','news','article'),(124,'hot','Manage hot articles','news','article'),(125,'list','View the list of articles','news','article'),(126,'preview','Preview article','news','article'),(127,'add','Add new revision','news','revision'),(128,'delete','Delete revision','news','revision'),(129,'list','View the list of article revisions','news','revision'),(130,'restore','Restore revision','news','revision'),(131,'add','Add new page','page','page'),(132,'delete','Delete page','page','page'),(133,'edit','Edit page','page','page'),(134,'list','List pages','page','page'),(135,'order','Order pages','page','page'),(136,'activate','Activate a poll','poll','question'),(137,'add','Create new poll','poll','question'),(138,'delete','Delete a poll','poll','question'),(139,'edit','Update a poll','poll','question'),(140,'list','View the list of polls','poll','question'),(141,'index','View reports','seo','ganalytic'),(142,'add','Add site','seo','gwebmaster'),(143,'addsitemap','Add sitemap','seo','gwebmaster'),(144,'delete','Delete site','seo','gwebmaster'),(145,'deletesitemap','Delete sitemap','seo','gwebmaster'),(146,'details','View site details','seo','gwebmaster'),(147,'list','List of sites','seo','gwebmaster'),(148,'verify','Verify site','seo','gwebmaster'),(149,'add','Add new link to sitemap','seo','sitemap'),(150,'delete','Remove link from sitemap','seo','sitemap'),(151,'index','View sitemap details','seo','sitemap'),(152,'index','Get backlinks, indexed pages, rank','seo','toolkit'),(153,'add','Create new tag','tag','tag'),(154,'delete','Delete a tag','tag','tag'),(155,'list','View the list of tags','tag','tag'),(156,'browse','Browse uploaded files','upload','file'),(157,'upload','Upload file to server','upload','file'),(158,'showmymoids','showmymoids','client','client'),(159,'add','Create new company','company','company'),(160,'delete','Delete a company','company','company'),(161,'edit','Edit a company','company','company'),(162,'list','View the list of companies','company','company'),(163,'list','View the list of companies Type','companytype','companytype'),(164,'edit','Edit a company Type','companytype','companytype'),(165,'delete','Delete a company Type','companytype','companytype'),(166,'add','Create new company Type','companytype','companytype'),(167,'add','Create new promote','promote','promote'),(168,'delete','Delete a promote','promote','promote'),(169,'edit','Edit a promote','promote','promote'),(170,'list','View the list of promote','promote','promote'),(171,'list','View the list of Transaction Type','transactiontype','transactiontype'),(172,'edit','Edit a Transaction Type','transactiontype','transactiontype'),(173,'delete','Delete a Transaction Type','transactiontype','transactiontype'),(174,'add','Create new Transaction Type','transactiontype','transactiontype'),(175,'add','Reconciliation','client','reconciliation'),(176,'delete','Reconciliation','client','reconciliation'),(177,'edit','Reconciliation','client','reconciliation'),(178,'list','Reconciliation','client','reconciliation'),(179,'add','Create new Extra Sim','extrasim','extrasim'),(180,'delete','Delete an Extra Sim','extrasim','extrasim'),(181,'edit','Edit an Extra Sim','extrasim','extrasim'),(182,'list','View the list of Extra Sim','extrasim','extrasim'),(183,'list','View the list of Country','country','country'),(184,'edit','Edit Country','country','country'),(185,'delete','Delete an Country','country','country'),(186,'add','Create new Country','country','country'),(187,'add','Create new Bank','bank','bank'),(188,'delete','Delete a bank','bank','bank'),(189,'edit','Edit Bank','bank','bank'),(190,'list','View the list of Banks','bank','bank'),(191,'list','View the list of Setting','setting','setting'),(192,'edit','Edit a Setting','setting','setting'),(199,'add','Create new Agent','agent','agent'),(200,'delete','Delete an agent','agent','agent'),(201,'edit','Edit an agent','agent','agent'),(202,'list','View the list of agents','agent','agent'),(203,'order','Order agent','agent','agent'),(204,'activate','Active agent','agent','agent'),(205,'list','(agent) List of field','agent','field'),(206,'addfield','(agent) add field','agent','field'),(207,'editfield','(agent) edit field','agent','field'),(208,'deletefield','(agent) delete field','agent','field'),(209,'orderfield','(agent) order field','agent','field'),(210,'activefield','(agent) Activate field','agent','field'),(211,'add','Create new Prompts','prompt','prompt'),(212,'delete','Delete a Prompt','prompt','prompt'),(213,'edit','Edit a Prompt','prompt','prompt'),(214,'list','View the list of Prompt','prompt','prompt'),(215,'activate','Active currency','prompt','prompt'),(216,'list','View black list','blacklist','blacklist'),(217,'edit','Edit a Integration','blacklist','blacklist'),(218,'delete','Delete a Black list','blacklist','blacklist'),(219,'add','Create new Black list','blacklist','blacklist'),(220,'activate','activate','blacklist','blacklist'),(221,'add','Add new type of blacklist','blacklist','type'),(222,'list','Add new type of blacklist','blacklist','type'),(223,'add','Add Blacklist source','blacklist','source'),(224,'list','List Blacklist source','blacklist','source'),(225,'view','View Black list details','blacklist','blacklist');
/*!40000 ALTER TABLE `core_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_resource`
--

DROP TABLE IF EXISTS `core_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_resource` (
  `resource_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text,
  `parent_id` varchar(50) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `controller_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resource_id`),
  UNIQUE KEY `idx_name_parent` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_resource`
--

LOCK TABLES `core_resource` WRITE;
/*!40000 ALTER TABLE `core_resource` DISABLE KEYS */;
INSERT INTO `core_resource` VALUES (1,'Manage client',NULL,'client','client'),(2,'Manage clients',NULL,'ad','client'),(3,'Manage zones',NULL,'ad','zone'),(4,'Manage categories',NULL,'category','category'),(5,'Manage user comments',NULL,'comment','comment'),(6,'Manage cache',NULL,'core','cache'),(7,'Manage settings',NULL,'core','config'),(8,'Administrator section',NULL,'core','dashboard'),(9,'Manage hooks',NULL,'core','hook'),(10,'Manage languages',NULL,'core','language'),(11,'Manage localization settings',NULL,'core','locale'),(12,'Errors log',NULL,'core','log'),(13,'Manage modules',NULL,'core','module'),(14,'Manage pages',NULL,'core','page'),(15,'Manage permalinks',NULL,'core','permalink'),(16,'Manage plugins',NULL,'core','plugin'),(17,'Manage actions to resource',NULL,'core','privilege'),(18,'Manage resources',NULL,'core','resource'),(19,'Manage roles',NULL,'core','role'),(20,'Manage rules',NULL,'core','rule'),(21,'Manage hook targets',NULL,'core','target'),(22,'Manage templates',NULL,'core','template'),(23,'Manage users',NULL,'core','user'),(24,'Manage widgets',NULL,'core','widget'),(25,'Config mail',NULL,'mail','config'),(26,'Manage mail templates',NULL,'mail','template'),(27,'Manage mails',NULL,'mail','mail'),(28,'Manage menu',NULL,'menu','menu'),(29,'Manage files',NULL,'multimedia','file'),(30,'Manage notes',NULL,'multimedia','note'),(31,'Manage photos',NULL,'multimedia','photo'),(32,'Manage sets',NULL,'multimedia','set'),(33,'Manage articles',NULL,'news','article'),(34,'Manage revisions',NULL,'news','revision'),(35,'List pages',NULL,'page','page'),(36,'Manage polls',NULL,'poll','question'),(37,'Google Analytic reports',NULL,'seo','ganalytic'),(38,'Google Web Master tool',NULL,'seo','gwebmaster'),(39,'Sitemap builder',NULL,'seo','sitemap'),(40,'SEO Toolkit',NULL,'seo','toolkit'),(41,'Manage tags',NULL,'tag','tag'),(42,'Manage uploaded files',NULL,'upload','file'),(43,'Manage log',NULL,'client','log'),(44,'Manage Company',NULL,'company','company'),(45,'Manage Company Type',NULL,'companytype','companytype'),(46,'Manage promote',NULL,'promote','promote'),(47,'Manage Transaction Type',NULL,'transactiontype','transactiontype'),(48,'Manage Reconciliation',NULL,'client','reconciliation'),(49,'Manage Extra Sim Chip',NULL,'extrasim','extrasim'),(50,'Manage Country',NULL,'country','country'),(51,'Manage Banks',NULL,'bank','bank'),(52,'Manage Setting',NULL,'setting','setting'),(53,'Manage Agents',NULL,'agent','agent'),(54,'Manage Fields',NULL,'agent','field'),(57,'Manage Prompts',NULL,'prompt','prompt'),(58,'Blacklist Manger',NULL,'blacklist','blacklist'),(59,'Blacklist type',NULL,'blacklist','type'),(60,'Blacklist source',NULL,'blacklist','source');
/*!40000 ALTER TABLE `core_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role`
--

DROP TABLE IF EXISTS `core_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role` (
  `role_id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `locked` tinyint(4) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
INSERT INTO `core_role` VALUES (1,'admin','Administrator',0),(2,'View MyMo IDs Section','View MyMo IDs Section',0);
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role_inheritance`
--

DROP TABLE IF EXISTS `core_role_inheritance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role_inheritance` (
  `child_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`child_id`,`parent_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role_inheritance`
--

LOCK TABLES `core_role_inheritance` WRITE;
/*!40000 ALTER TABLE `core_role_inheritance` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_role_inheritance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_rule`
--

DROP TABLE IF EXISTS `core_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `obj_id` int(50) NOT NULL,
  `obj_type` enum('user','role') DEFAULT 'role',
  `privilege_id` int(11) DEFAULT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT '0',
  `resource_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_rule`
--

LOCK TABLES `core_rule` WRITE;
/*!40000 ALTER TABLE `core_rule` DISABLE KEYS */;
INSERT INTO `core_rule` VALUES (1,1,'role',NULL,1,NULL),(3,2,'role',158,1,'client:client');
/*!40000 ALTER TABLE `core_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_session`
--

DROP TABLE IF EXISTS `core_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_session` (
  `session_id` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_session`
--

LOCK TABLES `core_session` WRITE;
/*!40000 ALTER TABLE `core_session` DISABLE KEYS */;
INSERT INTO `core_session` VALUES ('01u0qej05q0fs5t501qqd0vqi6','',1387183513,36000),('036cvrrlln0uith4uu1iumdok2','',1387118703,36000),('08l9kr9tkte500cd2ejiuai6u4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4764ed058c8d2f987b92894a38766750\";}',1386609692,36000),('093igtdib0g49jppu3vkhl67q5','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"12\";s:9:\"firstname\";s:7:\"Abdulah\";s:10:\"fathername\";s:5:\"Samer\";s:10:\"middlename\";s:1:\"E\";s:10:\"familyname\";s:7:\"Abutouq\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40016\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 12:42:34\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1383036227,36000),('0asprc4trtb6f6kbsc5k159jo3','',1387071235,36000),('0b8q0otuqu3kq13evb0gi8rh75','',1386967501,36000),('0c6jrq5tsippmc7r73ave75374','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"2\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4006\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:57:12\";s:8:\"right_id\";s:1:\"4\";s:7:\"left_id\";s:1:\"3\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386695249,36000),('0dcl975djhe7o3hsuel2k20ju7','',1386684509,36000),('0eluf2e9fqksj5vjm4gvhabn14','',1387249200,36000),('0gcinv383i0ui30f2bkkpt0f25','',1387276988,36000),('0gcj8skjfd549tqi6k8e9p1kh1','',1386591921,36000),('0kcmrc4879l72lk4n4a1b2if55','',1383118607,36000),('0m8bgdbp2l9tipuq84se4icil7','',1386220020,36000),('0sqrin4f34nq4ghtdg5o2go225','',1387176731,36000),('0v2ou8n67vlt4v5935oapg6jr3','',1387077648,36000),('0v72ak2be7n7rfr3g7he3able1','',1386641933,36000),('1lvqd9voo8efrmqcti03lp1es4','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"20\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:1:\"M\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40025\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2014-10-21 13:05:19\";s:8:\"right_id\";s:2:\"18\";s:7:\"left_id\";s:2:\"17\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"0\";s:12:\"receivelimit\";s:1:\"0\";}}',1383191639,36000),('1mlv7d6sa1qrkbeas7egr732d6','',1386764025,36000),('1sqbs35vsvafalad86qgfircl6','',1387301656,36000),('28hgfpugr12j9k5e5p8o8jvh67','',1382965070,36000),('29625hr1np8ll9tltkfpnjeak6','',1387223468,36000),('29se9d4g39f1lqcsdr8ff17hg5','',1386822643,36000),('2a7psqfphb98v7of1uls26spn6','',1387197853,36000),('2asb8guujdoicd19fii1tc3773','',1387082794,36000),('2dsb6m483ucqr8tnn9sufvk956','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"2\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4006\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:57:12\";s:8:\"right_id\";s:1:\"4\";s:7:\"left_id\";s:1:\"3\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386771192,36000),('2jfdea966t7va28qkgcprjj9m5','',1386527265,36000),('2kedup4bfd2a1f7shduqadu194','',1387269905,36000),('2mnavr3va8646akev05bjtd466','',1386064011,36000),('2oug8fgl81avjdrbmh4701f397','',1386950516,36000),('2psgc78kbgc0t6n248l4fcpuu1','Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"5c45f3b10e1d095a18c840c97d0dcf93\";}Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"20\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:1:\"M\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40025\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:05:19\";s:8:\"right_id\";s:2:\"18\";s:7:\"left_id\";s:2:\"17\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"0\";s:12:\"receivelimit\";s:1:\"0\";}}',1382981380,36000),('38vr59vl7b1394i63m9gbc8gk6','',1386908846,36000),('3a8vtu2voe05u7ss4m8e0rhql5','Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"b585c65ca155c15e59bca8ec1cca395b\";}Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":23:{s:9:\"client_id\";s:2:\"13\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"AlAli\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4004\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:46:48\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1386062953,36000),('3eq0095b2obciiv3d1c56jq6q2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"f67a50db879d44112141b47537dc1410\";}',1386495722,36000),('3h14i9ngsqmprdtbbgqkdom334','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"12\";s:9:\"firstname\";s:7:\"Abdulah\";s:10:\"fathername\";s:5:\"Samer\";s:10:\"middlename\";s:1:\"E\";s:10:\"familyname\";s:7:\"Abutouq\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40016\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 12:42:34\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1382872988,36000),('3j9a6faqoesqtai41bkjahj5u4','',1387176604,36000),('3jh9md8268pe0brbtm30r8rmq2','',1386173453,36000),('3lnfe7go0ls5g5otue4v6dqol4','',1386121956,36000),('3ogcuotc560j59siocdtlj9un6','',1387274468,36000),('3qol7hdvua91maqnic7ovr1dd3','',1386816593,36000),('3rnlal82aopvd9jr4pdu6ini27','',1386873836,36000),('3v9t8c6mkhukck2vpkprs6svf0','',1382871433,36000),('3vo2u6nt6scvq2quodgj1fc8l5','',1383118592,36000),('41ufcqpqvem7uj9gv0mp007la2','',1385882952,36000),('45qvvk6qc8ihimo8mrofml1mp6','',1387129982,36000),('46h8mkgae7eft6denieq3taeq2','',1383118614,36000),('49cao4c1e672kdiegcgfqm3083','',1387003411,36000),('4c81icgvqgjpe1d74v2l4j0bu4','',1383152229,36000),('4c9r75or2q60165kp5dapd41s1','',1387068277,36000),('4f5o7t241fm0d5mo47omuj0cb0','',1386981853,36000),('4h6fh6c6uvr42409t759as60i7','',1387089823,36000),('4iupr8j1v5bt598s06liau3o74','',1386764866,36000),('4lbn70umh458smr239u4r33277','',1386312436,36000),('4m33dabli2je10ddhnea980i64','',1387061040,36000),('4mq0b2jptkjc275puljq9ac327','',1387276631,36000),('4ni8d7ugnh49rrosu6it1fgkr6','',1386598677,36000),('4p290q1805a5hq3r9fhfgpogk7','',1387226632,36000),('4pvlst43qroj634jtsf9tdid34','',1387138531,36000),('4sdrnfh5r4sn9a0c81a4h4f4r2','',1387154499,36000),('4td69kv4aq2bvhhqa3cbdmhl03','',1387248338,36000),('50a3fohqj3orjepfahpqbcino7','',1383148042,36000),('51oc5qljdo1npmjr2238norg66','',1386996272,36000),('55o5vichm8l1cen5drf5jlf2u3','',1386666280,36000),('57kks6d9r8j6l6un5q0gidb4f0','',1387055708,36000),('57vfaggrnl9vr14qk78un6unj1','',1382956170,36000),('58flkjpe6buhpbr6se2cgiv9q3','',1387076030,36000),('5bp3pm9hbdu8tbl3lub1r5rj20','',1387103821,36000),('5eqecq2d8o3mld17mq7igv5ul5','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"12\";s:9:\"firstname\";s:7:\"Abdulah\";s:10:\"fathername\";s:5:\"Samer\";s:10:\"middlename\";s:1:\"E\";s:10:\"familyname\";s:7:\"Abutouq\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40016\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 12:42:34\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1382989792,36000),('5ffcljk50o1rieg2h3uidglov2','',1386707084,36000),('5i1elk9pmn7s6fk2jphdkeh8m4','',1387279224,36000),('5i2ftgda9amuige0rqbtdd5i95','',1386076800,36000),('5itlrpsvpd2kl0fa42fa1g0k41','',1386769466,36000),('5nbv5ds3pgj908fir8nbakclh3','',1387125862,36000),('5ootm4ej6cq467e8s64thqmu75','',1387291545,36000),('5ovigluagcv6sr458vtnas4h81','',1387305891,36000),('5tcheq54khkna75sq9esl1rip4','',1387104270,36000),('607lnpechae7012km7dmug9113','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"8\";s:9:\"firstname\";s:8:\"Abdullah\";s:10:\"fathername\";s:1:\"F\";s:10:\"middlename\";s:1:\"F\";s:10:\"familyname\";s:5:\"Fazaa\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40012\";s:11:\"national_id\";s:10:\"5454545454\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-10 16:40:51\";s:8:\"right_id\";s:2:\"14\";s:7:\"left_id\";s:2:\"13\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:4:\"1000\";s:6:\"gender\";s:4:\"male\";}}',1386884574,36000),('61qnd2ll96bbot63sdrev2kk67','',1387046682,36000),('63levi61gpcjr4tbfn65308vr3','',1387255487,36000),('67u9icfqvr0kbvo197e113o815','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"20\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:1:\"M\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40025\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:05:19\";s:8:\"right_id\";s:2:\"18\";s:7:\"left_id\";s:2:\"17\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"700\";}}',1383118320,36000),('68ehcjr0ml6i7sa0pd7vv8n8i6','',1387291549,36000),('6as9mjpob95achgijfcoar8450','',1386198529,36000),('6c41rq9ar50r48ih5f43ihfpd4','',1387190877,36000),('6eqc4gam147dlk71h4174cviv6','',1387097113,36000),('6h5kltf5c093goc9iu9er1rg81','',1387277100,36000),('6j0ggj22ohljmv8u6a5gii55p3','',1386702017,36000),('6j9er6vl91amhi6dlq1mml4960','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"12\";s:9:\"firstname\";s:7:\"Abdulah\";s:10:\"fathername\";s:5:\"Samer\";s:10:\"middlename\";s:1:\"E\";s:10:\"familyname\";s:7:\"Abutouq\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40016\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 12:42:34\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1383152617,36000),('71btjo6piah1llmku6g9hsdm91','',1387041995,36000),('71ei0d87ph8d08jqfepf4638t0','',1382859837,36000),('725aho7d3eshp1u2p7ebe86rv0','',1386877769,36000),('73cvjie6d36qvqnaut8ppem8i1','',1387046911,36000),('74ojab73ugpvgi8f40tmeat555','',1386902710,36000),('76g12qr36gbuv7sljedd2jkod0','',1387105925,36000),('7dg2foh42dh4n5lhk4u3spmpu4','',1386695239,36000),('7f7294qcveaoc5nlacmulellc3','',1387024065,36000),('7hvk587c5m0ipo67mq319tqri0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"bd30ef486427b5f552e6cdc2d5726b75\";}',1382892535,36000),('7ijk8cokc37n37lmg0g6mt6or3','',1387075599,36000),('7k1uh9cipodm3lsh29p2cs31d6','',1383209928,36000),('7l3agtp6u45pr0kjqk0inm0nk3','',1387131512,36000),('7p2d0q90lirui6ntptpbtbc033','',1382965765,36000),('7q88o3mb83aqj3knerko19p1o3','',1386402539,36000),('7rhnvsfbg7e94dp1bpga8fm1e0','',1387241148,36000),('7tidntfsetgvske740r4li0rm3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"dfd340d9b1f6c50aebc459f9b3a7a04c\";}',1386598346,36000),('7uhl026d3cclkqru951fkp2pf1','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"decbbbd7deec09bc16b454fadae67f91\";}',1383191387,36000),('80mev74s3jo7luv3d94ol29o22','',1387248334,36000),('85lmlk0mopcvma23ee7bntoke0','',1386999870,36000),('87q63ki4q9423712r7kd1llim4','',1387156352,36000),('87vkns21dcdc3e05l45d9rjsj3','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":23:{s:9:\"client_id\";s:2:\"13\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"AlAli\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4004\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:46:48\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1385928618,36000),('8acd140rqjrsc4fjn8po636nh3','',1383133589,36000),('8amkt311k4f0lveh9t63g02n52','',1387107407,36000),('8e5639th9ativpui3d3fpsl014','loginNotification|a:1:{s:7:\"message\";s:50:\"Username or Password incorrect please retype again\";}Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"4\";s:9:\"firstname\";s:4:\"Abed\";s:10:\"fathername\";s:4:\"Abed\";s:10:\"middlename\";s:4:\"Abed\";s:10:\"familyname\";s:4:\"Abed\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4008\";s:11:\"national_id\";s:10:\"5454545454\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-10 16:44:17\";s:8:\"right_id\";s:2:\"16\";s:7:\"left_id\";s:2:\"15\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"2\";s:12:\"receivelimit\";s:4:\"1000\";s:6:\"gender\";s:4:\"male\";}}',1386687896,36000),('8edoj29lk0gt3qga9hmgvobuj7','',1386702060,36000),('8erumj80o02mn2mkvs4qohjb65','',1386510057,36000),('8il5ppkdrc7dkh0v4dohco6dj4','',1387207359,36000),('8lehp9moa64s8d7cq374hls5g2','',1386229897,36000),('8opkc0i0a55po9u34ss0967kj7','',1387183510,36000),('8plj9bci5gbtqdsgi0nc84fn17','',1387298671,36000),('8quv295fgnqqt4eq8m9j14lvc4','',1387046683,36000),('8uho5dosc8rqtn8gk3dkrs9570','',1386909880,36000),('8vickeqif5jv04cf5u1ctkrt06','',1386808246,36000),('94blofjbohv58eqk67ru6ipqj6','',1386763916,36000),('97hqdvtdmthbm1ek2b3n3oe1t2','',1387088646,36000),('97nn33nvva52lbrdno6amrniq7','',1387147454,36000),('98bahkueu3mrb035q0hq6t0aa4','',1387068274,36000),('9jdi7vui5qq1703ajbanphiuh4','',1387140290,36000),('9kilncvbsdnmciq8qe41fj96g4','',1386687951,36000),('9o9f175vr553433ikl97ftppf4','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"20\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:1:\"M\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40025\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:05:19\";s:8:\"right_id\";s:2:\"18\";s:7:\"left_id\";s:2:\"17\";s:9:\"is_active\";s:1:\"3\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"700\";}}',1383155227,36000),('9pdjokghkjm5otkcefp74m9804','',1387176261,36000),('9ujquesfgdi26speia3f9pt7n7','',1386898772,36000),('a0d459b3nj41t30921v6dsl2b0','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"8\";s:9:\"firstname\";s:8:\"Abdullah\";s:10:\"fathername\";s:1:\"F\";s:10:\"middlename\";s:1:\"F\";s:10:\"familyname\";s:5:\"Fazaa\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40012\";s:11:\"national_id\";s:10:\"5454545454\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-10 16:40:51\";s:8:\"right_id\";s:2:\"14\";s:7:\"left_id\";s:2:\"13\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:4:\"1000\";s:6:\"gender\";s:4:\"male\";}}',1386764021,36000),('a144r07kp56tlmhs1lbnam34q7','',1383180646,36000),('a29p2i9hmn03khpkdkaj774i47','',1386361775,36000),('a38756g87ql1fbarhp559ch4t6','',1383056528,36000),('a6t6nng7683ec72ncdngvud440','',1387205117,36000),('abrm9r2oloh74qu4a82ijng035','',1387212239,36000),('acpgute6re3ab9tjfaoki2la50','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"19\";s:9:\"firstname\";s:5:\"Murad\";s:10:\"fathername\";s:1:\"s\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Obaid\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40024\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:00:19\";s:8:\"right_id\";s:2:\"10\";s:7:\"left_id\";s:1:\"9\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"700\";}}',1383070595,36000),('adqc8ml3gklkrojs2edho6lad6','',1386771393,36000),('ae4j6mpg1i8rb9pt4qultp0i72','',1383181002,36000),('aeae2ktd7mq12c4tsspk7pq0c4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"bb49bd1b4e171757fcce5e14c1323cf8\";}',1383159652,36000),('aj3oqn0q7ougus0c9hmqqqdf33','',1387130293,36000),('al30no9hjl5trkk4s5955utmr2','',1386661009,36000),('al4ckfj5966i6pj0v8vhu8s0b1','',1386945813,36000),('alfuq0or4ol2dp5fi6jsidbcs2','',1387262654,36000),('am98pkduaqedtr8vivrjh14se6','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}',1382855867,36000),('anetcri8i2ieh8l5qmeu0gh9l7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"23f43eb6f5b32fa734e2d51a1caa1805\";}',1386412171,36000),('aqv5t4rma0dl9iakmktf91k9r3','',1386989104,36000),('ar55ojt5lhgq2otdof19cdreo1','',1383217313,36000),('au5jt5ekdj2qm84kvs6tonpl53','',1386165535,36000),('b4atfpebdnk3pqcimko07svr95','',1387161904,36000),('b7nngdiqmig7ambttcupbau463','',1386960256,36000),('b9edi7d37e1ouhulvrllbd58l4','',1386902713,36000),('bgd6pdlhcelvqfmc32t463soe5','',1382971679,36000),('bgdkb7i0me38g2idm8vjo6hh82','',1387222456,36000),('bh0o60brprlb7i1c84umasm361','',1387039374,36000),('blppqh0q92p0ri6bivo99v6b76','',1386841189,36000),('bmhd22llbvsqgtsa6rlb7vddr7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c9b137b3283841c79769af645d54473a\";}',1383086940,36000),('bok8ponpsn5mcie4c9jqtis4o1','',1386945810,36000),('bor73mguerrs75ve0ai9els177','',1386757980,36000),('bqnv44u81dkujkhiak8p2cj4d2','',1387147867,36000),('bvr4tt5p7vf2vm5doda89no1l7','',1387076779,36000),('c0jcq6du33v8iu4ivi05cgiua3','',1387222092,36000),('c3vvqfm8bgok26lj314eahmgp7','',1386591921,36000),('c54ig823rai1u2on1be2l96hv6','',1386298697,36000),('c8r3qvvc7tdhf2450gctn1hg61','',1387305241,36000),('c8sb8sn943t6oqe9m54kcb78j2','',1387169070,36000),('ce5lnmrpsj0crg3okmh0ecuro1','',1387194156,36000),('cfp6a6j0nbakni4ni9t3hart16','',1382986396,36000),('cmjlucjutc7ubd6p4d1us8ja91','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"8d3152b66562a8eed37c06bd0522362e\";}',1383025701,36000),('ctc4v4otrde822vtpr5ogd9j33','',1386702269,36000),('cti8irm7rf4vi359negolip960','',1386490333,36000),('cu2quo7ts284nl0vn5pjfmkrq2','',1386661714,36000),('cum1tevbspvppeklbc5vi57095','',1383202871,36000),('d881sv1sh032h57p3sragsbss4','',1387284278,36000),('ddepr9pi564sokjeam4nat0cr4','',1383134664,36000),('dv8lq875j9c47erbqkda2qsdk0','',1386486959,36000),('e1cigi7iukk332t3up00qskq50','',1387260982,36000),('e2vme9j2bqj2lbnadjfdqkg0u7','',1386909878,36000),('e36a3eaufo9tmjg2q8ut9i7ia2','',1386556983,36000),('e72q8ebte57mp8ras55jcre6n0','Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"397b088429e1f61bfdd82b8e1491805b\";}Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"2\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4006\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:57:12\";s:8:\"right_id\";s:1:\"4\";s:7:\"left_id\";s:1:\"3\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386693909,36000),('eaig8rbudedrui7cmrrcuecdj5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"091afb01dd435f7a885b5be9a69361b9\";}',1383056280,36000),('eedb2ff6an61k6477d6e3q9ds4','',1387010709,36000),('eej11s96jej2qf62gon2mq5ln3','Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"ab7da15f40752af699b1907e95bf1e55\";}Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:2:\"13\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"AlAli\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4004\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:46:48\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386690015,36000),('ef061882uumcp95tpar6b1p292','',1387271499,36000),('ehrn09ek5u6qu8mvq962oatus2','',1386121466,36000),('eihdpkudud0od84pnilndmdov3','',1387097110,36000),('ej9plgge94ipkgqpdmo0mk6jd1','',1387197855,36000),('ekm7lj3b3sqau4j48k04m2o1v4','',1386763731,36000),('elqpfh1o7n7f7e886nn5bb37l1','',1387010706,36000),('em6khfa1lib8vqtn6gs9m8rbr2','',1387284276,36000),('eq2lk2t41mlpntvke68spvvjh2','',1383034961,36000),('eqdc5f6v9oie5qri4f0ckv8ck7','',1387127146,36000),('eqjoco19nksor6q3bf75j2pfe5','',1387034640,36000),('er650jqr349u9bjv0egkg75dj6','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"8\";s:9:\"firstname\";s:8:\"Abdullah\";s:10:\"fathername\";s:1:\"F\";s:10:\"middlename\";s:1:\"F\";s:10:\"familyname\";s:5:\"Fazaa\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40012\";s:11:\"national_id\";s:10:\"5454545454\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-10 16:40:51\";s:8:\"right_id\";s:2:\"14\";s:7:\"left_id\";s:2:\"13\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:4:\"1000\";s:6:\"gender\";s:4:\"male\";}}start_transaction|a:1:{s:11:\"transaction\";a:2:{s:4:\"type\";s:1:\"1\";s:7:\"account\";s:1:\"1\";}}',1386687666,36000),('eriu6bq68gh9g6oplemk48l9u0','',1387061040,36000),('f1o96t98v372uv6lbs47g6vjq5','',1386877928,36000),('f2uunnaor6er5i0jjlhf8sud91','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"20\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:1:\"M\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40025\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:05:19\";s:8:\"right_id\";s:2:\"18\";s:7:\"left_id\";s:2:\"17\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"700\";}}start_transaction|a:1:{s:11:\"transaction\";a:2:{s:4:\"type\";s:1:\"2\";s:7:\"account\";s:1:\"1\";}}',1383094843,36000),('f75f31cq93usn37nmfd7glvv86','',1386953062,36000),('fd2c4il24k5og1famig96eqh10','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"20\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:1:\"M\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40025\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:05:19\";s:8:\"right_id\";s:2:\"18\";s:7:\"left_id\";s:2:\"17\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"0\";s:12:\"receivelimit\";s:1:\"0\";}}',1382991102,36000),('fdtd67gkjghltebl3hgepakn85','',1387057794,36000),('fivl5u7279a0jlv5e1fg9snf22','',1386660823,36000),('fjl2rgh0tonss8r6rc158io494','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"13\";s:9:\"firstname\";s:8:\"Abdallah\";s:10:\"fathername\";s:4:\"Faiq\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:4:\"Faza\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40017\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 12:51:45\";s:8:\"right_id\";s:1:\"6\";s:7:\"left_id\";s:1:\"5\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"2\";s:12:\"receivelimit\";s:3:\"700\";}}',1383140914,36000),('flquhje59qkfm7206nbu9l70q6','',1387082615,36000),('fomer61bv62nafr9hcjhq926f1','',1386989101,36000),('fq53hh26qi2dtv4ongfg1v2sp2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"d5ed0dc871872b5acb1f2fef739d4986\";}',1383150361,36000),('fuof0q5pg2prtcvi3c224j81u0','',1387259106,36000),('g0q0c49moi3u0fsa3qthp96pg0','',1383209927,36000),('g3o5d5p6ljt1iokurt19023580','',1387169072,36000),('g4apab4nduo60kbht91p4s76f6','',1387233827,36000),('g5so0rvlnbf828i7ir268193s6','',1386592157,36000),('g770vha1j0jokknb0f9qlonfo6','',1387274779,36000),('gdsilca4q8ah9dvk2caji8kqi5','',1387301656,36000),('ge08um6p01fkvbgoqc5k8fsq15','',1383030202,36000),('geffrhqs3ip313arjf96hqu047','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"2\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4006\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:57:12\";s:8:\"right_id\";s:1:\"4\";s:7:\"left_id\";s:1:\"3\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386689475,36000),('ggiv4isfju90td9vin6cqinct7','',1387147453,36000),('gi9dtpvnlmoind2n18bp71fi62','',1387091928,36000),('gikca2cf6jbjasrt37g3cluln0','',1382969888,36000),('gkktjd8dplgq03qivckmnsfo66','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:2:\"13\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"AlAli\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4004\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:46:48\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386802943,36000),('gtbi7ff3qap5lmhsvmfhednqm2','',1386095187,36000),('hh2bofdc61mlq1paori563q144','',1387262652,36000),('hilkiet054oloa3k7a6r58ut62','',1386996270,36000),('hkpj6fs8uu7bfa3eomi18ngpm2','',1387031857,36000),('hm527c8fbutviuitg61dfsjms2','',1387154676,36000),('hrcl3tr9ogkmcj9dbii0u0p8b4','',1386573698,36000),('hrcm7ir2ar1k1g50vfqbp1kfp3','',1386771640,36000),('i4doe6mlocd6p857rhimmbjja3','',1387082656,36000),('i5hrjpbsqbqb4jn1djnj3i8gs6','',1387003410,36000),('i60sooh5bo0ol60c8vuvf6m6l1','',1387305890,36000),('if4nabdvfe5p7e1bspkstf8tc0','',1387274779,36000),('iggnrbrcrnrolhm4vmpfcc8oh5','',1383118620,36000),('ik36531cu6ja0072371uvkmiu7','',1386960257,36000),('ilt6oqijhdk6hsemii9skc4gg3','',1386946825,36000),('io4ksml4q1blfrf2fglcealbl2','',1386701968,36000),('iq9fuddoinjugbh08eh472khf7','',1386826458,36000),('it17tcgmq47ro4tlq6oi96k2e4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}',1382806799,36000),('j5jh2ll4t7fdfji3hh29jn05k0','',1387255489,36000),('j8feb5ck8es016ss07sqnuaa42','',1387079688,36000),('jb6rtku4d77pr111nm7bcs8tj5','',1383220067,36000),('jdf7v43sdt1hc02e6cdh07qq31','',1387059710,36000),('jdfm30bj99dhlekjefnp0uotj0','',1386172193,36000),('jhdtsstra0s4hpm4786obe9k04','',1387111459,36000),('jitrlkjhvnrpr6ivjgd5ubppf2','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"19\";s:9:\"firstname\";s:5:\"Murad\";s:10:\"fathername\";s:1:\"s\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Obaid\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40024\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:00:19\";s:8:\"right_id\";s:2:\"10\";s:7:\"left_id\";s:1:\"9\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"700\";}}',1383217386,36000),('jj74en3cis4ks8v1jnt1ii1kf3','',1387272884,36000),('jjr0i6lp4tvjrld4jrn5nliun2','',1386302307,36000),('jn4i33tf33pnic4nr1edths8a7','',1386599451,36000),('jv9k7ldl7td1rfsa6mtus7k5k3','',1386761076,36000),('jvgrf8ar0fsm4msq71hi2j3ct1','',1387190886,36000),('k4v3al4utmq46nfrokgebbrgi2','',1382980770,36000),('k50oe5ebeqcnku43gsmdpm9ge1','',1387277378,36000),('k6mbm0rp3qir9r48h26qt542u4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"3fe0d0fd88bb160781e2c6d16e5a2c4a\";}',1386689500,36000),('k6r50sm4lr0qhambu9pa8rn0g5','',1386701503,36000),('kejn1hqtmjdrsmj8nn11alm6o5','',1387133044,36000),('ker34s4j4s5ns7muoe93cjh713','',1387222081,36000),('kmam9bm2hs2tnecu74c3h374l2','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"19\";s:9:\"firstname\";s:5:\"Murad\";s:10:\"fathername\";s:1:\"s\";s:10:\"middlename\";s:0:\"\";s:10:\"familyname\";s:5:\"Obaid\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40024\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 13:00:19\";s:8:\"right_id\";s:2:\"10\";s:7:\"left_id\";s:1:\"9\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"700\";}}',1383220607,36000),('kmldbl6nsb8bdc5v6cu0qq8ap2','',1386771261,36000),('kn7d705oi0h5aff5h938pp5mc2','',1386506056,36000),('ksb7gelvi4md9t1tdp8lriokn5','',1387024483,36000),('kv22hpptd5k4tf7ect0nks4h91','',1386119933,36000),('kvgoqtvnr89skdnibvnn8busc0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"d7804b8edb70f046af8a808aed7af2e8\";}',1385994147,36000),('l5mclrilpar0hm13uuen51rgo1','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"287c617620dab1030fbb71b53d907f9c\";}',1386768642,36000),('l5r08277ojh19ju65o61359qm4','',1386680862,36000),('l6a4d2mthsq88ss54k7jf7k4b5','',1387154678,36000),('l6ujho6aj2ehj112hmcc0cjb13','',1387056439,36000),('l9disu2f3krutbii6u42nfu2t1','',1386761481,36000),('la189rvbk6nis0h8085oaqpc47','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"cb3634d025917422834bbc38290988a3\";}',1382990202,36000),('ldm0bnmuadtfhpfkumsbcgcjd6','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"15\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:1:\"d\";s:10:\"middlename\";s:1:\"M\";s:10:\"familyname\";s:5:\"AlAli\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40019\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 12:51:39\";s:8:\"right_id\";s:1:\"4\";s:7:\"left_id\";s:1:\"3\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"2\";s:12:\"receivelimit\";s:3:\"500\";}}',1385906605,3600),('lg3mi6l31mln5ekvn2okvvk7i6','loginNotification|a:1:{s:7:\"message\";s:50:\"Username or Password incorrect please retype again\";}Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"8f9d75ddb0b668325de557629ce18cd3\";}',1386604952,36000),('lgp9jd1sncqmu2nl6c3fggo1u6','',1386691396,36000),('lgq4h76htpig1jeifnht8akqg0','',1387104270,36000),('lk887lvk798qllc3gooqieeb23','',1387233826,36000),('ln58eoefgnanj09412h8luqir0','',1386821549,36000),('lqchr4a12sim92dvsnhm73upn3','',1387053900,36000),('luta6kicsa9hfkpegfav0nal33','',1387039374,36000),('lvraekd7maprqki78ar61as097','',1386701436,36000),('m0efff5ukt1lfp3ra2eacnjin7','',1382874468,36000),('m9siu1cjjmpqrob6bodjhh0vm4','',1386997612,36000),('mfh0oq6kp101gfs1kqgoeeqp20','',1386930064,36000),('mh6889g80ond3r1qaduqgu33o5','',1386137294,36000),('ml2tdsucso1pn4s4p3f1vobsp5','',1386686825,36000),('mlm9rlv2ejmk965d9l79dvfu13','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":22:{s:9:\"client_id\";s:2:\"12\";s:9:\"firstname\";s:7:\"Abdulah\";s:10:\"fathername\";s:5:\"Samer\";s:10:\"middlename\";s:1:\"E\";s:10:\"familyname\";s:7:\"Abutouq\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:5:\"40016\";s:7:\"bank_id\";s:1:\"4\";s:13:\"creation_date\";s:19:\"2013-10-21 12:42:34\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1383033615,36000),('mm5al4pr2gpk70g807ghv5joc7','',1386735887,36000),('mr43b66c19bem4hmfj9j5rdl94','',1387113650,36000),('mrilsu6mvhl32hee267j55a930','',1386518892,36000),('mskr1a0ppf4ssc133m672kudl5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"dcca36495953e266eb8ac391d1b38822\";}',1383138296,36000),('mv52krgsr9et6t3v6l6glns6a7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"97e89aba7e28714d9d08f8bcee1b8bdc\";}',1382875978,36000),('mvt9o118qkbo2qt1rddpg6be42','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"5\";s:9:\"firstname\";s:5:\"Murad\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"Obaid\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4009\";s:11:\"national_id\";s:10:\"9991111222\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-09 17:57:33\";s:8:\"right_id\";s:1:\"8\";s:7:\"left_id\";s:1:\"7\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386684953,36000),('n0atqolf9lrdvjo5qksv6pbgf6','',1386981850,36000),('n2163n1dhr4bjamtpmqt0kso86','',1383203172,36000),('ncqpvp4cf3lg0akofg711ruid1','',1387241153,36000),('nf5bo0jgqv54gerd8oh16tkps4','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:2:\"13\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"AlAli\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4004\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:46:48\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1386673577,36000),('ngpsp6ril2qkjj0n1tl95t0pb1','',1387298455,36000),('nqfmt1qgojn0e50h6nf2711rb1','',1386974632,36000),('nrjlenbburob8phamdv1s172f3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"877ba4a740f44bd6af923ec35756454e\";}',1387304924,36000),('nrnisr7gjqrpvmrcilne1p80q0','',1387205121,36000),('ntaq4crd9c1srqbq6gkcmj7ah0','',1383074782,36000),('ntg7de25vjkucs61o37m6p7gp4','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"2\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"Duksi\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4006\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:57:12\";s:8:\"right_id\";s:1:\"4\";s:7:\"left_id\";s:1:\"3\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}start_transaction|a:2:{s:11:\"transaction\";a:2:{s:4:\"type\";s:1:\"1\";s:7:\"account\";s:1:\"1\";}s:4:\"step\";i:2;}',1386757938,36000),('o108820pqdrid4bise9q24vp17','',1387133043,36000),('o385598neiclt5uc13ja7tvep6','',1387111458,36000),('odv00cmd0h5ea7dnapikcm7p16','',1387280262,36000),('oh3pv3tlhi780dvle3em1dqlo0','',1383143295,36000),('oi2u7n4af17q9f8gsv2d74k2r2','',1386595183,36000),('olg5mm6rm9q72n5847drrmipm6','',1386703032,36000),('on0s8maa519hfbriojrqiptr43','',1383153664,36000),('ooiid19asflvqkf138fflg4li4','',1387280345,36000),('oq5lfe234dchj6fpu935mu6hh2','',1385991962,36000),('ot7pqmnbmegaaruaa08gku1ii6','',1387070897,36000),('p7drjhfmqjrh5658hkq26a5186','',1387082658,36000),('pb703a7ttgm3gvm1id33oef6o6','',1386770438,36000),('pblie7ldqa13sdqjp5cpbu8rk3','',1383209926,36000),('pi1oeeefaq378cikpgege637o2','',1386390438,36000),('pocoo89vrvr61rbfnhtpu76dh0','',1386700045,36000),('ppjlhndjdg8pvqhhsuo4r3q2q5','',1387212240,36000),('pq7t0sbk2ege9b6mv14ctooee6','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"3df65fa27d4001457048b842ccc405c6\";}',1382914545,36000),('pvtasg9oqecg4ulbu5oqltnrc7','',1386452575,36000),('q0gtbnk90a7918otk18nb7j3l1','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":24:{s:9:\"client_id\";s:1:\"5\";s:9:\"firstname\";s:5:\"Murad\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"Obaid\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4009\";s:11:\"national_id\";s:10:\"9991111222\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-09 17:57:33\";s:8:\"right_id\";s:1:\"8\";s:7:\"left_id\";s:1:\"7\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";s:6:\"gender\";s:4:\"male\";}}',1387304952,36000),('q6a88jb2fffhvkj74tmror6637','',1387140293,36000),('qbbpothsrb6bb62asbfdklem05','',1385893530,36000),('qc3u293jla3rcjrpea3jk8ffc2','',1387298672,36000),('qif9a1ieeb517lb4kg2m66mc04','',1383133077,36000),('qm3nppbjvarjsotadf153prc72','',1383167457,36000),('qmkgln84dsrgt1d5ckqgpkccq3','',1386950330,36000),('qs37vhq31vil86e8ujm8gom8f2','',1387066145,36000),('quuotlmg34ijd4t799ebj6u776','',1387124798,36000),('r334u2o8ev15p2oet93d80hcr7','',1386160876,36000),('r4j4rhth6ht9nre4rh49r66mp0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4492f9a87e312b6cc09c75dadf0e0171\";}',1386673793,36000),('r78qbdlr3m1tgnmbk45aerlum1','',1387307792,36000),('r8o6o6onrcq39os1bpradipo56','',1387162722,36000),('raidg4gkcgn7pjsqupu9rrmdf7','',1386474350,36000),('rcf5n1o57c2bop0nssjm95hvh4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c9e75e59866e07f27ee24001514c26b3\";}',1383209947,36000),('rg2q6gu1rv71v1i24vtg9ld124','',1387111796,36000),('rhhkap3qmktld1rp8gaefebe54','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"374044e1c462c77b6ed2bcc44aabe0eb\";}',1383172991,36000),('ro90bnhf7d6ffqcc29i7lk8m32','',1387281524,36000),('rt7runhglfr96k3qufe9a92923','',1387053897,36000),('ruhcdjqongkb4nipiktvc6i0s3','',1387029451,36000),('rvje1ksb7ss5657rs7hc01l8u7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}',1382806253,36000),('s0v6lethj4p5on5dd15l8grad0','',1387277102,36000),('s14irrj32br31tgs6h84famuo4','',1383024937,36000),('s74kancp48j8jnbgk3gle2djr7','Zend_Auth|a:1:{s:7:\"storage\";O:8:\"stdClass\":23:{s:9:\"client_id\";s:2:\"13\";s:9:\"firstname\";s:4:\"Alaa\";s:10:\"fathername\";s:3:\"PSF\";s:10:\"middlename\";s:3:\"PSF\";s:10:\"familyname\";s:5:\"AlAli\";s:4:\"slug\";s:0:\"\";s:7:\"mymo_id\";s:4:\"4004\";s:11:\"national_id\";s:1:\"0\";s:7:\"bank_id\";s:1:\"3\";s:13:\"creation_date\";s:19:\"2013-12-01 18:46:48\";s:8:\"right_id\";s:1:\"2\";s:7:\"left_id\";s:1:\"1\";s:9:\"is_active\";s:1:\"1\";s:8:\"language\";s:2:\"en\";s:11:\"companyname\";s:1:\" \";s:3:\"mit\";s:1:\" \";s:10:\"authorized\";s:1:\" \";s:7:\"co_type\";s:1:\" \";s:10:\"co_address\";s:1:\" \";s:10:\"short_code\";N;s:9:\"user_type\";s:1:\"1\";s:4:\"fees\";s:1:\"1\";s:12:\"receivelimit\";s:3:\"500\";}}',1386079417,36000),('s7a2ll28apdvf1ht5ifjbmkj60','',1387273939,36000),('s8p33guvggl654rfirb2j900k2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"db3f7e552f91093babe19e5bc91ca622\";}',1383185290,36000),('sfuqi43f7i8b85flt31p5r6ba0','',1386700120,36000),('sgvsutp4vb0b1iv1efp5uqueg5','',1387261342,36000),('si0heuau8b3l6j45e68ed7lbk2','',1386839810,36000),('slqqe75jb2o3mlmcvrrdqd5n45','',1386967505,36000),('sr502mkpsb0nhrsqu3uo3ejvt3','',1387118700,36000),('ssq7kk2us350hjrm2idgejetp6','',1386953063,36000),('sufh5n5ob9782knm6hjhr603o2','',1386145291,36000),('svofclrvm6l37ugkhelo2acul1','',1387075593,36000),('t0u9bjrpj6od7mt97nqlf4dkm2','',1387103133,36000),('t2ehpmf7l3sbuntfk1l674djn2','',1387216776,36000),('t3e58f4mpci129fajlh3bge440','',1383135165,36000),('taghokji2njsi3bb0sl99rljn0','',1387125861,36000),('te5doeqbln3n945su3o9060ep7','',1386761093,36000),('thn9oer5aspu94oab99ecmaun6','',1386345300,36000),('tqimbih9sevt46fl3ggbdftcb6','',1386686727,36000),('tuqhn7uah678ajeumnact3ura3','',1386435852,36000),('tvv6latbg4mp3j1khl57n762v5','',1386974633,36000),('u17tdnlmepeavb0ned0ltrc183','',1386947631,36000),('u9rko0unq22qpt742c7mbhj2n2','',1383133590,36000),('ubr2gjr0p39r205apsrl5a2ld7','',1386181494,36000),('uc1pjd0mn3d7acur88d6okar53','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"38fb3e7c03ba7c0a2e95ab2af49b42f3\";}',1385880754,36000),('ue8aooq68s5u9hk9v15bhinfh3','',1386686727,36000),('uetnm5ng3cv1elkc3khdqa5hu0','',1386392287,36000),('uf1vd24ns0tjb6l7ff9t35k8v4','',1387176262,36000),('uh3qjhbbq6he7312uh60u1hvv0','',1387154682,36000),('ui4m40os9ct2n9ic3b10e6ft53','',1386761087,36000),('uoq7abve2m57hrfvv9fgki9hf3','',1387269902,36000),('up51d08e97u5g2e0ko3n3q7fa5','',1386617833,36000),('uq8ocjoljan5bpkht8jie1aur3','',1383130549,36000),('urqu1u6ka8p46km2b0n6lg93e0','',1386641507,36000),('uv5hv7c3pccrcjimnuffnc9it7','',1387125102,36000),('v1e519cg34nj6dvkjkcs4gf2d6','',1383158318,36000),('v1fpa62in5i349ts3fk0o2m767','',1382879366,36000),('v1t98pp6rts2rb0g8qjjm5s0u0','loginNotification|a:1:{s:7:\"message\";s:50:\"Username or Password incorrect please retype again\";}Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c6416530574e686af696bd6112c57f95\";}',1386067386,36000),('v49369r36t97m0t7t1eg42pfe3','',1387226628,36000),('v7e83fclhitdk69f5drkd1a703','',1387089823,36000),('v9v1kea06opqgs8dujv3uc4ns0','',1383202605,36000),('vcaqtd2ife9ic428dpt4uhdjn0','',1387161901,36000),('vrna238n4nhs3jthrcaps97k56','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}__ZF|a:1:{s:42:\"Mymo_Controller_Action_Helper_Csrfsaltcsrf\";a:1:{s:3:\"ENT\";i:1382858474;}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4c3d906f687e194d37660fddb424d41d\";}',1382858229,36000);
/*!40000 ALTER TABLE `core_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_target`
--

DROP TABLE IF EXISTS `core_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_target` (
  `target_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target_module` varchar(100) DEFAULT NULL,
  `target_name` varchar(255) NOT NULL,
  `description` text,
  `hook_module` varchar(100) DEFAULT NULL,
  `hook_name` varchar(100) NOT NULL,
  `hook_type` enum('action','filter') DEFAULT 'action',
  PRIMARY KEY (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_target`
--

LOCK TABLES `core_target` WRITE;
/*!40000 ALTER TABLE `core_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_translation`
--

DROP TABLE IF EXISTS `core_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_translation` (
  `translation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_class` varchar(100) NOT NULL,
  `source_item_id` int(11) NOT NULL,
  `language` varchar(10) DEFAULT NULL,
  `source_language` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `idx_item` (`item_id`,`item_class`),
  UNIQUE KEY `idx_source_item` (`item_class`,`source_item_id`,`source_language`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_translation`
--

LOCK TABLES `core_translation` WRITE;
/*!40000 ALTER TABLE `core_translation` DISABLE KEYS */;
INSERT INTO `core_translation` VALUES (1,13,'Client_Models_Client',13,'en',NULL),(2,2,'Client_Models_Client',2,'en',NULL),(3,3,'Client_Models_Client',3,'en',NULL),(4,5,'Client_Models_Client',5,'en',NULL),(5,6,'Client_Models_Client',6,'en',NULL),(6,7,'Client_Models_Client',7,'en',NULL),(7,8,'Client_Models_Client',8,'en',NULL),(8,4,'Client_Models_Client',4,'en',NULL);
/*!40000 ALTER TABLE `core_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `logged_in_date` datetime DEFAULT NULL,
  `is_online` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,1,'admin','6152afbe654c37ad257492ea71cde69a','Administrator','alaa_bmw11@hotmail.com',1,NULL,NULL,0),(2,2,'bankofjordan','5c34bfad2a8589a34dbd253f321b8b13','Alaa','test@test.com',1,'2012-07-15 15:13:26',NULL,0);
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_widget`
--

DROP TABLE IF EXISTS `core_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `module` varchar(100) NOT NULL,
  `description` text,
  `thumbnail` text,
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `license` text,
  PRIMARY KEY (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_widget`
--

LOCK TABLES `core_widget` WRITE;
/*!40000 ALTER TABLE `core_widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` int(2) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `shortcut` varchar(5) NOT NULL,
  `operator_ip` varchar(255) NOT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `language` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT 'is operator',
  `is_active` enum('0','1','2') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Jordan',400,160,'JO','192.168.15.150',1,2,0,NULL,'1','1'),(2,'United Arab Emirates',1,323,'AE','localhost',3,4,0,NULL,'0','0'),(3,'Kuwait',2,0,'KW','',5,6,0,NULL,'0','0'),(4,'United States',840,325,'USD','localhost',7,8,NULL,NULL,'0','0');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `currency_number` int(11) NOT NULL,
  `soundfile_en` varchar(255) DEFAULT NULL,
  `soundfile_ar` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL,
  `default` enum('0','1') NOT NULL,
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (2,'Afghanistan','AFN',971,NULL,NULL,'1','0',0,0),(3,'Afghanistan','AFA',4,NULL,NULL,'1','0',0,0),(4,'Albania','ALK',8,NULL,NULL,'1','0',0,0),(5,'Albania','ALL',8,NULL,NULL,'1','0',0,0),(6,'Algeria','DZD',12,NULL,NULL,'1','0',0,0),(7,'American Samoa','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(8,'Andorra','ADF',20,NULL,NULL,'1','0',0,0),(9,'Andorra','ADP',20,NULL,NULL,'1','0',0,0),(10,'Andorra','EUR',978,NULL,NULL,'1','0',0,0),(11,'Angola','AOR',982,NULL,NULL,'1','0',0,0),(12,'Angola','AON',24,NULL,NULL,'1','0',0,0),(13,'Angola','AOA',973,NULL,NULL,'1','0',0,0),(14,'Anguilla','XCD',951,NULL,NULL,'1','0',0,0),(15,'Antigua and Barbuda','XCD',951,NULL,NULL,'1','0',0,0),(16,'Argentina','ARA',32,NULL,NULL,'1','0',0,0),(17,'Argentina','ARS',32,NULL,NULL,'1','0',0,0),(18,'Argentina','ARL',32,NULL,NULL,'1','0',0,0),(19,'Argentina','ARM',32,NULL,NULL,'1','0',0,0),(20,'Argentina','ARP',32,NULL,NULL,'1','0',0,0),(21,'Armenia','AMD',51,NULL,NULL,'1','0',0,0),(22,'Aruba','AWG',533,NULL,NULL,'1','0',0,0),(23,'Australia','AUD',36,NULL,NULL,'1','0',0,0),(24,'Austria','ATS',40,NULL,NULL,'1','0',0,0),(25,'Austria','EUR',978,NULL,NULL,'1','0',0,0),(26,'Azerbaijan','AZM',31,NULL,NULL,'1','0',0,0),(27,'Azerbaijan','AZN',944,NULL,NULL,'1','0',0,0),(28,'Bahamas','BSD',44,NULL,NULL,'1','0',0,0),(29,'Bahrain','BHD',48,NULL,NULL,'1','0',0,0),(30,'Bangladesh','BDT',50,NULL,NULL,'1','0',0,0),(31,'Barbados','BBD',52,NULL,NULL,'1','0',0,0),(32,'Belarus','BYR',974,NULL,NULL,'1','0',0,0),(33,'Belgium','BEC',993,NULL,NULL,'1','0',0,0),(34,'Belgium','BEF',56,NULL,NULL,'1','0',0,0),(35,'Belgium','BEL',992,NULL,NULL,'1','0',0,0),(36,'Belgium','EUR',978,NULL,NULL,'1','0',0,0),(37,'Belize','BZD',84,NULL,NULL,'1','0',0,0),(38,'Benin','XOF',952,NULL,NULL,'1','0',0,0),(39,'Bermuda','BMD',60,NULL,NULL,'1','0',0,0),(40,'Bhutan','INR',356,NULL,NULL,'1','0',0,0),(41,'Bhutan','BTN',64,NULL,NULL,'1','0',0,0),(42,'Bolivia, Plurinational State Of','BOP',68,NULL,NULL,'1','0',0,0),(43,'Bolivia, Plurinational State Of','BOB',68,NULL,NULL,'1','0',0,0),(44,'Bolivia, Plurinational State Of','BOV',984,NULL,NULL,'1','0',0,0),(45,'Bonaire, Sint Eustatius and Saba','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(46,'Bosnia and Herzegovina','BAM',977,NULL,NULL,'1','0',0,0),(47,'Botswana','BWP',72,NULL,NULL,'1','0',0,0),(48,'Bouvet Island','NOK',578,NULL,NULL,'1','0',0,0),(49,'Brazil','BRC',986,NULL,NULL,'1','0',0,0),(50,'Brazil','BRB',986,NULL,NULL,'1','0',0,0),(51,'Brazil','BRL',986,NULL,NULL,'1','0',0,0),(52,'British Indian Ocean Territory','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(53,'Brunei Darussalam','BND',96,NULL,NULL,'1','0',0,0),(54,'Bulgaria','BGN',975,NULL,NULL,'1','0',0,0),(55,'Bulgaria','BGJ',100,NULL,NULL,'1','0',0,0),(56,'Bulgaria','BGK',100,NULL,NULL,'1','0',0,0),(57,'Bulgaria','BGL',100,NULL,NULL,'1','0',0,0),(58,'Burkina Faso','XOF',952,NULL,NULL,'1','0',0,0),(59,'Burundi','BIF',108,NULL,NULL,'1','0',0,0),(60,'Cambodia','KHR',116,NULL,NULL,'1','0',0,0),(61,'Cameroon','XAF',950,NULL,NULL,'1','0',0,0),(62,'Canada','CAD',124,NULL,NULL,'1','0',0,0),(63,'Cape Verde','CVE',132,NULL,NULL,'1','0',0,0),(64,'Cayman Islands','KYD',136,NULL,NULL,'1','0',0,0),(65,'Central African Republic','XAF',950,NULL,NULL,'1','0',0,0),(66,'Chad','XAF',950,NULL,NULL,'1','0',0,0),(67,'Chile','CLP',152,NULL,NULL,'1','0',0,0),(68,'Chile','CLF',990,NULL,NULL,'1','0',0,0),(69,'China','CNX',156,NULL,NULL,'1','0',0,0),(70,'China','CNY',156,NULL,NULL,'1','0',0,0),(71,'Christmas Island','AUD',36,NULL,NULL,'1','0',0,0),(72,'Cocos (Keeling) Islands','AUD',36,NULL,NULL,'1','0',0,0),(73,'Colombia','COP',170,NULL,NULL,'1','0',0,0),(74,'Colombia','COU',970,NULL,NULL,'1','0',0,0),(75,'Comoros','KMF',174,NULL,NULL,'1','0',0,0),(76,'Congo','XAF',950,NULL,NULL,'1','0',0,0),(77,'Congo, The Democratic Republic Of The','CDF',976,NULL,NULL,'1','0',0,0),(78,'Cook Islands','NZD',554,NULL,NULL,'1','0',0,0),(79,'Costa Rica','CRC',188,NULL,NULL,'1','0',0,0),(80,'Croatia','HRK',191,NULL,NULL,'1','0',0,0),(81,'Cuba','CUP',192,NULL,NULL,'1','0',0,0),(82,'Cuba','CUC',931,NULL,NULL,'1','0',0,0),(83,'Cura?ao','ANG',532,NULL,NULL,'1','0',0,0),(84,'Cyprus','CYP',196,NULL,NULL,'1','0',0,0),(85,'Cyprus','EUR',978,NULL,NULL,'1','0',0,0),(86,'Czech Republic','CZK',203,NULL,NULL,'1','0',0,0),(87,'Czechoslovak Socialist Republic','CSK',200,NULL,NULL,'1','0',0,0),(88,'Czechoslovak Socialist Republic','CSJ',200,NULL,NULL,'1','0',0,0),(89,'C?te D\'Ivoire','XOF',952,NULL,NULL,'1','0',0,0),(90,'Denmark','DKK',208,NULL,NULL,'1','0',0,0),(91,'Djibouti','DJF',262,NULL,NULL,'1','0',0,0),(92,'Dominica','XCD',951,NULL,NULL,'1','0',0,0),(93,'Dominican Republic','DOP',214,NULL,NULL,'1','0',0,0),(94,'Ecuador','ECS',218,NULL,NULL,'1','0',0,0),(95,'Ecuador','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(96,'Egypt','EGP',818,NULL,NULL,'1','0',0,0),(97,'El Salvador','SVC',222,NULL,NULL,'1','0',0,0),(98,'El Salvador','SVC',316,NULL,NULL,'1','0',0,0),(99,'El Salvador','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(100,'Equatorial Guinea','XAF',950,NULL,NULL,'1','0',0,0),(101,'Equatorial Guinea','EQE',950,NULL,NULL,'1','0',0,0),(102,'Eritrea','ERN',232,NULL,NULL,'1','0',0,0),(103,'Estonia','EUR',978,NULL,NULL,'1','0',0,0),(104,'Estonia','EEK',233,NULL,NULL,'1','0',0,0),(105,'Ethiopia','ETB',230,NULL,NULL,'1','0',0,0),(106,'Falkland Islands (Malvinas)','FKP',238,NULL,NULL,'1','0',0,0),(107,'Faroe Islands','DKK',208,NULL,NULL,'1','0',0,0),(108,'Fiji','FJD',242,NULL,NULL,'1','0',0,0),(109,'Finland','EUR',978,NULL,NULL,'1','0',0,0),(110,'Finland','FIM',246,NULL,NULL,'1','0',0,0),(111,'France','EUR',978,NULL,NULL,'1','0',0,0),(112,'France','FRF',250,NULL,NULL,'1','0',0,0),(113,'France','XFO',250,NULL,NULL,'1','0',0,0),(114,'French Guiana','EUR',978,NULL,NULL,'1','0',0,0),(115,'French Polynesia','XPF',953,NULL,NULL,'1','0',0,0),(116,'French Southern Territories','EUR',978,NULL,NULL,'1','0',0,0),(117,'Gabon','XAF',950,NULL,NULL,'1','0',0,0),(118,'Gambia','GMD',270,NULL,NULL,'1','0',0,0),(119,'Georgia','GEL',981,NULL,NULL,'1','0',0,0),(120,'German Democratic Republic','DDM',278,NULL,NULL,'1','0',0,0),(121,'Germany','DEM',276,NULL,NULL,'1','0',0,0),(122,'Germany','EUR',978,NULL,NULL,'1','0',0,0),(123,'Ghana','GHS',936,NULL,NULL,'1','0',0,0),(124,'Ghana','GHC',936,NULL,NULL,'1','0',0,0),(125,'Gibraltar','GIP',292,NULL,NULL,'1','0',0,0),(126,'Greece','EUR',978,NULL,NULL,'1','0',0,0),(127,'Greece','GRD',300,NULL,NULL,'1','0',0,0),(128,'Greenland','DKK',208,NULL,NULL,'1','0',0,0),(129,'Grenada','XCD',951,NULL,NULL,'1','0',0,0),(130,'Guadeloupe','EUR',978,NULL,NULL,'1','0',0,0),(131,'Guam','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(132,'Guatemala','GTQ',320,NULL,NULL,'1','0',0,0),(133,'Guernsey','GBP',826,NULL,NULL,'1','0',0,0),(134,'Guinea','GNF',324,NULL,NULL,'1','0',0,0),(135,'Guinea','GNE',324,NULL,NULL,'1','0',0,0),(136,'Guinea-Bissau','XOF',952,NULL,NULL,'1','0',0,0),(137,'Guinea-Bissau','GWP',624,NULL,NULL,'1','0',0,0),(138,'Guyana','GYD',328,NULL,NULL,'1','0',0,0),(139,'Haiti','HTG',332,NULL,NULL,'1','0',0,0),(140,'Haiti','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(141,'Heard Island and McDonald Islands','AUD',36,NULL,NULL,'1','0',0,0),(142,'Holy See (Vatican City State)','EUR',978,NULL,NULL,'1','0',0,0),(143,'Honduras','HNL',340,NULL,NULL,'1','0',0,0),(144,'Hong Kong','HKD',344,NULL,NULL,'1','0',0,0),(145,'Hungary','HUF',348,NULL,NULL,'1','0',0,0),(146,'Iceland','ISK',352,NULL,NULL,'1','0',0,0),(147,'Iceland','ISJ',352,NULL,NULL,'1','0',0,0),(148,'India','INR',356,NULL,NULL,'1','0',0,0),(149,'Indonesia','IDR',360,NULL,NULL,'1','0',0,0),(150,'Iran, Islamic Republic Of','IRR',364,NULL,NULL,'1','0',0,0),(151,'Iraq','IQD',368,NULL,NULL,'1','0',0,0),(152,'Ireland','EUR',978,NULL,NULL,'1','0',0,0),(153,'Ireland','IEP',372,NULL,NULL,'1','0',0,0),(154,'Isle of Man','GBP',826,NULL,NULL,'1','0',0,0),(155,'Italy','EUR',978,NULL,NULL,'1','0',0,0),(156,'Italy','ITL',380,NULL,NULL,'1','0',0,0),(157,'Jamaica','JMD',388,NULL,NULL,'1','0',0,0),(158,'Japan','JPY',392,NULL,NULL,'1','0',0,0),(159,'Jersey','GBP',826,NULL,NULL,'1','0',0,0),(160,'Jordan','JOD',400,'sounds/currency/dinar','sounds/currency/dinar','1','1',0,0),(161,'Kazakhstan','KZT',398,NULL,NULL,'1','0',0,0),(162,'Kenya','KES',404,NULL,NULL,'1','0',0,0),(163,'Kiribati','AUD',36,NULL,NULL,'1','0',0,0),(164,'Korea, Democratic People\'s Republic Of','KPW',408,NULL,NULL,'1','0',0,0),(165,'Korea, Republic of','KRW',410,NULL,NULL,'1','0',0,0),(166,'Kuwait','KWD',414,NULL,NULL,'1','0',0,0),(167,'Kyrgyzstan','KGS',417,NULL,NULL,'1','0',0,0),(168,'Lao People\'s Democratic Republic','LAK',418,NULL,NULL,'1','0',0,0),(169,'Lao People\'s Democratic Republic','LAJ',418,NULL,NULL,'1','0',0,0),(170,'Latvia','LVL',428,NULL,NULL,'1','0',0,0),(171,'Lebanon','LBP',422,NULL,NULL,'1','0',0,0),(172,'Lesotho','LSL',426,NULL,NULL,'1','0',0,0),(173,'Lesotho','ZAR',710,NULL,NULL,'1','0',0,0),(174,'Liberia','LRD',430,NULL,NULL,'1','0',0,0),(175,'Libya','LYD',434,NULL,NULL,'1','0',0,0),(176,'Liechtenstein','CHF',756,NULL,NULL,'1','0',0,0),(177,'Lithuania','LTL',440,NULL,NULL,'1','0',0,0),(178,'Luxembourg','EUR',978,NULL,NULL,'1','0',0,0),(179,'Luxembourg','LUF',442,NULL,NULL,'1','0',0,0),(180,'Macao','MOP',446,NULL,NULL,'1','0',0,0),(181,'Macedonia, the Former Yugoslav Republic Of','MKD',807,NULL,NULL,'1','0',0,0),(182,'Macedonia, the Former Yugoslav Republic Of','MKN',807,NULL,NULL,'1','0',0,0),(183,'Madagascar','MGA',969,NULL,NULL,'1','0',0,0),(184,'Madagascar','MGF',450,NULL,NULL,'1','0',0,0),(185,'Malawi','MWK',454,NULL,NULL,'1','0',0,0),(186,'Malaysia','MYR',458,NULL,NULL,'1','0',0,0),(187,'Maldives','MVQ',462,NULL,NULL,'1','0',0,0),(188,'Maldives','MVR',462,NULL,NULL,'1','0',0,0),(189,'Mali','XOF',952,NULL,NULL,'1','0',0,0),(190,'Mali','MAF',952,NULL,NULL,'1','0',0,0),(191,'Malta','EUR',978,NULL,NULL,'1','0',0,0),(192,'Malta','MTL',470,NULL,NULL,'1','0',0,0),(193,'Marshall Islands','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(194,'Martinique','EUR',978,NULL,NULL,'1','0',0,0),(195,'Mauritania','MRO',478,NULL,NULL,'1','0',0,0),(196,'Mauritius','MUR',480,NULL,NULL,'1','0',0,0),(197,'Mayotte','EUR',978,NULL,NULL,'1','0',0,0),(198,'Mexico','MXP',484,NULL,NULL,'1','0',0,0),(199,'Mexico','MXN',484,NULL,NULL,'1','0',0,0),(200,'Mexico','MXV',979,NULL,NULL,'1','0',0,0),(201,'Micronesia, Federated States Of','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(202,'Moldova, Republic of','MDL',498,NULL,NULL,'1','0',0,0),(203,'Monaco','EUR',978,NULL,NULL,'1','0',0,0),(204,'Monaco','MCF',978,NULL,NULL,'1','0',0,0),(205,'Mongolia','MNT',496,NULL,NULL,'1','0',0,0),(206,'Montenegro','EUR',978,NULL,NULL,'1','0',0,0),(207,'Montserrat','XCD',951,NULL,NULL,'1','0',0,0),(208,'Morocco','MAD',504,NULL,NULL,'1','0',0,0),(209,'Mozambique','MZM',508,NULL,NULL,'1','0',0,0),(210,'Mozambique','MZN',943,NULL,NULL,'1','0',0,0),(211,'Myanmar','MMK',104,NULL,NULL,'1','0',0,0),(212,'Namibia','NAD',516,NULL,NULL,'1','0',0,0),(213,'Namibia','ZAR',710,NULL,NULL,'1','0',0,0),(214,'Nauru','AUD',36,NULL,NULL,'1','0',0,0),(215,'Nepal','NPR',524,NULL,NULL,'1','0',0,0),(216,'Netherlands','EUR',978,NULL,NULL,'1','0',0,0),(217,'Netherlands','NLG',528,NULL,NULL,'1','0',0,0),(218,'Netherlands Antilles','ANG',532,NULL,NULL,'1','0',0,0),(219,'New Caledonia','XPF',953,NULL,NULL,'1','0',0,0),(220,'New Zealand','NZD',554,NULL,NULL,'1','0',0,0),(221,'Nicaragua','NIO',558,NULL,NULL,'1','0',0,0),(222,'Niger','XOF',952,NULL,NULL,'1','0',0,0),(223,'Nigeria','NGN',566,NULL,NULL,'1','0',0,0),(224,'Niue','NZD',554,NULL,NULL,'1','0',0,0),(225,'Norfolk Island','AUD',36,NULL,NULL,'1','0',0,0),(226,'Northern Mariana Islands','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(227,'Norway','NOK',578,NULL,NULL,'1','0',0,0),(228,'Oman','OMR',512,NULL,NULL,'1','0',0,0),(229,'Pakistan','PKR',586,NULL,NULL,'1','0',0,0),(230,'Palau','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(231,'Panama','PAB',590,NULL,NULL,'1','0',0,0),(232,'Panama','PAB',590,NULL,NULL,'1','0',0,0),(233,'Panama','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(234,'Panama','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(235,'Papua New Guinea','PGK',598,NULL,NULL,'1','0',0,0),(236,'Paraguay','PYG',600,NULL,NULL,'1','0',0,0),(237,'People\'s Democratic Republic of Yemen','YDD',720,NULL,NULL,'1','0',0,0),(238,'Peru','PEN',604,NULL,NULL,'1','0',0,0),(239,'Peru','PEI',604,NULL,NULL,'1','0',0,0),(240,'Peru','PEH',604,NULL,NULL,'1','0',0,0),(241,'Philippines','PHP',608,NULL,NULL,'1','0',0,0),(242,'Pitcairn','NZD',554,NULL,NULL,'1','0',0,0),(243,'Poland','PLZ',616,NULL,NULL,'1','0',0,0),(244,'Poland','PLN',985,NULL,NULL,'1','0',0,0),(245,'Portugal','EUR',978,NULL,NULL,'1','0',0,0),(246,'Portugal','PTE',620,NULL,NULL,'1','0',0,0),(247,'Portugal','TPE',626,NULL,NULL,'1','0',0,0),(248,'Puerto Rico','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(249,'Qatar','QAR',634,NULL,NULL,'1','0',0,0),(250,'Romania','RON',946,NULL,NULL,'1','0',0,0),(251,'Romania','ROL',642,NULL,NULL,'1','0',0,0),(252,'Romania','ROK',642,NULL,NULL,'1','0',0,0),(253,'Russian Federation','RUB',643,NULL,NULL,'1','0',0,0),(254,'Rwanda','RWF',646,NULL,NULL,'1','0',0,0),(255,'R?union','EUR',978,NULL,NULL,'1','0',0,0),(256,'Saint Barth?lemy','EUR',978,NULL,NULL,'1','0',0,0),(257,'Saint Helena, Ascension and Tristan Da Cunha','SHP',654,NULL,NULL,'1','0',0,0),(258,'Saint Kitts And Nevis','XCD',951,NULL,NULL,'1','0',0,0),(259,'Saint Lucia','XCD',951,NULL,NULL,'1','0',0,0),(260,'Saint Martin (French Part)','EUR',978,NULL,NULL,'1','0',0,0),(261,'Saint Pierre And Miquelon','EUR',978,NULL,NULL,'1','0',0,0),(262,'Saint Vincent And The Grenadines','XCD',951,NULL,NULL,'1','0',0,0),(263,'Samoa','WST',882,NULL,NULL,'1','0',0,0),(264,'San Marino','EUR',978,NULL,NULL,'1','0',0,0),(265,'Sao Tome and Principe','STD',678,NULL,NULL,'1','0',0,0),(266,'Saudi Arabia','SAR',682,NULL,NULL,'1','0',0,0),(267,'Senegal','XOF',952,NULL,NULL,'1','0',0,0),(268,'Serbia','CSD',941,NULL,NULL,'1','0',0,0),(269,'Serbia','RSD',941,NULL,NULL,'1','0',0,0),(270,'Seychelles','SCR',690,NULL,NULL,'1','0',0,0),(271,'Sierra Leone','SLL',694,NULL,NULL,'1','0',0,0),(272,'Singapore','SGD',702,NULL,NULL,'1','0',0,0),(273,'Sint Maarten (Dutch part)','ANG',532,NULL,NULL,'1','0',0,0),(274,'Slovakia','EUR',978,NULL,NULL,'1','0',0,0),(275,'Slovakia','SKK',703,NULL,NULL,'1','0',0,0),(276,'Slovenia','EUR',978,NULL,NULL,'1','0',0,0),(277,'Slovenia','SIT',705,NULL,NULL,'1','0',0,0),(278,'Solomon Islands','SBD',90,NULL,NULL,'1','0',0,0),(279,'Somalia','SOS',706,NULL,NULL,'1','0',0,0),(280,'South Africa','ZAR',710,NULL,NULL,'1','0',0,0),(281,'South Africa','ZAL',991,NULL,NULL,'1','0',0,0),(282,'South Sudan','SSP',728,NULL,NULL,'1','0',0,0),(283,'Spain','EUR',978,NULL,NULL,'1','0',0,0),(284,'Spain','ESP',724,NULL,NULL,'1','0',0,0),(285,'Spain','ESA',996,NULL,NULL,'1','0',0,0),(286,'Spain','ESB',995,NULL,NULL,'1','0',0,0),(287,'Sri Lanka','LKR',144,NULL,NULL,'1','0',0,0),(288,'Sudan','SDD',736,NULL,NULL,'1','0',0,0),(289,'Sudan','SDG',938,NULL,NULL,'1','0',0,0),(290,'Sudan','SDP',938,NULL,NULL,'1','0',0,0),(291,'Suriname','SRD',968,NULL,NULL,'1','0',0,0),(292,'Suriname','SRG',740,NULL,NULL,'1','0',0,0),(293,'Svalbard And Jan Mayen','NOK',578,NULL,NULL,'1','0',0,0),(294,'Swaziland','SZL',748,NULL,NULL,'1','0',0,0),(295,'Sweden','SEK',752,NULL,NULL,'1','0',0,0),(296,'Switzerland','CHF',756,NULL,NULL,'1','0',0,0),(297,'Switzerland','CHE',947,NULL,NULL,'1','0',0,0),(298,'Switzerland','CHW',948,NULL,NULL,'1','0',0,0),(299,'Syrian Arab Republic','SYP',760,NULL,NULL,'1','0',0,0),(300,'Taiwan, Province Of China','TWD',901,NULL,NULL,'1','0',0,0),(301,'Tajikistan','TJS',972,NULL,NULL,'1','0',0,0),(302,'Tajikistan','TJR',762,NULL,NULL,'1','0',0,0),(303,'Tanzania, United Republic of','TZS',834,NULL,NULL,'1','0',0,0),(304,'Thailand','THB',764,NULL,NULL,'1','0',0,0),(305,'Timor-Leste','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(306,'Togo','XOF',952,NULL,NULL,'1','0',0,0),(307,'Tokelau','NZD',554,NULL,NULL,'1','0',0,0),(308,'Tonga','TOP',776,NULL,NULL,'1','0',0,0),(309,'Trinidad and Tobago','TTD',780,NULL,NULL,'1','0',0,0),(310,'Tunisia','TND',788,NULL,NULL,'1','0',0,0),(311,'Turkey','TRY',949,NULL,NULL,'1','0',0,0),(312,'Turkey','TRL',792,NULL,NULL,'1','0',0,0),(313,'Turkmenistan','TMM',795,NULL,NULL,'1','0',0,0),(314,'Turkmenistan','TMT',934,NULL,NULL,'1','0',0,0),(315,'Turks and Caicos Islands','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(316,'Tuvalu','AUD',36,NULL,NULL,'1','0',0,0),(317,'U.S.S.R.','RUR',810,NULL,NULL,'1','0',0,0),(318,'U.S.S.R.','SUR',810,NULL,NULL,'1','0',0,0),(319,'Uganda','UGX',800,NULL,NULL,'1','0',0,0),(320,'Uganda','UGS',800,NULL,NULL,'1','0',0,0),(321,'Ukraine','UAH',980,NULL,NULL,'1','0',0,0),(322,'Ukraine','UAK',804,NULL,NULL,'1','0',0,0),(323,'United Arab Emirates','AED',784,'sounds/currency/derham','sounds/currency/derham','1','0',0,0),(324,'United Kingdom','GBP',826,NULL,NULL,'1','0',0,0),(325,'United States','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(326,'United States','USN',997,NULL,NULL,'1','0',0,0),(327,'United States','USS',998,NULL,NULL,'1','0',0,0),(328,'United States Minor Outlying Islands','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(329,'Uruguay','UYU',858,NULL,NULL,'1','0',0,0),(330,'Uruguay','UYN',858,NULL,NULL,'1','0',0,0),(331,'Uruguay','UYI',940,NULL,NULL,'1','0',0,0),(332,'Uzbekistan','UZS',860,NULL,NULL,'1','0',0,0),(333,'Vanuatu','VUV',548,NULL,NULL,'1','0',0,0),(334,'Venezuela, Bolivarian Republic of','VEF',937,NULL,NULL,'1','0',0,0),(335,'Venezuela, Bolivarian Republic of','VEB',862,NULL,NULL,'1','0',0,0),(336,'Viet Nam','VND',704,NULL,NULL,'1','0',0,0),(337,'Viet Nam','VNC',704,NULL,NULL,'1','0',0,0),(338,'Virgin Islands, British','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(339,'Virgin Islands, U.S.','USD',840,'sounds/currency/dollar','sounds/currency/dollar','1','0',0,0),(340,'Wallis and Futuna','XPF',953,NULL,NULL,'1','0',0,0),(341,'Western Sahara','MAD',504,NULL,NULL,'1','0',0,0),(342,'Yemen','YER',886,NULL,NULL,'1','0',0,0),(343,'Yugoslavia','YUD',891,NULL,NULL,'1','0',0,0),(344,'Yugoslavia','YUM',891,NULL,NULL,'1','0',0,0),(345,'Zaire','ZRN',180,NULL,NULL,'1','0',0,0),(346,'Zaire','ZRZ',180,NULL,NULL,'1','0',0,0),(347,'Zambia','ZMW',894,NULL,NULL,'1','0',0,0),(348,'Zambia','ZMK',894,NULL,NULL,'1','0',0,0),(349,'Zimbabwe','ZWD',716,NULL,NULL,'1','0',0,0),(350,'Zimbabwe','ZWL',932,NULL,NULL,'1','0',0,0),(351,'Zimbabwe','ZWC',932,NULL,NULL,'1','0',0,0),(352,'','EUR',978,NULL,NULL,'1','0',0,0);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrasim`
--

DROP TABLE IF EXISTS `extrasim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extrasim` (
  `extrasim_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(25) NOT NULL,
  `transaction_limit` int(11) NOT NULL,
  `limitation_type` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `extension` int(11) NOT NULL,
  `accountnum` int(11) DEFAULT NULL,
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL,
  PRIMARY KEY (`extrasim_id`),
  UNIQUE KEY `phone` (`phone`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrasim`
--

LOCK TABLES `extrasim` WRITE;
/*!40000 ALTER TABLE `extrasim` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrasim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1,'Monthly','1'),(2,'Yearly','1'),(3,'One Time','1'),(4,'None','1');
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `fees_view`
--

DROP TABLE IF EXISTS `fees_view`;
/*!50001 DROP VIEW IF EXISTS `fees_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `fees_view` (
  `client_id` tinyint NOT NULL,
  `mymo_id` tinyint NOT NULL,
  `number_of_months` tinyint NOT NULL,
  `number_of_years` tinyint NOT NULL,
  `is_active` tinyint NOT NULL,
  `bank_id` tinyint NOT NULL,
  `fees` tinyint NOT NULL,
  `ip` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `limitation_type`
--

DROP TABLE IF EXISTS `limitation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limitation_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limitation_type`
--

LOCK TABLES `limitation_type` WRITE;
/*!40000 ALTER TABLE `limitation_type` DISABLE KEYS */;
INSERT INTO `limitation_type` VALUES (1,'By Day'),(2,'By Week'),(3,'By Transaction');
/*!40000 ALTER TABLE `limitation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mymo_id`
--

DROP TABLE IF EXISTS `mymo_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mymo_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mymo_id` int(11) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mymo_id` (`mymo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mymo_id`
--

LOCK TABLES `mymo_id` WRITE;
/*!40000 ALTER TABLE `mymo_id` DISABLE KEYS */;
INSERT INTO `mymo_id` VALUES (101,1009780426,'0'),(102,1000392415,'0'),(103,1006125304,'0'),(104,1008697425,'0'),(105,1003760024,'0'),(106,1008542137,'0'),(107,1003642758,'0'),(108,1000642138,'0'),(109,1006598014,'0'),(110,1002507846,'0'),(111,1007358192,'1'),(112,1005168400,'0'),(113,1007001948,'1'),(114,1006512097,'1'),(115,1003290786,'0'),(116,1009680452,'1'),(117,1009278036,'0'),(118,1000238594,'1'),(119,1003509782,'0'),(120,1000425673,'0'),(121,1004095721,'0'),(122,1007682351,'1'),(123,1004628150,'1'),(124,1001073549,'1'),(125,1008547913,'1'),(126,1008100493,'1'),(127,1008145297,'1'),(128,1004095682,'1'),(129,1006012539,'0'),(130,1000458679,'0'),(131,1003045182,'1'),(132,1006234175,'1'),(133,1008624035,'1'),(134,1009673240,'0'),(135,1008517436,'1'),(136,1009204163,'1'),(137,1008247659,'1'),(138,1000314297,'1'),(139,1000087325,'1'),(140,1003560297,'0'),(141,1003028574,'1'),(142,1004897251,'1'),(143,1000195238,'1'),(144,1001392685,'1'),(145,1002063594,'1'),(146,1008154763,'1'),(147,1007912805,'0'),(148,1005234081,'1'),(149,1001758360,'1'),(150,1009856317,'1'),(151,1004973521,'1'),(152,1009306458,'1'),(153,1004210035,'1'),(154,1002786395,'1'),(155,1005021638,'1'),(156,1002870935,'1'),(157,1007260148,'1'),(158,1005961824,'1'),(159,1005374891,'1'),(160,1003861402,'1'),(161,1004680935,'1'),(162,1004731692,'1'),(163,1000421637,'1'),(164,1009430821,'1'),(165,1006839510,'1'),(166,1007580162,'1'),(167,1002391480,'1'),(168,1001539470,'1'),(169,1000451923,'1'),(170,1008602341,'1'),(171,1006841502,'1'),(172,1000451826,'1'),(173,1007248105,'1'),(174,1009138706,'0'),(175,1004037891,'1'),(176,1001359604,'1'),(177,1001574260,'1'),(178,1002356098,'1'),(179,1001469235,'1'),(180,1008465791,'1'),(181,1003605427,'1'),(182,1009387152,'1'),(183,1007685149,'1'),(184,1004038792,'1'),(185,1000178329,'1'),(186,1005978104,'1'),(187,1007632800,'1'),(188,1002147038,'1'),(189,1006598107,'1'),(190,1002008139,'1'),(191,1002537910,'1'),(192,1009258740,'1'),(193,1000042581,'1'),(194,1009403652,'1'),(195,1008492300,'1'),(196,1008521943,'1'),(197,1007890243,'0'),(198,1003165704,'1'),(199,1001028549,'1'),(200,1001963408,'0');
/*!40000 ALTER TABLE `mymo_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mymo_lastused`
--

DROP TABLE IF EXISTS `mymo_lastused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mymo_lastused` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `mymo_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mymo_lastused`
--

LOCK TABLES `mymo_lastused` WRITE;
/*!40000 ALTER TABLE `mymo_lastused` DISABLE KEYS */;
INSERT INTO `mymo_lastused` VALUES (1,9,40012);
/*!40000 ALTER TABLE `mymo_lastused` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mymo_vip`
--

DROP TABLE IF EXISTS `mymo_vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mymo_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mymo_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mymo_id` (`mymo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mymo_vip`
--

LOCK TABLES `mymo_vip` WRITE;
/*!40000 ALTER TABLE `mymo_vip` DISABLE KEYS */;
INSERT INTO `mymo_vip` VALUES (1,1),(5,2),(2,3),(7,5),(3,22),(8,55),(4,222),(9,555),(10,5555);
/*!40000 ALTER TABLE `mymo_vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pricing` (
  `transactiontype_id` int(11) NOT NULL,
  `type` enum('1','2') DEFAULT '1',
  `amount` bigint(14) NOT NULL,
  PRIMARY KEY (`transactiontype_id`,`amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
INSERT INTO `pricing` VALUES (1,'1',1),(2,'2',10),(3,'1',1),(7,'1',2),(9,'2',10);
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prompt`
--

DROP TABLE IF EXISTS `prompt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prompt` (
  `prompt_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `soundfile_en` varchar(255) NOT NULL,
  `soundfile_ar` varchar(255) NOT NULL,
  `prompt` int(11) DEFAULT NULL,
  `is_active` enum('0','1','2') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = under approval',
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`prompt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prompt`
--

LOCK TABLES `prompt` WRITE;
/*!40000 ALTER TABLE `prompt` DISABLE KEYS */;
INSERT INTO `prompt` VALUES (4,'your-mymo-error','sounds/your-mymo-error-en','sounds/your-mymo-error-ar',NULL,'1',2,1,'en',NULL),(5,'3times-error','sounds/3times-error-en','sounds/3times-error-ar',NULL,'1',4,3,'en',NULL),(6,'all-services','sounds/all-services-en','sounds/all-services-ar',NULL,'1',6,5,'en',NULL),(7,'amount-prompt','sounds/amount-prompt-en','sounds/amount-prompt-ar',NULL,'1',8,7,'en',NULL),(8,'cannot-continue-error','sounds/cannot-continue-error-en','sounds/cannot-continue-error-ar',NULL,'1',10,9,'en',NULL),(9,'change-limit-prompt','sounds/change-limit-prompt-en','sounds/change-limit-prompt-ar',NULL,'1',12,11,'en',NULL),(10,'change-pin-prompt','sounds/change-pin-prompt-en','sounds/change-pin-prompt-ar',NULL,'1',14,13,'en',NULL),(11,'limit-error','sounds/limit-error-en','sounds/limit-error-ar',NULL,'1',16,15,'en',NULL),(12,'lost-extension-number-promot','sounds/lost-extension-number-promot-en','sounds/lost-extension-number-promot-ar',NULL,'1',18,17,'en',NULL),(13,'mall-bill-epayment-number-prompt','sounds/mall-bill-epayment-number-prompt-en','sounds/mall-bill-epayment-number-prompt-ar',NULL,'1',20,19,'en',NULL),(14,'mall-card-1','sounds/mall-card-1-en','sounds/mall-card-1-ar',NULL,'1',22,21,'en',NULL),(15,'mall-card-5','sounds/mall-card-5-en','sounds/mall-card-5-ar',NULL,'1',24,23,'en',NULL),(16,'mall-card-10','sounds/mall-card-10-en','sounds/mall-card-10-ar',NULL,'1',26,25,'en',NULL),(17,'mall-card-12','sounds/mall-card-12-en','sounds/mall-card-12-ar',NULL,'1',28,27,'en',NULL),(18,'mall-card-mada','sounds/mall-card-mada-en','sounds/mall-card-mada-ar',NULL,'1',30,29,'en',NULL),(19,'mall-companies-orange','sounds/mall-companies-orange-en','sounds/mall-companies-orange-ar',NULL,'1',32,31,'en',NULL),(20,'mall-companies-umniah','sounds/mall-companies-umniah-en','sounds/mall-companies-umniah-ar',NULL,'1',34,33,'en',NULL),(21,'mall-companies-zain','sounds/mall-companies-zain-en','sounds/mall-companies-zain-ar',NULL,'1',36,35,'en',NULL),(22,'mall-internet-prompt','sounds/mall-internet-prompt-en','sounds/mall-internet-prompt-ar',NULL,'1',38,37,'en',NULL),(23,'mall-prepaid-prompt','sounds/mall-prepaid-prompt-en','sounds/mall-prepaid-prompt-ar',NULL,'1',40,39,'en',NULL),(24,'mall-service-providers','sounds/mall-service-providers-en','sounds/mall-service-providers-ar',NULL,'1',42,41,'en',NULL),(25,'not-user-welcome','sounds/not-user-welcome-en','sounds/not-user-welcome-ar',NULL,'1',44,43,'en',NULL),(26,'receiver-prompt','sounds/receiver-prompt-en','sounds/receiver-prompt-ar',NULL,'1',46,45,'en',NULL),(27,'report-lost-callback-num','sounds/report-lost-callback-num-en','sounds/report-lost-callback-num-ar',NULL,'1',48,47,'en',NULL),(28,'report-lost-extension-prompt','sounds/report-lost-extension-prompt-en','sounds/report-lost-extension-prompt-ar',NULL,'1',50,49,'en',NULL),(29,'report-lost-phone-pin-prompt','sounds/report-lost-phone-pin-prompt-en','sounds/report-lost-phone-pin-prompt-ar',NULL,'1',52,51,'en',NULL),(30,'report-lost-pin-prompt','sounds/report-lost-pin-prompt-en','sounds/report-lost-pin-prompt-ar',NULL,'1',54,53,'en',NULL),(31,'re-receiver-promot','sounds/re-receiver-promot-en','sounds/re-receiver-promot-ar',NULL,'1',56,55,'en',NULL),(32,'thanks-transfer-done','sounds/thanks-transfer-done-en','sounds/thanks-transfer-done-ar',NULL,'1',58,57,'en',NULL),(33,'transaction-cancelled','sounds/transaction-cancelled-en','sounds/transaction-cancelled-ar',NULL,'1',60,59,'en',NULL),(34,'user-welcome','sounds/user-welcome-en','sounds/user-welcome-ar',NULL,'1',62,61,'en',NULL),(35,'wrong-number','sounds/wrong-number-en','sounds/wrong-number-ar',NULL,'1',64,63,'en',NULL),(36,'transaction-repeat-1','sounds/transaction-repeat-1-en','sounds/transaction-repeat-1-ar',NULL,'1',66,65,'en',NULL),(37,'transaction-repeat-2','sounds/transaction-repeat-2-en','sounds/transaction-repeat-2-ar',NULL,'1',68,67,'en',NULL),(38,'transaction-repeat-3','sounds/transaction-repeat-3-en','sounds/transaction-repeat-3-ar',NULL,'1',70,69,'en',NULL),(39,'thanks-request-received','sounds/thanks-request-received-ar','sounds/thanks-request-received-ar',NULL,'1',72,71,'en',NULL),(40,'commision-1','sounds/commision-1-en','sounds/commision-1-ar',NULL,'1',74,73,'en',NULL),(41,'commision-2','sounds/commision-2-en','sounds/commision-2-ar',NULL,'1',76,75,'en',NULL),(42,'currency-prompt','sounds/currency-prompt-en','sounds/currency-prompt-ar',NULL,'1',78,77,'en',NULL),(43,'more-than-one-mymo','sounds/more-than-one-mymo-en','sounds/more-than-one-mymo-ar',NULL,'1',80,79,'en',NULL),(44,'more-than-bank-account','sounds/more-than-bank-account-en','sounds/more-than-bank-account-ar',NULL,'1',82,81,'en',NULL),(45,'choose-account-from-1','sounds/choose-account-from-1-en','sounds/choose-account-from-1-ar',NULL,'1',84,83,'en',NULL),(46,'choose-account-from-2','sounds/choose-account-from-2-en','sounds/choose-account-from-2-ar',NULL,'1',86,85,'en',NULL),(47,'default-dollar-euro','sounds/default-dollar-euro-en','sounds/default-dollar-euro-ar',NULL,'1',88,87,'en',NULL),(48,'press-1','sounds/press-1-en','sounds/press-1-ar',NULL,'1',90,89,'en',NULL),(49,'press-2','sounds/press-2-en','sounds/press-2-ar',NULL,'1',92,91,'en',NULL),(50,'press-3','sounds/press-3-en','sounds/press-3-ar',NULL,'1',94,93,'en',NULL),(54,'Announce Extra Sim','sounds/announce-extra-sim-en','sounds/announce-extra-sim-ar',NULL,'1',20,19,'en',NULL),(55,'Extra Sim','sounds/extra-sim-en','sounds/extra-sim-ar',NULL,'1',18,17,'en',NULL),(56,'Unavailable','sounds/new/Service-unavailable-en','sounds/new/Service-unavailable-ar',NULL,'1',96,95,'en',NULL),(57,'Thanks-for','sounds/new/thanks-for-en','sounds/new/thanks-for-ar',NULL,'1',98,97,'en',NULL),(58,'not_entered','sounds/new/not-entered-en','sounds/new/not-entered-ar',NULL,'1',100,99,'en',NULL),(59,'try_later','sounds/new/try-later-en','sounds/new/try-later-ar',NULL,'1',102,101,'en',NULL),(60,'no amount','sounds/noamount-en','sounds/noamount-ar',NULL,'1',104,103,'en',NULL);
/*!40000 ALTER TABLE `prompt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `received_sms`
--

DROP TABLE IF EXISTS `received_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `received_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rest_msg` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `timestamp` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sms_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dlr_value` varchar(50) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `received_sms`
--

LOCK TABLES `received_sms` WRITE;
/*!40000 ALTER TABLE `received_sms` DISABLE KEYS */;
INSERT INTO `received_sms` VALUES (1,'T','1','1','1','1','0799540916','1'),(2,'T','1212121212 300','2014-04-30 09:08:25','8d54d77d-46ef-428d-a52b-bc8eb3fba7fa','-1','+962799365853','1'),(3,'','','','','','','1'),(4,'received','','','','','','1'),(5,'','','','','','','1'),(6,'','','','','','','1'),(7,'','received','','','','','1'),(8,'Ff','','2014-10-09 12:55:52','087950c7-11de-4bf7-a569-c9e7c962b866','-1','+962799113799','1'),(9,'40010*1*30','','2014-10-09 12:56:01','dadce137-518c-4546-806b-0254ea97c4c2','-1','+962786945106','1'),(10,'Hgfgjfvb','','2014-10-09 13:01:21','9eb05507-a7b5-4049-b984-7639f8c46725','-1','+962786945106','1'),(11,'Ff','','2014-10-09 13:22:38','73f5b5e5-055a-4a01-8f41-81da7b241b84','-1','+962799113799','1'),(12,'40010*1*55','','2014-10-09 13:21:12','76b34f38-887f-44f8-8dc6-52e491802f27','-1','+962786945106','1'),(13,'40010*1*66','','2014-10-09 14:01:59','61e7c30b-ff5d-446a-ae3f-a3ea8835d1d1','-1','+962786945106','1'),(14,'40010*1*30','','2014-10-09 15:40:35','38d87046-074a-4082-af25-81ab795612f9','-1','+962788390192','1'),(15,'40010*1*20','jo.zain.com','2014-10-10 08:17:46','e0a9a5ba-313c-44b0-99f5-38eaafe16329','-1','+962799113799','1'),(16,'40010*1*20','jo.zain.com','2014-10-10 09:31:42','f7af4bdf-a467-475a-8388-d869361273a0','-1','+962799113799','1'),(17,'40010*1*20','jo.zain.com','2014-10-10 12:01:32','609c723b-c33e-403e-a1b5-c4a10a4dab7f','-1','+962799113799','1'),(18,'40010*1*20','jo.zain.com','2014-10-10 12:07:50','1c470111-8198-4c9f-b5d3-f93d087f8d16','-1','+962799113799','1'),(19,'40010*1*20','jo.zain.com','2014-10-10 12:11:28','c0009fee-069d-4d0e-b6c7-f807aeea0df7','-1','+962799113799','1'),(20,'40010*1*20','jo.zain.com','2014-10-10 13:22:31','a5d0a727-2512-4f16-8095-4ef8f01a9bd0','-1','+962799113799','1'),(21,'40010*1*30','','2014-10-12 18:54:21','05992e0e-7665-4d55-80d4-3111f72530b4','-1','+962799113799','1'),(22,'40010*1*20','jo.zain.com','2014-10-13 11:17:41','1c7deead-8dc5-4b9a-baf6-a8ebb33d54e1','-1','+962799113799','1'),(23,'40016*1*33','','2014-10-24 14:58:42','0d8a50b4-0e8e-489e-8ade-759c2d2795e6','-1','+962786945106','1'),(24,'40016*1*1','','2014-10-26 00:12:25','f4b5f97d-538d-4041-80af-89f6c942d0c6','-1','+962786945106','1'),(25,'40016*1*2','','2014-10-26 00:19:18','cd03b4a5-e8e4-47fb-975e-38d5e297bb9a','-1','+962786945106','1'),(26,'40016*1*4','','2014-10-26 11:14:43','7b234f13-f88f-4d92-9227-b755521ba9ca','-1','+962786945106','1'),(27,'40016*1*4','','2014-10-26 17:08:53','1cfee167-65ab-4240-9b97-4c6d7a2a31de','-1','+962786945106','1'),(28,'40016*1*4','','2014-10-26 17:13:18','0093f8d4-118a-4d54-b127-48d9b6231a4c','-1','+962786945106','1'),(29,'40016*1*2','','2014-10-26 18:02:17','9e883432-4419-4089-81fe-874f25530ecb','-1','+962786945106','1'),(30,'40017*1*2','','2014-10-26 18:26:46','f343c5aa-387b-4530-be4a-493e924b124e','-1','+962786945106','1'),(31,'40016*2*22*77','jo.zain.com','agent=*billnumber=','04494588-a6a5-4b8c-a4f1-51d9cbd01d0f','-1','+962799540916','1'),(32,'40016*2*30','','agent=*billnumber=','4f537a90-fefd-4726-88d3-7b18ae5f20c3','-1','+962786945106','1'),(33,'40016*1*20','','2014-10-30 08:09:31','49cd6450-11c7-420d-a81e-37ffbdb27cea','-1','+962799113799','1'),(34,'40016*1*50','','2014-10-30 08:10:49','660920c0-91f3-49a2-9799-b594577cc6e7','-1','+962799010693','1'),(35,'40024*1*100','','2014-10-30 09:24:11','b2aebc84-1311-42a8-8a21-e608724bd18f','-1','+962796388863','1'),(36,'40016*1*20','','2014-10-30 12:44:27','9a85cde0-d00a-4762-8ea6-5c24670f43e7','-1','0786945106','1'),(37,'40024*1*100','','2014-10-30 13:19:57','a26adf2f-e964-4e10-9e94-8fb6fc236dc9','-1','0796388863','1'),(38,'40025*1*100','','2014-10-30 13:21:14','99de632f-e50c-43f2-a194-bfadcc04f93c','-1','0796388863','1'),(39,'40016*1*20','','2014-10-30 16:27:34','d830875a-ba2a-47a2-b44a-a7ac3f5079e2','-1','0799113799','1'),(40,'40025*1*100','','2014-10-30 19:06:39','f89ff6d4-6e14-4124-a5a2-64cde6c08214','-1','0796388863','1'),(41,'40019*1*23','','2014-10-31 00:08:49','df13db39-845d-47b2-8458-7342b22588be','-1','0786945106','1'),(42,'40019*1*23','','2014-10-31 00:26:25','ea30acd2-e113-48c3-b779-738d9df59a5a','-1','0786945106','1'),(43,'40019*1*23','','2014-10-31 00:32:47','b6a359d6-746c-4906-8a3f-e8bc00cc1a1c','-1','0786945106','1'),(44,'40019*1*23','','2014-10-31 00:38:32','2fc70e16-02c3-493d-939a-fe97b8f24dcf','-1','0786945106','1'),(45,'40019*1*23','','2014-10-31 00:44:46','e7eec21e-66a5-4508-848b-147ab15157ad','-1','0786945106','1'),(46,'40019*1*25','','2014-10-31 01:09:29','a3dbb2a4-d679-4028-b236-a98c31365bf3','-1','0786945106','1'),(47,'40019*1*23','','2014-10-31 01:24:54','b72d38d3-093d-4eb0-84b2-41da50fc593d','-1','0786945106','1'),(48,'40019*1*20','','2014-10-31 01:26:40','37d77977-5bf1-456a-8eda-f2d273d08a3e','-1','0786945106','1'),(49,'40019*1*23','','2014-10-31 01:28:10','3b177619-e22a-46be-993a-dfbe4fc5578d','-1','0786945106','1'),(50,'40019*1*23','','2014-10-31 01:29:24','1ee140f2-e4fe-4144-a5fb-a0956f359cdc','-1','0786945106','1'),(51,'40019*1*23','','2014-10-31 01:56:00','f286a5ae-1dde-4aa2-95ec-bfc897a3a55f','-1','0786945106','1'),(52,'40019*1*76','','2014-10-31 02:04:56','43f6107f-8979-4a61-8b4e-d6b301a0f87d','-1','0786945106','1'),(53,'40019*1*23','','2014-10-31 02:10:29','2bc21d96-e984-4341-a603-2f0b42c19036','-1','0786945106','1'),(54,'40024*2*23*88','agent=2*billnumber=88','2014-10-31 03:22:28','657301dd-613f-4a0d-ac85-3d9f59bfecc5','-1','0786945106','1'),(55,'40024*2*23*88','agent=2*billnumber=88','2014-10-31 03:25:31','8ee00b80-c418-4bd6-b612-6a42a4449082','-1','0786945106','1'),(56,'40019*1*52','','2014-10-31 03:26:59','0b7aa4af-106d-4ef8-85cc-372e3050e30e','-1','0786945106','1'),(57,'40016*1*100','','2014-10-31 06:44:23','9b2c8a8f-7140-4afc-8c56-f31b6d485b9f','-1','0796388863','1'),(58,'40016*1*20','','2014-10-31 07:18:13','68231dae-62f0-4723-8863-23e0ce1229b5','-1','0799113799','1'),(59,'40016*1*20','','2014-10-31 07:52:46','0687ac21-9c5d-44b7-b440-35f90d23b539','-1','0799113799','1'),(60,'40016*1*20','','2014-10-31 08:03:26','f36af619-1ffc-46dd-be77-7a73b5d3ec09','-1','0799113799','1'),(61,'40024*1*100','','2014-10-31 09:15:20','0d781c3b-7709-4cea-8125-341d9e3819b2','-1','0796388863','1'),(62,'40016*1*20','','2014-10-31 09:19:43','0a709520-ed44-4bfa-95f5-e875895481a7','-1','0799113799','1'),(63,'40024*1*20','','2014-10-31 09:22:01','c69e8395-9e4d-43c7-834b-7a36482c968f','-1','0799113799','1'),(64,'40024*1*100','','2014-10-31 09:23:15','ec6bad16-1525-4ed9-905d-8439b12b999d','-1','0796388863','1'),(65,'40024*1*50','','2014-10-31 09:33:44','0bf7b3f1-d7c5-4116-8eba-4cbe04fba2ab','-1','0799113799','1'),(66,'40024*1*50','','2014-10-31 09:36:09','acdb9b2f-e165-47b5-9614-a8eb4954c833','-1','0799113799','1'),(67,'40024*1*50','','2014-10-31 09:43:21','a28d6d47-434c-41ee-8095-9ab3d6db727f','-1','0799113799','1'),(68,'40024*1*50','','2014-10-31 09:46:11','beb80625-06f7-405a-b05a-4c5d0c21c560','-1','0799113799','1'),(69,'40024*1*50','','2014-10-31 09:50:34','98fae110-a027-4140-b2f4-e2f52ad5a57d','-1','0799113799','1'),(70,'40024*1*50','','2014-10-31 09:52:24','18ced2ad-eb57-4c65-9a0c-f6b998280559','-1','0799113799','1'),(71,'40019*1*52','','2014-10-31 09:46:38','9223d3f6-8d4b-41fa-b3fe-1c68e24a54ca','-1','0786945106','1'),(72,'40024*1*50','','2014-10-31 10:05:07','496d955b-2d97-4ed7-aa60-1ecbd3b5661e','-1','0799113799','1'),(73,'40019*1*32','','2014-10-31 10:05:20','38dd6e1b-b2a8-4a71-b5dd-9ec44d38d13f','-1','0786945106','1'),(74,'40019*1*54','','2014-10-31 10:10:44','0eb840eb-b1fe-43f1-bdde-aeb8f619747c','-1','0786945106','1'),(75,'40024*1*100','','2014-10-31 10:45:06','330c6268-0f74-4e6a-a8ad-0f9db1ba920d','-1','0796388863','1'),(76,'40024*1*50','','2014-10-31 10:47:16','11b4deb5-e0c1-46f6-a175-9587979c81a9','-1','0799113799','1'),(77,'40024*1*20','','2014-10-31 10:48:50','0ffcde97-de9f-46be-8216-eee7f96a7508','-1','0796388863','1'),(78,'40024*1*50','','2014-10-31 10:55:23','383910dc-4e52-4830-aeb7-11001df4334f','-1','0799113799','1'),(79,'40024*1*20','','2014-10-31 10:56:18','025060b0-5b93-4b3d-9fb0-e91ca00f9a00','-1','0796388863','1'),(80,'40019*1*54','','2014-10-31 11:46:46','6217d7ca-9aa5-4dab-875d-07feb1de4f5d','-1','0786945106','1'),(81,'4006*1*3','','2014-12-01 20:23:18','71d17f3c-2ce5-4d91-a524-d9d04f048141','-1','0799113799','1'),(82,'4004*1*12','','2014-12-02 11:35:21','29ede5ed-0039-42e7-bf3a-7b25eacad77c','-1','0786945106','1'),(83,'4006*1*12','','2014-12-04 13:15:19','4d650950-7426-4d8a-a983-eda18884fc4d','-1','0799113799','1'),(84,'4006*1*13','','2014-12-09 15:58:51','6d52a2ca-58a2-49a9-98f7-03cc282aa175','-1','0799113799','1'),(85,'40010*1*48','','2014-12-10 09:17:23','8a413bac-baca-43b6-bc86-b7bf7a079a74','-1','0786945106','1'),(86,'4006*1*20','','2014-12-10 14:18:19','c9eb7219-930f-4af6-ae0b-17c1d562f54e','-1','0799113799','1'),(87,'4006*1*15','','2014-12-10 15:15:08','52e56f21-1cbe-4e1b-9825-9eebd409f238','-1','0799113799','1'),(88,'4009*1*66','','2014-12-10 14:49:23','80b1201e-1756-4235-bc37-d7fc2547766e','-1','0786945106','1'),(89,'4008*1*66','','2014-12-10 14:59:20','ccda3154-1cfe-4bc2-aec2-4dda548d49f1','-1','0786945106','1'),(90,'4006*1*20','','2014-12-11 11:17:09','bc5f09e4-cfa7-402d-9452-1bdb3a37463a','-1','0799113799','1'),(91,'4009*1*12','','2014-12-11 14:15:14','c4f9e871-7a6e-4350-a28d-916132dd2f59','-1','0799113799','1'),(92,'4009*1*10','','2014-12-12 07:18:09','bd8cd521-4c69-463b-bc85-7d08acf0dd87','-1','0796388863','1'),(93,'4004*1*7','','2014-12-12 13:46:16','cc0ebb56-885a-422d-b568-04974785df97','-1','0796388863','1');
/*!40000 ALTER TABLE `received_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `field_type` enum('text','radio','checkbox') NOT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`setting_id`,`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (2,1,'HSM URL','hsm_url','http://localhost/mymo/site_hsm/public_html/index.php','text',1,2,'1',1),(3,2,'ISO Message URL','iso_url','http://localhost/mymo/site_mymobank/public_html/oracle.php','text',3,4,'1',1),(4,1,'LMK','lmk','MjY1Mjfb0a+pm5elmKTQybKj26zHlqvK2ZubrJ+tpMeZqpra0s3y167VztjU3g==','text',5,6,'1',1),(5,3,'Maximum response time for incoming call','incoming_call','0','text',7,8,'0',1),(6,4,'Maximum allowed idle time by the user','idle_time','5','text',9,10,'0',1),(7,5,'Maximum idle time between presses for each step of a process','set_7','5','text',11,12,'1',1),(8,6,'Maximum number of cycle between services per a call ','set_8','5','text',13,14,'1',1),(9,7,'Response to wrong data entries','set_9','5','text',15,16,'1',1),(10,8,'Number of tolerated wrong entries','set_10','3','text',17,18,'1',1),(11,9,'Geographical distance tolerated transactions and time frame between each','set_11','100','text',19,20,'1',1),(12,10,'Wait time for users to answer call back','set_12','3','text',21,22,'1',1),(13,11,'Allowed wrong PIN entries','set_13','3','text',23,24,'1',1),(14,12,'Allowed number of modifying a transaction before acceptance','set_14','2','text',25,26,'1',1),(15,13,'Allowed  time between calls (transaction initiation call and call-back)','set_15','5','text',27,28,'1',1),(16,14,'Maximum allowed time for Transaction completion by the system','set_16','10','text',29,30,'1',1),(17,15,'Allowed simultaneous logins','set_17','0','text',31,32,'1',1),(18,16,'Allowed number of wrong password entries','set_18','3','text',33,34,'1',1),(19,17,'Allowed number of wrong password entries after first lock of account','set_19','3','text',35,36,'1',1),(20,18,'New password creation rules','set_20','3','text',37,38,'1',1),(21,19,'Allowed number of lost-ITEM requests per period','set_21','Allowed number of lost-ITEM requests per period','text',39,40,'1',1),(22,19,'Maximum allowed idle time by the system','set_22','0','text',41,42,'1',1),(23,20,'International Id','international_id','on','checkbox',43,44,'1',1),(24,20,'Full Name','name','','checkbox',45,46,'1',1),(25,20,'Nationality','nationality','','checkbox',47,48,'1',1),(26,21,'client','client','on','checkbox',49,50,'1',1),(27,21,'blacklist','blacklist','','checkbox',51,52,'1',1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_method`
--

DROP TABLE IF EXISTS `transaction_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_method`
--

LOCK TABLES `transaction_method` WRITE;
/*!40000 ALTER TABLE `transaction_method` DISABLE KEYS */;
INSERT INTO `transaction_method` VALUES (1,'Individual User'),(2,'Corporate User'),(3,'Bills'),(4,'Mall'),(5,'Lost pin number'),(6,'Lost Phone'),(7,'Change Limit'),(8,'Change PIN'),(9,'Change Password'),(10,'Lost call back number'),(11,'Credit');
/*!40000 ALTER TABLE `transaction_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_type`
--

DROP TABLE IF EXISTS `transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_type` (
  `transactiontype_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '0 = inactive - 1 = active - 2 = under approval',
  `user_id` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`transactiontype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES (1,'Money Transfer',1,2,'1',NULL,'en'),(2,'Corporate Transfer',3,4,'1',NULL,'en'),(3,'Bill Payment ',5,6,'1',NULL,'en'),(4,'MyMo Mall',7,8,'1',NULL,'en'),(5,'Lost PIN',9,10,'1',NULL,'en'),(6,'Lost Pohne',11,12,'1',NULL,'en'),(7,'Change Limit',13,14,'1',NULL,'en'),(8,'Change PIN',15,16,'1',NULL,'en');
/*!40000 ALTER TABLE `transaction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validation_key`
--

DROP TABLE IF EXISTS `validation_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validation_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validation_key`
--

LOCK TABLES `validation_key` WRITE;
/*!40000 ALTER TABLE `validation_key` DISABLE KEYS */;
INSERT INTO `validation_key` VALUES (1,'Change PIN','82861a40671b28a354bbb29ef87cab3a'),(2,'Change Limit','40048fa1b25649b8659aaae3fe5bf049'),(3,'Lost Phone','94a81cbeccdea51ba8d855b3847bc1f3'),(4,'Lost PIN','baa1670af12d4e84ef86e97b0ba04094'),(5,'Request Change PIN','a869c6d5ef4eb2e8441ca9820403cabe'),(6,'Request Change Limit','9a848f09adf23fa3cb12d6169fd724d0'),(7,'encrypt data','69e1ad852a342c74191d145d786bd0cf');
/*!40000 ALTER TABLE `validation_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `fees_view`
--

/*!50001 DROP TABLE IF EXISTS `fees_view`*/;
/*!50001 DROP VIEW IF EXISTS `fees_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fees_view` AS select `client`.`client_id` AS `client_id`,`client`.`mymo_id` AS `mymo_id`,timestampdiff(MONTH,`client`.`creation_date`,now()) AS `number_of_months`,timestampdiff(YEAR,`client`.`creation_date`,now()) AS `number_of_years`,`client`.`is_active` AS `is_active`,`client`.`bank_id` AS `bank_id`,`client`.`fees` AS `fees`,`b`.`ip` AS `ip` from (`client` join `bank` `b`) where (((`client`.`is_active` = '1') or (`client`.`is_active` = '3')) and (`b`.`bank_id` = `client`.`bank_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-17 15:43:49
