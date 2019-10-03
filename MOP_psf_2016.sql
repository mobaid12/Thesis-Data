-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mymo_psf
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
-- Table structure for table `callback_phone`
--

DROP TABLE IF EXISTS `callback_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `callback_phone` (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(25) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callback_phone`
--

LOCK TABLES `callback_phone` WRITE;
/*!40000 ALTER TABLE `callback_phone` DISABLE KEYS */;
INSERT INTO `callback_phone` VALUES (87,'88',32),(92,'8',9),(93,'99',10),(94,'88',11),(95,'88',12),(99,'55',3),(100,'0795686232',3),(109,'0786945106',2),(111,'0799113799',13),(112,'0799540916',6),(117,'0789508015',7),(118,'0796388863',8),(119,'0799010693',5),(120,'0785199013',4);
/*!40000 ALTER TABLE `callback_phone` ENABLE KEYS */;
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
  `dst_mymoid` varchar(100) DEFAULT NULL,
  `src_mymoid` varchar(100) DEFAULT NULL,
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
  `extra_data` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `currency` int(3) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `receiver_bank_ip` varchar(255) DEFAULT NULL,
  `sender_bank_ip` varchar(255) DEFAULT NULL,
  `account_receiver` varchar(255) DEFAULT NULL,
  `account_sender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr`
--

LOCK TABLES `cdr` WRITE;
/*!40000 ALTER TABLE `cdr` DISABLE KEYS */;
INSERT INTO `cdr` VALUES (151,'56','4008','4006','70','2016-08-15 17:05:03','2016-08-15 17:05:03','2016-08-15 17:05:56','0786945106',0,'DAHDI/63-1',49,'ANSWERED','1',1,'',1,400,1,'192.168.15.102',NULL,'889977','1010905'),(152,'68','4006','4004','25','2016-08-15 17:20:07','2016-08-15 17:20:07','2016-08-15 17:21:16','0799113799',0,'DAHDI/63-1',25,'ANSWERED','1',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(153,'49','4006','4004','59','2016-08-15 18:30:45','2016-08-15 18:30:45','2016-08-15 18:31:35','0799113799',0,'DAHDI/63-1',49,'ANSWERED','1',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(154,'54','4006','4004','42','2016-08-15 18:45:07','2016-08-15 18:45:07','2016-08-15 18:46:01','0799113799',0,'DAHDI/63-1',54,'ANSWERED','1',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(155,'62','4006','4009','75','2016-08-15 19:05:50','2016-08-15 19:05:50','2016-08-15 19:06:52','0799010693',0,'DAHDI/63-1',53,'ANSWERED','1',1,'',1,400,1,'192.168.15.102',NULL,'1010905','5555444'),(156,'71','4009','4004','29','2016-08-16 19:17:43','2016-08-16 19:17:43','2016-08-16 19:18:55','0799113799',0,'DAHDI/63-1',54,'ANSWERED','1',1,'',1,400,1,'192.168.15.102',NULL,'5555444','1010905'),(157,'54','4006','4004','18','2016-08-16 19:42:07','2016-08-16 19:42:07','2016-08-16 19:43:01','0799113799',0,'DAHDI/63-1',52,'ANSWERED','1',1,'',1,400,1,'192.168.15.102',NULL,'1010905','1010905'),(159,'64','4006','4004','54','2016-08-16 20:08:47','2016-08-16 20:08:47','2016-08-16 20:09:52','0799113799',0,'DAHDI/63-1',27,'ANSWERED','0',1,'',1,400,1,'192.168.15.102',NULL,'1010905','1010905'),(160,'77','4006','4004','49','2016-08-16 20:28:50','2016-08-16 20:28:50','2016-08-16 20:30:08','0799113799',0,'DAHDI/63-1',27,'ANSWERED','0',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(161,'79','4006','4004','37','2016-08-16 21:40:20','2016-08-16 21:40:20','2016-08-16 21:41:39','0799113799',0,'DAHDI/63-1',49,'ANSWERED','0',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(162,'86','4006','4004','18','2016-08-16 21:55:42','2016-08-16 21:55:42','2016-08-16 21:57:08','0799113799',0,'DAHDI/63-1',57,'ANSWERED','0',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(163,'63','4006','4004','90','2016-08-16 22:20:15','2016-08-16 22:20:15','2016-08-16 22:21:18','0799113799',0,'DAHDI/63-1',99,'ANSWERED','1',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(164,'68','4006','4004','23','2016-08-16 22:40:19','2016-08-16 22:40:19','2016-08-16 22:41:27','0799113799',0,'DAHDI/63-1',48,'ANSWERED','1',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905'),(165,'60','4006','4004','10','2016-08-16 23:30:25','2016-08-16 23:30:25','2016-08-16 23:31:26','0799113799',0,'DAHDI/63-1',47,'ANSWERED','1',1,'',1,1,1,'192.168.15.102',NULL,'1010905','1010905');
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
  `birth_date` date NOT NULL,
  `mymo_id` bigint(20) NOT NULL,
  `national_id` bigint(20) NOT NULL,
  `creation_date` datetime NOT NULL,
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `is_active` enum('0','1','2','3','4','10') NOT NULL COMMENT '0 = inactive | 1 = active | 2 = deleted from mymo_bank | 3 = deactivate by client | 4 = under approval | 10 = deleted',
  `language` varchar(5) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `mit` varchar(255) NOT NULL,
  `authorized` varchar(255) NOT NULL,
  `co_type` varchar(255) NOT NULL,
  `co_address` varchar(255) NOT NULL,
  `pin_status` varchar(5) NOT NULL,
  `printed` enum('0','1') NOT NULL,
  `short_code` int(5) DEFAULT NULL,
  `user_type` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `receivelimit` float NOT NULL,
  `created_by` int(11) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `mymo_id` (`mymo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (2,'Alaa','PSF','PSF','Duksi','','1985-09-01',4006,1111111111,'2014-12-01 18:56:56',4,3,'1','en',' ',' ',' ',' ',' ','','0',0,1,1,500,1,'male',1),(3,'Zeina','Monther','Ahmad','Khasawneh','','2007-08-01',4007,9856589865,'2014-12-02 15:52:37',6,5,'1','en',' ',' ',' ',' ',' ','','0',0,1,1,500,1,'male',0),(4,'Abed','Abed','Abed','Abed','','2011-12-10',4008,5454545454,'2014-12-08 11:03:29',8,7,'1','en',' ',' ',' ',' ',' ','','0',NULL,1,2,1000,1,'male',2),(5,'Murad','PSF','PSF','Obaid','','2000-01-01',4009,9991111222,'2014-12-09 17:49:39',10,9,'1','en',' ',' ',' ',' ',' ','','0',NULL,1,1,500,1,'male',2),(6,'Duksi','D','D','Alaa','','1986-12-03',40010,5454545454,'2014-12-10 11:17:36',12,11,'1','en',' ',' ',' ',' ',' ','','0',NULL,1,2,1000,1,'male',0),(7,'Wathiq','PSF','PSF','Shehab','','1984-12-05',40011,1222211112,'2014-12-10 14:34:29',14,13,'1','en',' ',' ',' ',' ',' ','','0',NULL,1,1,500,2,'male',1),(8,'Abdullah','F','F','Fazaa','','1972-12-31',40012,5454545454,'2014-12-10 16:40:26',16,15,'1','en',' ',' ',' ',' ',' ','','0',NULL,1,1,1000,1,'male',2),(13,'Alaa','PSF','PSF','AlAli','','1990-07-01',4004,9901049189,'2014-12-01 18:46:41',2,1,'1','en',' ',' ',' ',' ',' ','','0',0,1,1,500,1,'male',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_account`
--

LOCK TABLES `client_account` WRITE;
/*!40000 ALTER TABLE `client_account` DISABLE KEYS */;
INSERT INTO `client_account` VALUES (4,'10109007',3,1),(11,'1010905',2,1),(13,'1010905',13,1),(14,'1233333',6,1),(19,'100102',7,1),(20,'44444444',8,1),(21,'5555444',5,1),(22,'889977',4,1);
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
  `pin` varchar(255) NOT NULL,
  PRIMARY KEY (`phone_id`),
  UNIQUE KEY `phone` (`phone`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_phone`
--

LOCK TABLES `client_phone` WRITE;
/*!40000 ALTER TABLE `client_phone` DISABLE KEYS */;
INSERT INTO `client_phone` VALUES (4,'0795686232',500,0,3,3,'53781'),(11,'0786945106',500,0,1,2,'51729'),(13,'0799540916',1000,0,2,6,'78315'),(14,'0799113799',500,0,1,13,'28670'),(19,'0789508015',500,0,1,7,'56709'),(20,'0796388863',600,0,1,8,'49506'),(21,'0799010693',500,0,1,5,'80352'),(22,'0785199013',1000,0,1,4,'29314');
/*!40000 ALTER TABLE `client_phone` ENABLE KEYS */;
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
-- Table structure for table `config_tbl_cols`
--

DROP TABLE IF EXISTS `config_tbl_cols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_tbl_cols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) NOT NULL,
  `src_column_name` varchar(255) NOT NULL,
  `src_col_datatype` varchar(255) NOT NULL,
  `trgt_column_name` varchar(255) NOT NULL,
  `trgt_col_datatype` varchar(255) NOT NULL,
  `tbl_match_id` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `is_active` enum('0','1','2') NOT NULL DEFAULT '0',
  `right_id` int(11) DEFAULT NULL,
  `left_id` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tbl_cols`
--

LOCK TABLES `config_tbl_cols` WRITE;
/*!40000 ALTER TABLE `config_tbl_cols` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_tbl_cols` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_privilege`
--

LOCK TABLES `core_privilege` WRITE;
/*!40000 ALTER TABLE `core_privilege` DISABLE KEYS */;
INSERT INTO `core_privilege` VALUES (1,'add','Create new client','client','client'),(2,'delete','Delete a client','client','client'),(3,'edit','Edit a client','client','client'),(4,'list','View the list of clients','client','client'),(5,'add','Add new client','ad','client'),(6,'delete','Delete client','ad','client'),(7,'edit','Edit client information','ad','client'),(8,'list','View the list of clients','ad','client'),(9,'add','Create new zone','ad','zone'),(10,'delete','Delete a zone','ad','zone'),(11,'edit','Edit a zone','ad','zone'),(12,'list','View the list of zones','ad','zone'),(13,'add','Create new category','category','category'),(14,'delete','Delete a category','category','category'),(15,'edit','Edit a category','category','category'),(16,'list','View the list of categories','category','category'),(17,'order','Order categories','category','category'),(18,'activate','Activate comment','comment','comment'),(19,'add','Add/Reply comment','comment','comment'),(20,'delete','Delete comment','comment','comment'),(21,'edit','Edit comment','comment','comment'),(22,'list','View the list of comments','comment','comment'),(23,'thread','View the list comments in thread','comment','comment'),(24,'clear','Clear all cached data','core','cache'),(25,'config','Configure cache','core','cache'),(26,'delete','Delete cached item','core','cache'),(27,'list','View the list of cached items by id','core','cache'),(28,'app','Configure application\'s settings','core','config'),(29,'add','Add setting','core','config'),(30,'delete','Delete settings','core','config'),(31,'edit','Edit setting','core','config'),(32,'list','View the list of settings','core','config'),(33,'update','Update setting','core','config'),(34,'index','Administrator Dashboard','core','dashboard'),(35,'config','Config hook','core','hook'),(36,'install','Install hook','core','hook'),(37,'list','View the list of hooks','core','hook'),(38,'uninstall','Uninstall hook','core','hook'),(39,'upload','Upload new hook','core','hook'),(40,'add','Add item to language file','core','language'),(41,'delete','Delete item from language file','core','language'),(42,'edit','Edit language file','core','language'),(43,'list','View the list of language files for module/widget','core','language'),(44,'new','Create new language file','core','language'),(45,'update','Update item in language file','core','language'),(46,'upload','Upload new language package','core','language'),(47,'config','Configure localization settings','core','locale'),(48,'delete','Delete error','core','log'),(49,'list','List errors','core','log'),(50,'install','Install module','core','module'),(51,'list','View the list of modules','core','module'),(52,'uninstall','Uninstall module','core','module'),(53,'upload','Upload new module','core','module'),(54,'add','Create new page','core','page'),(55,'edit','Edit page','core','page'),(56,'layout','View layout of page','core','page'),(57,'savelayout','Update layout of page','core','page'),(58,'list','View the list of pages','core','page'),(59,'ordering','Update order of pages','core','page'),(60,'index','Manage permalinks','core','permalink'),(61,'config','Config plugin','core','plugin'),(62,'install','Install plugin','core','plugin'),(63,'list','View the list of plugins','core','plugin'),(64,'ordering','Update order of plugins','core','plugin'),(65,'uninstall','Uninstall plugin','core','plugin'),(66,'upload','Upload new plugin','core','plugin'),(67,'add','Add action','core','privilege'),(68,'delete','Delete action','core','privilege'),(69,'list','View the list of actions','core','privilege'),(70,'add','Add resource','core','resource'),(71,'delete','Delete resource','core','resource'),(72,'add','Add role','core','role'),(73,'delete','Delete role','core','role'),(74,'list','View the list of roles','core','role'),(75,'lock','Lock/unlock role','core','role'),(76,'role','Set rules for role','core','rule'),(77,'user','Set rules for user','core','rule'),(78,'add','Apply hook for target','core','target'),(79,'list','View the list of targets','core','target'),(80,'remove','Remove hook from target','core','target'),(81,'activate','Activate template','core','template'),(82,'editskin','Edit skin of template','core','template'),(83,'list','View the list of templates','core','template'),(84,'skin','Set skin for current template','core','template'),(85,'activate','Activate/deactivate an user','core','user'),(86,'add','Add user','core','user'),(87,'changepass','Update password','core','user'),(88,'edit','Update user information','core','user'),(89,'list','View the list of users','core','user'),(90,'install','Install widget','core','widget'),(91,'list','View the list of widgets','core','widget'),(92,'uninstall','Uninstall widget','core','widget'),(93,'upload','Upload new widget','core','widget'),(94,'server','Config mail server','mail','config'),(95,'add','Add new mail template','mail','template'),(96,'delete','Delete the mail template','mail','template'),(97,'edit','Edit the mail template','mail','template'),(98,'list','View the list of templates','mail','template'),(99,'list','View the list of mails','mail','mail'),(100,'send','Send mails','mail','mail'),(101,'build','Build new menu','menu','menu'),(102,'delete','Delete a menu','menu','menu'),(103,'edit','Edit a menu','menu','menu'),(104,'list','View the list of menus','menu','menu'),(105,'activate','Activate a file','multimedia','file'),(106,'add','Create new file','multimedia','file'),(107,'delete','Delete a file','multimedia','file'),(108,'edit','Edit given file','multimedia','file'),(109,'editor','Image editor','multimedia','file'),(110,'activate','Activate a note','multimedia','note'),(111,'delete','Delete a note','multimedia','note'),(112,'edit','Edit given note','multimedia','note'),(113,'list','View list of notes','multimedia','note'),(114,'upload','Upload new photo','multimedia','photo'),(115,'activate','Activate a set','multimedia','set'),(116,'add','Create new set','multimedia','set'),(117,'delete','Delete a set','multimedia','set'),(118,'edit','Edit given set','multimedia','set'),(119,'activate','Activate article','news','article'),(120,'add','Add new article','news','article'),(121,'delete','Delete article','news','article'),(122,'edit','Edit article','news','article'),(123,'emptytrash','Empty the trash','news','article'),(124,'hot','Manage hot articles','news','article'),(125,'list','View the list of articles','news','article'),(126,'preview','Preview article','news','article'),(127,'add','Add new revision','news','revision'),(128,'delete','Delete revision','news','revision'),(129,'list','View the list of article revisions','news','revision'),(130,'restore','Restore revision','news','revision'),(131,'add','Add new page','page','page'),(132,'delete','Delete page','page','page'),(133,'edit','Edit page','page','page'),(134,'list','List pages','page','page'),(135,'order','Order pages','page','page'),(136,'activate','Activate a poll','poll','question'),(137,'add','Create new poll','poll','question'),(138,'delete','Delete a poll','poll','question'),(139,'edit','Update a poll','poll','question'),(140,'list','View the list of polls','poll','question'),(141,'index','View reports','seo','ganalytic'),(142,'add','Add site','seo','gwebmaster'),(143,'addsitemap','Add sitemap','seo','gwebmaster'),(144,'delete','Delete site','seo','gwebmaster'),(145,'deletesitemap','Delete sitemap','seo','gwebmaster'),(146,'details','View site details','seo','gwebmaster'),(147,'list','List of sites','seo','gwebmaster'),(148,'verify','Verify site','seo','gwebmaster'),(149,'add','Add new link to sitemap','seo','sitemap'),(150,'delete','Remove link from sitemap','seo','sitemap'),(151,'index','View sitemap details','seo','sitemap'),(152,'index','Get backlinks, indexed pages, rank','seo','toolkit'),(153,'add','Create new tag','tag','tag'),(154,'delete','Delete a tag','tag','tag'),(155,'list','View the list of tags','tag','tag'),(156,'browse','Browse uploaded files','upload','file'),(157,'upload','Upload file to server','upload','file'),(158,'resetpin','Reset PIN number','client','client'),(159,'activate','Activate / Deactivate client','client','client'),(167,'add','Create new promote','promote','promote'),(168,'delete','Delete a promote','promote','promote'),(169,'edit','Edit a promote','promote','promote'),(170,'list','View the list of promote','promote','promote'),(171,'list','View the list of Extra Sim','extrasim','extrasim'),(172,'edit','Edit an Extra Sim','extrasim','extrasim'),(173,'delete','Delete an Extra Sim','extrasim','extrasim'),(174,'add','Create new Extra Sim','extrasim','extrasim'),(175,'add','Create new Extra Sim','iso','iso'),(176,'delete','Delete an Extra Sim','iso','iso'),(177,'edit','Edit an Extra Sim','iso','iso'),(178,'list','View the list of Iso fields','iso','iso'),(181,'list','View the list of Setting','setting','setting'),(182,'edit','Edit a Setting','setting','setting'),(183,'delete','Delete a Setting','setting','setting'),(184,'add','Create new Setting','setting','setting'),(185,'delete','Delete error','core','log'),(186,'list','List errors','core','log'),(187,'add','Create new Prompts','prompt','prompt'),(188,'delete','Delete a Prompts','prompt','prompt'),(189,'edit','Edit a Prompt','prompt','prompt'),(190,'list','View the list of Prompts','prompt','prompt'),(191,'activate','Active prompt','prompt','prompt'),(192,'list','View the list of Integration','integration','integration'),(193,'edit','Edit a Integration','integration','integration'),(194,'delete','Delete a Integration','integration','integration'),(195,'add','Create new Integration','integration','integration'),(196,'activate','activate','integration','integration'),(197,'underapproval','Mobile Phone Approval','client','client');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_resource`
--

LOCK TABLES `core_resource` WRITE;
/*!40000 ALTER TABLE `core_resource` DISABLE KEYS */;
INSERT INTO `core_resource` VALUES (1,'Manage client',NULL,'client','client'),(2,'Manage clients',NULL,'ad','client'),(3,'Manage zones',NULL,'ad','zone'),(4,'Manage categories',NULL,'category','category'),(5,'Manage user comments',NULL,'comment','comment'),(6,'Manage cache',NULL,'core','cache'),(7,'Manage settings',NULL,'core','config'),(8,'Administrator section',NULL,'core','dashboard'),(9,'Manage hooks',NULL,'core','hook'),(10,'Manage languages',NULL,'core','language'),(11,'Manage localization settings',NULL,'core','locale'),(12,'Errors log',NULL,'core','log'),(13,'Manage modules',NULL,'core','module'),(14,'Manage pages',NULL,'core','page'),(15,'Manage permalinks',NULL,'core','permalink'),(16,'Manage plugins',NULL,'core','plugin'),(17,'Manage actions to resource',NULL,'core','privilege'),(18,'Manage resources',NULL,'core','resource'),(19,'Manage roles',NULL,'core','role'),(20,'Manage rules',NULL,'core','rule'),(21,'Manage hook targets',NULL,'core','target'),(22,'Manage templates',NULL,'core','template'),(23,'Manage users',NULL,'core','user'),(24,'Manage widgets',NULL,'core','widget'),(25,'Config mail',NULL,'mail','config'),(26,'Manage mail templates',NULL,'mail','template'),(27,'Manage mails',NULL,'mail','mail'),(28,'Manage menu',NULL,'menu','menu'),(29,'Manage files',NULL,'multimedia','file'),(30,'Manage notes',NULL,'multimedia','note'),(31,'Manage photos',NULL,'multimedia','photo'),(32,'Manage sets',NULL,'multimedia','set'),(33,'Manage articles',NULL,'news','article'),(34,'Manage revisions',NULL,'news','revision'),(35,'List pages',NULL,'page','page'),(36,'Manage polls',NULL,'poll','question'),(37,'Google Analytic reports',NULL,'seo','ganalytic'),(38,'Google Web Master tool',NULL,'seo','gwebmaster'),(39,'Sitemap builder',NULL,'seo','sitemap'),(40,'SEO Toolkit',NULL,'seo','toolkit'),(41,'Manage tags',NULL,'tag','tag'),(42,'Manage uploaded files',NULL,'upload','file'),(43,'Manage promote',NULL,'promote','promote'),(44,'Manage Extra Sim Chip',NULL,'extrasim','extrasim'),(45,'Manage Iso fields',NULL,'iso','iso'),(47,'Manage Setting',NULL,'setting','setting'),(48,'Manage log',NULL,'client','log'),(49,'Manage Prompts',NULL,'prompt','prompt'),(50,'Integration Manger',NULL,'integration','integration');
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
INSERT INTO `core_role` VALUES (1,'admin','Administrator',0),(2,'Employees','Employees',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_rule`
--

LOCK TABLES `core_rule` WRITE;
/*!40000 ALTER TABLE `core_rule` DISABLE KEYS */;
INSERT INTO `core_rule` VALUES (1,1,'role',NULL,1,NULL),(17,2,'role',1,1,'client:client'),(18,2,'role',2,1,'client:client'),(19,2,'role',3,1,'client:client'),(20,2,'role',4,1,'client:client'),(21,2,'role',159,1,'client:client'),(22,2,'role',197,1,'client:client'),(23,2,'role',87,1,'core:user');
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
INSERT INTO `core_session` VALUES ('00k2h52hssdbcpglpbrigip4n4','trFUCyZ0ynoBwy01LpDoi6Si3ue4br4cyNZxEa2wqouurkrlzdlttJBdwYYEgT3ccWewc_JkUGbOS9cJ9awyVpQVBNwtIDBfkgvl-LuUH2ajhshOeocEk_w_ifRiFPSGEqRYyUcDc5hY9Lpqv2MX0vkEFGeC0QSvVSOvOKAei9fFln3T4S0mSJRB_GvHgxcNLyXl9pJCtsWxCpBfCuJE-J0VN47POw8-FcW4KqSjwgJIDl6O53urDxgn5YOeAFrK1y8h9wYHRnZy_uXMSEQBss04e5Vo-JRvCBIibOcqhcrhwkr3s0AmUw8ZXLDMIWCNvdsaERVx852oIznIxlO5gvOdOlKXyQZyea1tPnEIjZCNuAXSyuzkXWk_2J6NRDxJIAvXcRoyazoXFi0PPystMgusOOWBMYnjENNOgfz3E3TjdaOnY1zACJlDhd3G_iS5v5R5LxXMjJTmB6uYJyJgNcdWwah2Y4LrDSpPwJAADcoUzStyCH5nvGSge-lBg_IGe9J0PQXZ00kB9L67K2E000yD9vrJiPVqMtN-VyUSZvxth0repT2ezyTtMXUnmPe6_-GVCtrOEENXKfmkZbSDngAa-GTr_bUhmD1bz2ZLgElgQ96yNy2dc_tvoPr9qqp5IbKdLUriiBjog3M4zt5x9p-mSOcwg2ZE81P1iZVhXAe51WXwr3N1s6P6IUO68B4jbQgOlpzABjCuL-M4S8ikTg..',1369914243,36000),('07i7hkkkt2hrcic5dtd9ee8cv0','GhBUpevWEE99GjZe8AeIZYAnNVFbLMuvaH7XtRtimHnkzNG_kqVy_cmSlqbTyu-KpnvJSI8DXt_Ee6AT2JxrTCI87NwXdX9ATOK3QxkMEbSAzWBQ-szciVSUzeGTWgTaIleei8VgTdJYgiO1nLR7qLNVnwckZ54Z2yNhoWkAPfND10ZKGEbMLhb56qXVLN6uxNjn5_fu_aGUfX_x_YJ13-exEmfr6W213ZDhbMMckCvcSFWZMsfD2wNAX6VssK119SDi8Y5EuGNMAMw6UvplAuq30qs9IQA9YszozyrRAvQq1DUjaekPUilAW1UqUYEOs3qPF8KqX2Hfp1A1309aFK6lrRSPAoaJ512CAO1caIVTBbiFcFd6XHTOXvMU9GMg6yrpRNxDvMsQ4R2Zky3sxL7n2nqomipDTD2xhIxOmOQMYA5S3BVVuINjiWRIDVFuMbBys2apfgWZUMdvAgzfn4C-tcd3vEIo39vLqjMGD8bpKdx7tolhSjQ_qaIZw7QhLAO7gRh3oNpNCZ3hDAjAXyatjaz9H3B2UcMhQPlkde_WdbyV2QP8wOKOQNkSXm4AGUhY4bfsqFES-F6gNHQaLZEn9dFHUai83Llp_Du4T1i0E3PsQVL-M6UlqdIPMITLojcLQ-JXPSpV5Vxx5qKLWmcdUM0OLUepMhyf5YaTRphGaWV-1jNBuE31DuUjQ9HN7x9MbfOeg4b4wQ4QhtIbnA..',1351015912,36000),('0b4v41snlbp2df4jaa9iv71jk0','2GG4VDwXMnRMfdZNHos4txmA8ClN8RNOv7vDoioTRusJKrGpUU1pgbMyemQWB7o32GtkthxPxrR7Ft4hRqbFm9dVLJhBo5CqMVuDIllxqr6mnujjY0BNgCBKwEvw8Uo49PJ8jmHs_xNZANsxEivmeLgeasGgSqZrTixdJTXiL0YSbvx9JXTuPbaDHW2M1hAoQPiJUfUoJ0Si8IlmcbyiJacJ-HwgMWOeO6rLBP0z4Nwgxwx77BtdVlb5BOYbcDMP3awIG4xiBd2r3tTU7aYNlAmchNT-yOPVLlEUD3hl4nhVxr_fJRHXq9zXEq0Jpey7eo4XFfN_vcpiGMjamzMXzSJ6SXS1UQoQzMKeSrP4rnBv3Ea_ANMxN7M491VCm53wQZaTnVQJjK6gBwZAk0eyFsPT8y0AXgE5OOl-9dKEyvxGhuNC31St0NA2VMINKwjw4TU0smiNn2FRv2wyFHi1STjkw5hRt5Y_FAncAbNdNmoldtfN2YaAuMfjBxciECC7B5C-pD7vhaHRB9ky0bubwvSZEHUfsyRN7s4E10qSaiagtOceS8qYPqxrThIuuy3-Oh6Ioq8p4qXYuqjvNTuzr55UuEgnzbBuIiXWLBMd7TPPsDvwE82ZJPG5BKsoksN6FINACiEwdkzhdWBS4663hcmfdyjTx6zNwb7Rwf9EDpKft4ORGzMtFE4CSYNVJDWRFNAd6QMCt7HYBam4DhjPHg..',1369657677,36000),('0gio5hd35u0cc7f0ibi9dkrt20','53vZasbDvC7X1Mc1voq8_tsI0W1bjMd3ERo9t4NEikTLhlhwpvRXbmHltIXI_EyXKnnNFV_EaWW7xabeBxkKx112ZIi5J5_c1ScuBdyBWxrvrIv7Zh9oUs1pzBaZjlyz5mVH7w2N_-NCk6ywGrU8UPmsaaCfaCjNeAH6vct_UN-9bHj8SCQoeKDjfah9qidZ1JpDzOmnztveqy4BSBwxnnrw_kQ56FA7qiAZXku31o_RQgVru1cuRexfPFYIIK5BbCbymUYQodiS0W5YWYGFEZxcM9jmkboIFjXI7w_hTcUp1cUkhoXiGFHTDbviT8NkqeH7qPWKmS0eyE-wh1bxtlUCDtkMQqY5W0p0vYKC8_DbS9SgRiKDiG8eq7JcGeQyilNDQQfci9_BeNa09ZC9HoL2CtSnpaj9Ml_oF9vWfrTHhhAi0VaLONDnFDvv5AEcLvdAnVbGJmwSZAEYlfJvW_9Nwz6i-Ls3ai_nu4_cAyRKnlLGBvTu6PoKNFjO0a_7S5g3gZo7716uMVjrmPjD4vkuhBD2WzDFwmE71gmatsKSqsMJE3S-z6UtQDfqhJH3hIh1yPKBphGut1k1EUhpoJkqEoWgZXQxZ-LzcL6oLJaMhJvGtibTPVnzuW-DvRMLs2VQBlYrspszv8qslLlm5W6n3oUz8yC014KAqn8YVFnoSGPisNZKu6qrE4sN5G8ErjQtT1Pct8RmaS4yup0Yzw..',1351001301,36000),('0tcebeo4ium5sv4j2gqo84rs06','2E_DY1E--xflennax98KWyiJHNK_UBINoDvZ477-o1KyBucLp1bWb6q-GkW8Z90x2tECdKUqdUVckczS86kSD59gxjGtTqyd3dP7msaXRx61-66VVfAv24OJJPAiUlGZw9baiNaQrjW59kDTggUMUsWNaCIkW9qqc3OoKBsnf1D04l5qWE96J5Lyi2tuCLXShrfI9Xyl5B0Vin0HkpwYDq8I4RYdxLd9T8_gbNTA4HqqQ1ENhQmlEP7BUf-ldglCu_S-Y-ereLSCWHo69T-y96QiNpO-l3UUGqS6Qup-cEgAkSln4YTfBFFX6GBc9E7nQ7Uzfxp7CXWvv1pusHPJLB0-GTrASiUNWWEbJmO0T1_fjaiLyBhCTuYoevN06N63fsKvIax4458VAkG8DzCld0yd8CGdRmMt4YouI4tVIXhgR-VTuae9latG08bN6d5aZoR0mBSZfgSAL6PwJoIWJO8teHIpgDTZx0yFnM41cUYpqyJKtw5NNyFqpkPO4bHLIXUXt_qc-sf6zaysxNMGPpiA-gEEaG__QSQ2WqHFeEWPNcKPX0L-2Gm9cffoh4Dko38Xw6ED4C3wD--cHCGzw5DNuCMzuB4szawHtgU2zEDGcNvvwvC3AFJTl_YgAYOcxL-f-3dV5-Nl28KdlwNNo7ElmeYRGARYr1dWRjhfdPEwd2-XWrv7SQT_8PZOeTqGbSyidtMtJXjvFvJpprH4RQ..',1369749045,36000),('0v2o65nldv25t7dfn2cv3fc3g4','',1382702350,36000),('118hb36nt16qlgcg8tgvu3n3t2','ZEpuMs7LiYvIUzJTsaZwwvBFJtpJOCutOPfgY5gSshy-emldMaozVGJerEcFmoQkJb9xMhqvTgJPUkKglkl3CZTsHsNYIobAopXmPnuQHr4mqx5lBWppS5ga1zq41DB7qqbKFjjH42f4d228432ZpAY0uLdwn5gdTsaK53uu5Mewi0-U8LLvgl33WRR0W7Unn_Sm-z-wHcxBV4u94yJqe-wO6rxv4sRGWzUvBIlZhD-YZ7itVUg1GYy4-E_Bty9WkY12bckaivQ7VhpXXj6rsjFAHkfnSJoNkEvReUUlhDmcnDU6ViIrYM9Z03o2wCgAC1CYqa-MhflQb5irELqdB5VmCsUzElKX6oG2-HeKRJiDuc4hEx1MO7bCAXkldFKyyINg7gxrL7go24lugk9pcQVWqx7ouvHuTsci69Otf9_A0RSF_6T2JWTiYBXsPWKh2MfP7tYVs7EWpnqQeaK4Vde-yvFqDf6UX4n-oEEnfbkSrfVK_LQuGoo0Iow14-biwL3Rori6FeT9E-cVuG5Rya9oAo_gQgMjgjjFv7ZieJq4BvM-gUlhuborK_WOaq9s60pCzNsD0QMDXnUO9OSLMRDM2RkfezGZ_21ap4raxDaVGTZggJXZh1MwftZc4k-X102dyENCogNJLjt_gkKuAJByQMyPNbzzZx2hl8xIvMjcWWvDX-h3afepAKCJapVh-s_6qYt7lg28G0m3Q0b3ow..',1366184058,36000),('12ufseica7qaomr202lgd1idf3','oBk1NUmJ9b17ueA6X-osZyUzTGpRE2aRkII4Uy-Kc_I5X9CbX_j7m8EPjxM8euDbZ2i4mKYenosTmaBBvXJDgY5Fybg-qOappCYPXtypgi3A8l9XLve-JbhNhkCbXQfJ__sxNfKeloP80meMHQh9qxOaQgh3tTw0yLjELI84KqiqJjj_F3o7W3L8UXu3O7W6feLMe7o7AAa0PzlrdGxn2HgPW573892F2QB7EMCLSXqUu_Mp69BPMYJdiws3XAGgVycxv-iwpgz9eTd_CISFnZfWuHgm8z9cJ7dsBLrxWPPyfgWf8ScfuXv340m-RuDwGAyrv7IfDdQCRaKhgzaMdQpxugWTVPol8QcwqjcAAAuuRCpPFgGsKDc6jrCmpxfoQySPn5DLefIFCgdM1d2QSk2e3E2ZFfQgPChD_vSUkjRoZBKASzFV8IKwio0uhnrhnq4XYu464Sk1hPacjRRPFvoupgA9mS56K4o9jhfjfMPSu1woVuWvtke4rAT-6uvpezlmb1lzvvip5_Ckm2FrbMTBbwXV54X56kFiq5YSt8QonLGjC8E5BcbvhrQCi3WMMfq_oSzXeXHnRDTgdxj2Pn81Muk9tgqWOa3H2lGmhZfgHFPi-IeA3ZIbNLEp1bmGp1wxCdygMTfHIq5krybd5n-jL9faucMWAzJT_DBByHxi_Yl-b7jkwp6LoJpChaGuwBFuNNX9SPiswPUB5cSTxA..',1355239514,36000),('16ghmcam1e8nadu7qbf0tnh9v0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"1786c0baae71f4eb6e81beab3ef3697d\";}',1382635010,36000),('1fu8ihd53fpehfqru4houha860','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"15055a2f89bbbbf1f8817a478aeddb37\";}',1380537608,36000),('1iuovg45jlog63h8ihk5l3vi93','LzWp00kYjb9t9nlGrhmENl7JGE2NLIvJG72BeP81nqiNYeOgWb3Bpe5PGOnFD8nd70ng0oXZSM1HG-quUxEw9Fs7dRSU3Nad_zoXjMVm11uTCMN1fJjcVgeTkFLwpUZhM6hwu3ty-FnWBZSCDU3myIOkhEjLBOjp_SQ4PHJWgGCe3EJnHk6s88gKa595loPDdwi-Yd-zalzzHRkm4jwISiYxWPbJCKoQDmua7e47EOohETKDPBCneXxo_4hVQr6jP-gxsfHewHiRD_eEnpeYTbVylXqUzR2mCcxkcSrFFSTwq1Di7Pye2AV-f8_N5M6DnK7eV1YrHC4J6i9ptbHfAEhz83lZklnLzb0kaO9HNYb4Y9yHqinoQ7rUp12fS_rjcrOtUQMEO3ZvSZ0itbQ_lToopuOitxPVKvZXqc_7DtszJ8wzMfxEay0gZJ9v6p_MlY_HNmFA2CgPE5hWDJVRfe6cNT_NvxuKkKuN3_4MYwmvU34l_pIV6lTZ3PdjmGwlYC9yyeT9y2bszCQONa_FPcAgkYuPvfHLhY3f7rtP8k4SUs5BPr0M8jXRvh0l9PY-b9lpuS-cO-aeJ-zO714tippLVWNv0rt_8XyzaQaoEzbZ1oOfvJ714u1ur1g3Ijg0ywfVIBQ8JPcMkvVmj4HteS1TXVdKLCeFJBuyjVo7km6EX90fejRAYHlZAfUm26hClQ5BFqW2wr3dg9k5MA6StA..',1351074222,36000),('1j65p22asr8947ejnh7vfj3ls0','tw8jmK8Y-W5p2E4ZHKqBlxns8X2Nosb-T4ZHu_GDTjhf2SeGJNVGr-O2usqJXr7Pd0NzaSJM8j7MUQcdVtCh2AHdAmR6WZeLUYHl_Q9jOFCbO_Zr6d3PvBwYpvWj2CxHAhNkLlO_u0gPf2P6ih9QzMR80Lo7pMBkg0UtCTND2HuVnSWCqnOaalseffY3abK3njJPu2TejacNKX2-tMSf1Ra6TlOclhf8Qrvphu3TAtQ--XiGy1dpRcg376erPtsM1HXhNrr7PLaaIbp-BFTnuPfgLbs9F2t9sasE4pNBK6B1lXM_Y5Gabz1pTHRPXceGvCGauiDI4dVpE4a1zq6fX7Iv-I5v77Iw3iRlBDusu8m0TODACy9h2VOUkz5VDZZBDgXnGRcg_YakymNwVEelBC_WTablLgbOWl1fdx4qazDMwvWHLMfCTFbga5JVI_USJPINgpb17OLQ2JMc_9coRsh5PI294JFULFL2Jhr6wGHDb7otcjImuXtdg_7l_DeOYCfZSqflnGgXSlWKw9FhORMvKinE39XB51U_8K5K2Q2_UzVnJrJO0RXUtKltf7FWKJ5W1wlcMO5vZ1ybyAui3aPnR7O31AJVW-0ccfha0zca1GsglqjJjd4pVkl2O3donmYzVfyqO_GvoSICYf_4ccZbeNZTcuA2d2jbvU1Ppq2ptx2oSkjp0K2dEPEJpxJS6SnhGD64HvCNbIBMMsuf_A..',1364225574,36000),('1lvqd9voo8efrmqcti03lp1es4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"db2b31985aaa8a8a2e92dd63bebc2962\";}',1383216864,36000),('21g2n3905mlt5422vmpmb4tsb6','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"ed4ed0555bad74bb08f8d96bae9beca9\";}',1383658269,36000),('26lnlovornhespjdc69td7h1g3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"05f4fb96ade3607d38903f07d6d14307\";}__ZF|a:1:{s:42:\"Mymo_Controller_Action_Helper_Csrfsaltcsrf\";a:1:{s:3:\"ENT\";i:1386493771;}}',1386493471,36000),('27nh6c1srkim0lmv4i6lg7ju76','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"69f53534016e482e7bdf08a775532aa0\";}',1383216763,36000),('2eniaiq07jdsq3khkcui4upg64','fBFWxUODpUie6Rw0Pd4wVXRrL46z4iyfG3Pwutb5Jw_-O5gQmHNwCS8gex1D1tykXQzcJzA_bGvpgb_VNkL4vD8jyl5docWClqDQcTpaD-NJaoi8Vh0oY_t4aUNadX3gIOH61AT7lsSj4CWODOn5pEzxDiHFTAvmYrmThe7SW0Mvb5SnSMxSBHmG2gV_66vIOvST_CC9b35Y1a-LoSVa-iR6XyUSmYtnqgv3eI-5_qW3fEiTTkKQXhvXzNOQXf89WX_ueWn-LWtLl4cwyKR7piE_qGYGbxi_V-RcmKp73Xehwl0LW6uIuNM1qNWtSS3plk8-lCRg8UIhVdyDINujojR6WzJAFQDk5UWRHpFdJRc0BHK6xDJwaRH1tUgn0v3lyZFOlXtBMUv9Us6Prm_g3WNFUqcqyf-jXOU2p_N4BTPXgr6BUJmBsQTPNxS_rKXegItsrBlfkXEGHbm-y2G_Xtc7Rw4Lk9OdABI7nYRJjKPpQgTyj_NE3GhvDoVK0F76cPTYhVrngyoOb8szSkYD6j-KRx63qo59BbAfx7c2pFPGtq6aBTvSXWpEZmboIrMiH6lM_Op9v9q34jnIbEURtNA_J2al8n8u-qi6euWeAC7ZWFnQ6BdqHByzaQxk6VlxITW-lFLxcGQdkm8F4JQz5dztqhRh_jydEF-SR2IyuoDhdjjh9R48eDHuzb_S6xz8MohGMgz-_6BeiW7W7jtNCA..',1346312725,36000),('2f6r53j3439kvlst5c46kth872','z9zw1KoYRlAcVPLAY40nkknovlmBFpJ5eKcimIfXh13YnRrU05ScJcgfHPVsNKXnlR5xfk0GEsUWnLLs8vl_4nyLuF9D3BBcRv_0PXRllQt2ElgCmza286vvdtl6oKFzwcq5hLlEp_jZBzGNDPA0Yypk6bIv_VbDWOeAMDfnfcOZwR_jxTr6butFfdjrzzyj71yY9S-2yyn4GnXjkkSG2038EjipAEneGdd9thdwsanEO-akbbJWHNGU2ZI-BtVMQSar4FY02AkkYwwutbxaJD-FD_z05xd4qw20dAiqsCKpwwEash0lpn2nMMv3F2IqJlh7bXPp_MDd8Yin-6xWzCIt9hXcNa8JEJFUuH78uDp3gFN7oRwsFImNcGJsjncOHidUrP6rXPi8mbcYi_F_qckXr1_ICSBNr2UbGYaDpABJaCzkpBhAdRbdCaNuOlm6VtBaBMptoMijuP4KYprOMKNws-tfnh8b2iRuJ15UDm2Wc325leiT0KCwda9KYQMYPtMPZV9IR2mWK8n42uqd2ta8g2zRJWXdY9P3qOYmr_GllLfnbV_Tr-M8wsEw4W6q3KA_GWh9eKP4oTINMZxsuZ76QNith2_FMJaxzqRYM3Z0bfjVdePZKvnVj1MjnU-2m__g2ASqenmEPifkA8JF9kylnzE-LGgTPLtB6-kk8oUUSobi0byDi5zfF3NaR_26qGUGdL8aeveRT-sbgJIHgQ..',1373389834,36000),('2gikj36eistbi5seaa41j9ufh5','',1366815437,36000),('2id1f0nd3jpeevp0fj0sl1jom2','Gibaq07mhHJX8SpAKVw9h4FoBllK4BAdtcDQDir8O7w8ldEtXMx8sSlhhVG7xZ63lYp6yby5raLk70qwDf_wA6tpaSvQsA7QfgdQm-AxqaxTHml0GqZ3u9iy5k_lBM4wTKHGPBZg_Kw2XLchbmLJ5tGi-b1vu1RTvqXnYlRA4Tj9K0ySMbrjvPZDS4JZej_Y184iklNm9GjfKNkIKA-SNU4DevR9qKZvUgpiDzZ23TG_ayyBTjaB_6XzOr9dCndSZjIF5ThXRNk04H-kTjNTO1FfGRV7gEwSIRWb-_ROVk8n8bCpm6UOJIbrwri3jEQcb3pLNbwjpkZy5huEZB7wFZL7TpXCvWsR3EcqewTbI85tX7wFCKXdDh-kfJUqJtHDHU5A7Ka69o-uqhzjy29hCgj_dvrvNFrXAF3lHyllyEY-tiVDTie4FQqs08GV9vROaXl6zkSvhjseQIbXKTBZdq2TA_fnkLULiidAd3P83bcMQDzMvbxkIQAh3FNbqam_zVET1nLAkvJqa7KirJTYFHiCJrtrMW65cPHvPe6iuv-78ao1rL-q7zsZku78gSIpK_MeP6zk-bI_yKPktd5Mn3o1paEdBywniKWUaiFQ7byugIC03tzwAh738oPV20MP62MzpYDyjomhE9sfAumGfjELg6_NY3K9EnKTl9u2VArtE-ayWSaezgCWt3X1vtRPfiNfUz0mbtZP-BKrBhtMiw..',1350990180,36000),('2mj58u7asg1vk40sl9htp7rdo2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"cc786193d1bfb5f3e48158296e65cb20\";}',1379759821,36000),('2rfc7amobml6mai0d90hllaj06','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Tomato_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"1fa29dab8dfe0c790826c07508a4f87d\";}',1344866695,36000),('2tpaq0teqr08kcdtl9ukpae3n2','lBiRgze96INuXmzR-Dee395YZ4RB80Qz3yC6OOf4Pus6anNB-ZgAAlHjX5pfnkyb1Al4y7oKti1RNpHYjxGQLlBUIG7AkyadSiiy_Ju7bd8dq4795-NyD_DekryL4TYVro9w5s0Dv0JMb3eVhx809PAudWcFItOoXq62556fVWFAQ-jvRqfYar4l-NRNmZO5eF1hz-G_fd48pZrxpexAPQYxefLjiiDzegnLa8f4ll2h1RH0SJ-2rIUZIN1dtgkvCz4s0FOcD7lK7rAIc56vSv5eguJ-deeF54sIhO1C4aeFh81lljc4HvO_jmHOb0ErSXcG-DWGqX8MQxIvgr1yNnLQy_g5AIb1Nbd3vtFNP0SmUIWriJwau8d8H03rsH4OnsZQ9tCrWnEQSt96Wm1QZqAR6NCVUHhHVi_xPinjMnUTOqie-ddjGQH-O75VUTTCV3BU6Z7NBeumg7D4mVTN1JQuzg0UPsa5E6g33K5Er7k05h4vDduBE0AJ98SkyioquzcLDNeXd94d1aAAfq6eG0dMxmV67IqRl_hHGMek1ZAsj0TFuDczbOFBznMFBjFwtFtmsktFjYMM3tzIkwRiz2tQ7b7FLhs1_JEENlBaxnQ-JZnbWLM_Dh9PyXTSY9A_2ZiBuJnajgfp21Y8xDJ5DsNJCETv3dwUS6mhQY7faO78S8TnMku8Qj3fKreNelwh1_JkGX3TGPEW-eKEVwUeTw..',1376499311,36000),('3b5fenghcc8rtv3lirut2i5133','3DoFWrFq0YIroF9-ihpkE05sdLV-I-be32B_BDns5S-XbMEfmK413XkwE_uqwtoh1hU1HnmA8eC31I59u3rrkpVdwU31k7gEh2yj2VJx8sS_08EelJJ8ANl8K8UHu_S-9pBAn9MdM9JdrprgAAaHraqYF7RkqRZDOidyZE-PxSBr8AK_4TbMO2vkG7E2P-N6OPCI36HzNSUZmfz3RS0aMfhmALfOTWWaMWYHCe4rtGjK1WGUHVNmpjMiYKkUPcKQmXTf-6vI88D1WHNdyGydMkICu7LLK3dFyJY7bxSpbkXiLBDu3aGJUNnurqRFcASWNOsyF2RhgOhFi7WvBfhQ5gxEbjAHKhT2qcTIwuA_82oZE3kHjYgDHy4hIInBgchGRv095ei83p2MXirASH5s3QHK4ESaNna8bB8EDsm3h2jtSp-uuhHgXSPkHM2reN-ytc07qxw2LJgCyNJOoeKxD5kz2g78Fb1HUYnVoNEAkgkrZfY971oMDK382YPeJpRAsRkHuto7bm1F19TZbzh6xEdMuN322_gmivmpllAXzBis4SK2ej0oAwHWAQHxQjckxLlGS5FRs9-fqkBO6S3-TmJwJIzeEaEJGKBxh5R2DqaIbbg7m5ih-_bkVg_RF018yW9z_CGJJBnC19vqyxR2r6cuW0D4vEvFzM-ggaxlVg0wTCChadRF4zNV79Ra9noqsePQYaBlRnB5rFz7Fb8aPA..',1368448311,36000),('3gsh01l49cn20rr34k91kn1013','wGkC4gu_RhBMc0ikEdgLXHWVQW0E-hEy598Tem0FPefjYKnGBKRq9rYOmFPBgn2HN0JFc00yP6HwIy0k_dTBTrfB4zBBJaRZ0ybfPPtrS6ef76WigUkbeA9_LTVAjl_2YiWGyd-8mySqhG_noPlxv4TX7zWLFb-6Nr4Ji14maVq2CFo3k2SfeBQPcH_a2vDrwmiOHWYPuA7B8EG7FATHknQLOISIPRASSV-Uipj_7oBu8WqrWQoTaTUgrBQGf_wbjxIn267vN5fHfsxvI_X9Nl875i1QpXYlFEpV83BhfoGNCBSSQ7YZwxgeYVZK3Xzf_eh6EA2lqkQfFi5H6QgitJDVm3KLc4U4cHH_Q9O8gRLCOiAxWfyXJjDdUNNEWn0o6U88eLJjxwZfI4z6ELSWNVOnMlafBnpl8783C0xHx5j9in4rQJovSJe9BVPZG0EnOMF4j8hgnBR-125SKGr-zlZ364ackf8yg59DjPKV7x5AmLENvR5HzJBWmRGWUjV8hr7z_AhtfCy1rJXWfPb8Iqj-q_nRGOrJ6Ij6O2HWgPzRihz3lcGGkg6XpTlRat8wA-OUi6vjGMTXHzAwWKvnX8JlcbBhtei2pd1J8uQCyRi59U0qGuRgMdQONJkaFyMlVc910O1_JEj9ppRFCHhioRzf1UKl7-3c5Cme_4yRC0_Yt5fVGySJgs3ykh9HLtVlVmJ_QRswzYAb4OaTkTJKxw..',1371470574,36000),('3nhe8e34lkqgk3thmn9al17l91','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"6960f1f647c3421333b85b16db59a07f\";}',1383718539,36000),('3uiupea5bvu0dmprfd4h3ouos0','qXv0k7xPLsNPw2ejLHVlDeJGsFDEYJjg7ZuKg0XwFpX4S6yThh58c4XvtqTvXngo6P2mav-5AlyNnq5HiKQ-P-DcNZuXhC_R-dlGG2rJIWqIXY-I-9Xzyx7yjlX93-wA25MhJOhLDXW-sRDP4C0c9a_sAaZPFhIEaBowIfCrkL7MgMsLArKWYWOBUCm3SBDA-AbMM6IQVazaFPhLmxp8CTxIXzYy7L_GV9r0B5kuc21Cw96h53Uhy8QI1T3LOzMcHT6Wlm88yNtGbFcIu9tdkViTVkgGFvRSiT_ikS6_zsaEZjGxXZa6qiaplzkCYaZ5Ic8eMZ9U-fA6hjYOh5D8mST6nE1-dD7BnfFAjspKAGC76YUODu7ofLfF8LbZJ9x26Fx1Maarjomc4DF77uvFGt8tnB3bAPnpUdvNQA4bRUBBS-i3MnyAIIoD8FfEDiWsT_Ekzk6LXEShxtD7YkKiFBMsfHU4wyqNQFuHj9PkY6OzSavFcmQRzmHsUgfppxko1v7VhymSSV76bf4iF2JasHiWCDw4X5ca6FXnTur0iRn7tT6p5_hqsW7mzXmf1wmoFtT_lPRRHBo4hgQoPQisUzqVDvLNRlG4Xemkn2j4rNXWZvehN3XPNWQO_oeJm83fx42vMGEYROT_I_v9VsFMQQCB6sZLCJmMHFlAiSZhLIPGrP4t8i7xY0Z1_VR19oLJg7Aff2hM8A4L1KGLF6P7sQ..',1346589787,36000),('49n4sl8prp5aquhg2ij5a0eif2','9Py692XFkTddvBV2CFymU8mXCc_pxBGnaPt6MblHs--u3PiWkpca_Yjmm35P5DHnOX5tefRHaMjQk7HubBStPH9GMohQwqt9TDzrKwLhXtxEhyxZeKi1l5tNHQeKjivbz06c874yBWsahxPEnepVDxj3uias5FLsSHGQmSTRuEguX6Z0rai0MLC-BQyGWv7SbzQhTkTUWANbIRi_h5ogZOKR-KiWYnsGvcqFzNrZLiBOGDEJxD52FVAxWa345eaNdgcecgOZSO4aWeW4facZoCmaQRaKEubqjndzccrUxbGODK8rHNwSfNwIOBgCerfWFrQu54FkwcYmP_UjvV8H2LZAa1XDOkV7vO7ckTcaGZFbId48biY2Yl-KXNw6NMCytuA_7QWaueiui9i-vGSDH-xs9sYRiH8xZRpqGtI5L2myWrjqHebiXGlIrsOg-acEKZJvEtq1e9k5in9_4XrUdNlos3b9fmPpxZp6EZZUDLDEnufrigmKuJWLL-LI5Rhj1HTylJzrBUTtqeSjQHBcHOsN17fLB-tXX3iYDxKbv_YWvPkh5wZi1ZqV17RcB9Z5UGaDGcWCtdNaLASA-Zi2E4rO1abURObCPmhOpMl7c0McIewLRr2tETFeyvI1vBbI481IYOeQJSVfDlwWvOjfjKYHPo8nHVXOxlMpuRGX-gIXo34vXJZqwwINpUpz27BcfT9SOIZMHvbtHpeljfKW-g..',1376582867,36000),('4c27ll6gmb5p67jj6admor89s2','dMODsg8mTzi9uVnhdu6kDK37kyoIDloc2wVwHVzA5eLm1h_oHmKp4QcMk38LYFfijyJM5rxiMA6rz51qawjL8CBECoYJ7BY4GHUpfZ3l1Bwflakvf6Z3xu6ydRv85mtv6OGIXidRo1K6Up6N5fOGEZH8PYxUoJllmcBFZ5mZ0kKBXZEfxCWmjvVCbBKUW7s2I1EIOI4pGKk3eVdyY1aInowwKQLqTDl8E4pu0o2EQkFBOnnqqunby6md2yXm0kprmGEHnR98uqIWdaQ6gMNhrh7MJeObqLma-TUWVaIVRuqNuVZqvjBHysctfsc92yig4Md4BuC4Enjl_bc-olmVooR5YEAPegh9vxygZEWHyFqqi1znfkTCNO2N7YhKcoNuDZJFCIaZKGP8KAKcJWvoI927vBtaYR0RUwAPkGcz3SJf0GE1zQ-3q2fI2oU8Z558LTPusPOE1pS_e-Gbce6VG_NdByjHK5JFpIk_q2zhT5UA6_A2Z9hdhINUt9RZ0i-CXUTDEYVV2SOnk13BpK_1VXik9knGp6bL4uWWA-dzMqnOoRcw-EIk7xUQcXCjnCkNxeg2ViJpaJZ6knyp6-NYDhABSLDN6u8qhlU5piPF9luRJZs7Jxn6stNaMmpm8xo0iZtt-4bstyRhZ5OOq4-IYn3oc6Cg87vb5aOTC9SAYG4fqnfcTroKSN27P4TDWWdoUBHmmvnltDztiP-FYbCvsQ..',1370962479,36000),('4jcuj1fdohoeb739fm61vm3gm3','UmgWWbnYaLmtbXVkouIUP_cu2PwTnNUr0rJ_LAsERPUAq5jUA2pDVIQENSAlBVnLEdbfaeCBO4zz3_P5nmrrViS8OA4SYRU7Draa_Jf3VZl4NW1SdAeDV0rWwVtdPMLAuc-ZtOPPI1-UHtHx2dnBaIiPLWNIgENWDvNtquQdCxr22EQOhSsSeYbXAOlkaXsjbh0Z8Y948KrXduRWQeNQxrj_qwPEoHHZDVRON_4OiS1MiStxhEVeboaJZx5fdpTd7MX_MYJD27uHtglcs7yZdmea0CW06j4kTfkN6uMlwcu0VGd3IYuVlyrdus0_43lAzPteArOJXYSa4LWGbUpPLVKIjjmLoa3EoYg52GXtO4qTeWOVPcxiPjPFYpoErQ4W0G8Yq7iXJtzC-tR94PsNuUuqf3abxeFMtTqWpoRdw4Hll0n5-yI2Q5BigJDUAMOwrmn65kLpqMPGnS2CRvj0iLblyIwJVfuXjjsw7FR04EgElHNj3RihKOR_RCjC3iHU5OfJBfWKpFZ9SaQci9gWpgZozq9yYIUUatZWGsMGJMt2LfdnAdLOGFVHnoCV02jAvlF6n99cu5K5kwdEQpTrDQyWfrP0r8IzyNRp41CKTRVX8bAEdRUy3z-j5bhTpvldlUfkZmHZZcXyFuLhRPaOYToXgM4ooa3_9fK1i6rrAl2FG8xx98VdDyR_ImBOdB2_oTHWtwf6Y71yyr7TNW8NnQ..',1368714644,36000),('4jvvvmj3l3fiqo280845gegd76','',1351001064,36000),('4m8pvjg38ntvl25omcchvbcvb1','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"f651f8b8c940c39b4147b7a072b6fe7d\";}',1386690116,36000),('4osgp5b4r20t5087bvavnfnd96','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"42ff1422a5f4bf883d06713b321f02c0\";}',1378370985,36000),('4vhrlmmg0us16u50tto0njs3r6','',1355151226,36000),('50solqq0g15mliq54etu88ar73','eShsDzmtKpKe7RgYJiGPkrQJHotL0DRXq2hA_S3ByfHJ8VNUz2gFCCHaExDUXxrPc4Gw9f2ujppJqXdrE-zGoXzNqyYdHl6DhgY47odN7HwbQsDu8TCoLpGB-Kt6UBhjsv60bpLa-HTjlOQpDFNAjaLYyODRstV_3FgENyoXvubhg6B375kDqBakEu4onG1YD29B5O9jBBulm-ctOc068GDxLypNRwAVHju-cOk5zuGQyILY1DHyJrDySdBa6yFPw_WPVQXb89Rmr_ekKVuFiyhREmjRWYh3ehOCKH9bWKB_LlfJhxGoGqIBwKUEFV9KJBcn071dq9t0twr7CoX8l6ZN3gqw0pfGc77o2OLRMFT-ETinzRqRGEWHtFhOf7LHhVgNZ002GsxP7sqjOflQjJqqPgxbMfNP4R3WgwxXWFG04-47LNxPMGwVAhwLevEdleTu45SlF-I5YcKCIhg_CYcRLzwjBDlHpXiKorGyY-qps9FLgSHzqTZgrMEbYXuf7b00Tzpqr1wzQN5DwMjYKzFK7z_6XWJNosvAjMHZ37uNH3Si75oYUzvDNLynsC-WO3YlmfTj047_MDahcrU3-dWIypvhrLjL7h8f2Yz12It-QXE9j910f-_SDGi3XSCDofmDRtw1iAHfj7rvXvgeIPwnGsKtZ--beuGc-BhWYjUqNwwh94Clh2D9ONidwnsmqUTYkofSgylKxesWhA-zEw..',1370371540,36000),('537tgif02jjaopo7guc9fa7414','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"1644295effed582a304ef002b31428a2\";}',1383214023,36000),('56c4oks1q3o0h8q707dfq1f9s0','NWBXgie8M3PV0NrdSgeBO17R-v0MMRsCYI56YO98SowyhWJKo-K-6UPgzqK7MdMAKyhA34_4PzMuJYIO9PCvfbhF0T-_Mv6jSmAoKB40PLOjy3ii7D1sWx9HgT90zMeV3GJYxrdi5xwRhkUBvOYALXCtpOjoJdIqnbHQewhb9m5shRp-HxBV7jurJ8QeP22yyzbqDH6P9hj3NhdIIWOeT4B0FwRzieWRAmBz2kXCznspljVAgbLu6LXy-vKhsYpOeGdMcjdcztIT90QYw-P9FofqL_2TZvm57X6HCPnYoSyyIAszYY3MrdgK3r6bXhUMEUNN-lLSlPz3U8T5eWzAMAG9KxQOGJv5WXDikSaMBoj6lTlvgvouKNvayTcp0PHHRwEFLESKAG2Mx3OboMwn75HEyK8VlboM5xFD304VU_PmZw88XJobmoPEiTy9Yq2mDjX_O8RNcFOTnHCEjJL1Scn41CMKIJys3Xqsd4C-8sDRkLSgnishNS0tbdCgmXBJCHacNmcfIbE46vdKXKIaiBloVRkph86j5lX9RES5USUntQPQsJh7xsrCA6YtC4qKzKMgQ62fIldFvnE2VP6hEr50yetmYtUpm-51Yz4EtWUE5POpda7MLVXQVQyoAtGOKHsmjcFbTOKySw0cWIMd6rzmWxx00Unt6XI0Mrdiv04FI_AoZ7iDNtrAfLcU_inNm7EsE_FDv6X3zNXYJFQ-gQ..',1373470251,36000),('5cs8812lu4sti5fq5jcvuj5563','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c0ad0e8de1eaf5aa3dd59cef38f637d6\";}',1379586888,36000),('5q1qr2j40kcsneheusvtjh0j12','',1383604460,36000),('5sbgm9hq7stju9qn5buvlc1cl6','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"8031a1e695216793d6a5581eef03acc2\";}',1383165611,36000),('5tfaehkunnv7v4c619236lip96','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"455743b158e903737d87cccb7f8ab563\";}',1383738913,36000),('629m8snaebeb3ccvks0aqvf6u6','g2RGIxsOkvXtEtLY7l_UU2qhjvYQdkA5igQnaqRGa_Jbzn8MHYdpKmYu4OQsUopSFMocDkZa3DXJanz9JkMJ_8AbnsSA678oxTlJhlOUeiOI7pnoY3w_JhaxSlP8tn08pKIKOfZf2Biu7fbESi1miJcEbyyjZyu2kuR9uxvFA3afEtOyGYnsgK5uMrQ0pfEHU5HgjtJv1HkSVgvCpgNYIhIJFVGR_Qe9B2xmHDFGXZlpWCCGqfMrBp955NM5KnpimQpBMblZngNM9GRzBAN3JvBOV9Damkmv5SlqnNU5iedQ7cDesdIwGSQYEnfAcGVm1TZ7LvLRPUT6L-BVnyh_Kugml0GMR6HD0JADof0SZu9C-xq9Cpdkp8-zN5P0qGq1SspRWMf9zfH7Y7wsPXf6yOrTxfrQ82Z4wP_sA0KTxUl5J44dcoxhqiKxlqC5F2pmYaoWPJlXrOBw2_m6eHSi8qiF52aPhz8gO6rsifkgi2TkNmdioiFYwHEcp_2eKtKbYi1-qRHay6Y6OnJ2CLMY9rVnjhXzdGegzNOAZdxdUDnnAt-B7F9CTpmDFVeSEunrNYmeoRYFIBFCQf0fn0L2BxvkQRg3yaPkojog0OBXCcaw_1AWvzjPqZQcLoyGMBhdlWLMWQ0j24y4nNxBUe3oJ7FiS7gzHNiLWJ_gQnd3-3edWplIl8Ci96-AJw9QFhDQLcJxyMtuyAEuUhv0ApHcyg..',1350929207,36000),('65km7o12ebpqnm991sm068t9f2','TWtP3yBwyqzvnPd4kq_-3QiHin8XuH_JRXTsqfB0Jkpya7tzDZGGHl2O6h7P1rGeZjI1kmF8piG6nYYt4DdqAgPsotnoDsc6YPZLXTcdjUezVqXDks8E_J16pw5zkY7fsiyWLHBCJecxub8wtfSn8yhbQ2ASxnIQLDjoFYbWcsCA7tL2AJ8bom_VUoGDq4lsNQYA8BTwQUgPcatZejf2EFtXeXa9rI5uh4G4y89qUMuRoHPj2i8uhPQfl941msTZ2P2gPZZNCOs7nVA8dSpXIK4SqQOrb1BRpeB9HT3aanTNH5mP0DlDIHbB0F9S-GeHOnj_JYnGqB6kPTe1A1yxXFs2e0-8cFoPJgEGyTge4Npi1_xL_yCJZhzaEr9reDCTbXqvalH_ETHlspPIrg925XPvKo3DW0G2Y-ryhMchbgMJfHRFgtrUz3WcE_kYu5WN-1DjqZyvDcJlPeu0WwcIdKEJxUIx-CR5lKmaqV5TzZQG1q_i_h3Ys9ZfydRv5mvVIrws4mB9U2c_AtY2eF-uAaJdfzEg3801AoyLkoDlDfrVAo_BbSN_og7vqHoFpVEUbdcFYWIgvgWYTlSO2HS4FXjQew4radpuBJrmXIzKKwssvcyEB72uprVRPl_SAT-et8VN2X2VCVQtwHhWbhy-GhApp-LY41Na24XtmlXm0hPbjkeRdoCPYchT3dzB4ceC8smoIJ95aH8jd980FAjP7w..',1375715557,36000),('65m3kboo0la1tekru3hhprn1n2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c39d5634bbba25bfc062234b40c5967e\";}',1379940544,36000),('682lis6fgvp8f1sv9rb0k8t510','u3Ib0fShEp5PEyR0jnK-vq3otBdPmrNJhS5t04-dnGln4g8ognjfho1aruNeZR4b7VXJtBZoSZuxqKeWsjM5Fa9zBC9lONhMew7agURwupV2WWLdJzCgpaRDs6YXm9_m27j-TxYQZ9NRwAHahC6T4BPeIUBgKDkdVK-H-AyQyeLx5DPO-w20VbXX5MJPuB8jQnG41XUZe2mQbfSq6HoyRbxoUDkXhBEGPtRz3ugw-biFjseKszSBmSVJYbzq4Ih-6W6cQzcs0gfQ6Ev3fVmKAp5o198vCJvptLv8ERp5gKy29hduCUM3w3esYWnQ_057SY2gOdBQV_uuvAxAdD_TV937snTtPjkhqBjV3oB7pkmwyrTAMYFmQsCIcx7hwi1ta4jy4x986CBlfHuIY6-Y4c3VsYPlA_0a3Tf3REB79atjFrVOhY3RKsXCMeNBUmF4ZtkFnGlZoS57FeM8XdZPTgWkumhBnR90pJnpD9_4vRhFbI4c_8JH6UKrlle0vwk16UBWcz_hQQJbU0DnF9ALcArdVKdhSLWXI8AQ5sHa65wlcIlFBq8Zdin44Jw8JIQXUlqrt2uQp-SLMK2KhvBLJez4tfa5nFA4J5nj4-gFPnQUGqudwn-_UXmTSR3uIkXv2xJXV_sLpJIUcwv15Rqkzt937Yr03w1JJdLnQjVgnj90oNJVyKVvBpoXuMOPlxrYYo8-rH1nMLRJkCUUG7ifYw..',1356520315,36000),('6a7n1kdill501ogouggf13v8n3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"b6aa581a700f3fd78fd7b7571954d476\";}',1379592876,36000),('6gkjnu36c9fervt2on6q8p2cc1','',1382722239,36000),('6vt2cbhiqk5m8p0t9eobo77uk0','S3Ucr30drJVuHdxEWHixfTN51SvvyKvRdSEFdMPVIWWrNn9kOyCeweZMjOIZu3lSQw1vW2Hy65E4aKVskN_LWQqDT0m7v5cuPrbcNx7J6xdGj4ErZIwGvZdA9-7CcQlDqjTEMXuOsFNKE6lcK2ApFuNCSZWnR_-xg9OZtrfWKZL25hbNZflAeu3S6laeoQlzV6mEklpSvQ1uITAvuGWla1pC9eJIxxyaMCLL3iyFIqego7n05ZGK_OhAroL0YXUq1e9jILblRJYSFWRa5j6-t5gPR2PdC1TUhLsuvrl7sxpNcfBBE9Bdn-3agf94zAG6DpzOl-wL1oSGO36jCPFtuNCCy-ADdiro4YZN3Yy8KilC5f8DtfUFaKvSqDB3pRoU28cu3sKXT8072sHicfnF0gLSUwZqldximB_2S-fUrmSilPhbDzt5kbOCLOsQA83EqUNnCJTY5G6gbqaX81GPJIvRaRvTeLIgS0KQX5j-mBOEHhvvAS3PLm8gSH2Q3aL11FZhYdm66nsVPtLWH2bYEyvatdsiWz9nfdqehVDzgmeT9t6fa7LU2kgD2XdXTo2GxQOuJxgIS43Xn1VjkGZebgoAGYkSTcP_glHUUzf7Np8mC9ayKW425PHySdIygqvLAX0d47ISLJ1qyWB1qPAkwWRql-IyyLKR8zxPES0TLCQoph7FJ7GoOC4SrHvpdzIu8T1ig60n2GjDTa0YtEfC5w..',1370781660,36000),('726rmv0p6dg8rgievj93891mv0','ebF8CobeNB2QmKS1BnJiT4kObgUFjBgFHGBk3CE2VEKIS8GONItY9hGEM_w0EPCCdVjiqRjZwaw6CKJ4Bi2fJ5sonanYLz8FunqaXAuMC76rGcSylPeAxJr2h1QAuOXYfeAkamTMBCtt9ouX9Wn2fNNY17HqS2pjbZm2PkGGx5w-GD3Lk6Vzac1o2H9POoLTrgitirhxP_HRCwL5GFnUMH6B8_xIaP8-9a_jQJvGhBtdWFjCGUv86gFTHf1OPrdWnWP7icwEw6WT25Y8WcvYIoeXXFSsQ5L2U7Zwdv8exLz3KS9idrfAYjuyhNW_8RuNfeg99JTToIOkjvtKYCQN30Xxu-LEEbYNXk4eRuUG-3qcLNjdnhLBin5ZMaP-oAamBsaqBtGzrllN624aFeQCyKaYp3NEkO_rfl9PdEg2Hcws06HdZV2UQFQmhX3v0jjP0oQcc1KAH0ky_AwzsFdoNUTkvAwOyT_vZaKu8sk21QHbcbeE6It8REaZXedmi38iXusEnCaO58_xTQDuhshD2_fCrhkxmTg01Uc9Q2ZOsb7z0-eAI4vAVyyXbJ0XhI3BTZT1LHuPEeZ9CPdaL3nAnhmZKyBXY1N1aNcsKFHOBcAtRPsh_95jdzpEFRWGCzDmtz2PyC1mswv4QEvRQ7eClwG5i5BIp29RQb1M_VKj11KGTPzy5FZyXVBySdDdqZ-Kszdmb_Fq6wnza8i41olFBg..',1370793222,36000),('7hv3sonab5bvnudpaf81dc3s34','',1351590484,36000),('7hvk587c5m0ipo67mq319tqri0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"b583fa5ee026cbbc04e887b60fe54a1f\";}',1382892589,36000),('7iide0q7dffhlqh6i0hklnt1q4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Tomato_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"52051d4502086b9c85b818f493de2fdc\";}',1344940700,36000),('7oa0rcbv4ep04ha28pt04hotp2','CZnkHUhR4ltLbwE0I5JwlQ5yl0RQNnDl3zjuUMio-zwGLbAmS5kA8DlFqkyxlRHdxFs-yq9Ypij8_YJyhmmd9olkbnR69s7K-LyjE20-KWMCzdzxPK00EBp-rA71YjIBHUJlvHryMITWDFu_rqh1EmVx5sXtG6jZLNL2tV1NY9WMZHWa4BMYHnEAbKDFIIBvOJoRSd-atX2bRHWJ-v4tdovIHOAva0DvRRI23CLagABeJTYxUWRgcDZ91FTfDV_7J3Qa9j9e6lyDcvf4uCUWh21Sk7UyBXchHOytqD1N6-qJkL9TBAnGDvlGkRWnczQR0wUHDEZl9z6nwvEwS3cfMxfpMb4bWEDiQxUeoJSynONP_eMUgWuzLMM5SFGgm6w59U8xo_p1HslVZ55ZW3DpvS8CDJj5GjxB21TgmE6dJvIBURubw1GUNskwq9868Aar-XVaXpjCgmlO_UXv07HMbrtAWjiovwbPpSvzDTCKm903adu0ljsOUXM3TAYvmjICZlxj-5wRtFF7yHZGN602wqQ2d8r-F5v-bdyRXiXAUdE-7jlZEU1KjnczOvYR_wlemXNH-SbWJTermLV6KIH2Q2ZcXAnCXYmPyHWDARFGaXazaqIPrKDnGpwQSvzPiWbK5oXM7mU0P78P748iELUMrnbiMiIDE4cyoqdkfCL98fWq7b1oLZiQ-NyOYPgjcCzcfQK2c8b1tZGjIiC8iyi1mQ..',1357556048,36000),('7sgp79plpdb0u0r63umr4lbda2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"66ebda8fceeba28e82b53e93cd46b1ae\";}',1379948541,36000),('813u2e2gprr2aroae48otqeu91','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"a1bb898f7ab380f3614b804001126239\";}',1386609465,36000),('86d9p30vk40daqhi8tp3b46df4','NM16AxwbLEnmMfCGfsme8C8Jj8mOGL8bNwXNJ-qvvKBtF1UDXbtxLZXW6XEfAFPWHfmyWzxc85mLTeekD5a2g1Noy-pLaCiEx77umrarMin_pbvFAqRHIFsY7h7ZT5l5eriAGn6cvmf29JK9yvpJ6g2Ftc2loBFLzkghl6-nivf2tNpRjLxG6hSGLXjES1p1p2-XRbfwQjwrgp78Ctz-qb5S0YkTkKcsMt_qtKzk1Oh98whchmJNUNyEe-lxZ1Zn-0uskJhS7A1ASqkcOO5Ml7-BHPt6MuGFSigUyfgdhTnkGY4J_tXuIuONtdon6XE2CeyF6nNKDw5uWM3mRLudCzfNpuHPC5ooIwMnp7XIwfDrKrqVOg-luk_6O-BMRhVdDj3BHpUnAnrBtGNCViVuHWZ9d5vAtdRB8lGM70dNGgnSNOTEUrmeRWRqM1Alr__dnS-qffZPnnyaqYIP6n7rwgyBaG-FhxpQ8TX9Uw9IVwlLNu5hb7NpjntLBpDQXaJCnaswUTzg_JXfUj0BLtOwAQ9exYR91sKYVMSVrv8ddObXDKt1XJbcd4xT3VQ1XnXZbLKlZlmprQrbh8ZahJyHBDApe4kuLKoTVJoTspbjRdnE3_yp08gTkwmsV3LH4KC-Nc511kwqIJnAsX6Op3dfj3pNsIRCQC2MmjY0efiOcLrfjlB7udDJ2qUJ-I9nQakvX0uZopzUV1tB471wSDM7VA..',1367411997,36000),('86olqkchaq1foilj05vr2ksjb0','Owt5ypeMlYkTEOmtHhJ6SLRE1hsN_BlbRwVonFGvp2DRxtXMdBGtOnrZ0XxuyqTt-WW-9B1vemGxGBp0FtykIUou-YPqIn3mo4nXfOy8JLTNEq0OLr7cHh3G68-oxOXsBxTi2ozvr5dnQd-BTKjwynwzCBpCMoHOOr5Mp1MSn47LuBXEonMLzKhVOOKfh3herHJn-atiouoXYCsBOZL6HQ74Wi5uhoQZuwqyYcKPNUzQL9q8MYNgk83V4L2JuUjX9SvjVw5e5zStypifHDk-BbUm5i_nF6fC3sLKpwC1_axi-UDd8B8mUQMa9uChOjT9p5ME1OVTwM9kSN62ohUmaqMpk1mCLubuhC4EWksvID2x3p6wpDjU3KVufi72-JInC5odOY7DorMGITBO3fByjNe05VRFUt7owCQtL8VTUPmqDjAq9EH5-ILEVdZgm3rMJjghdJVakUbR-zXebjYASZl8FYFMR8MtqiL6HfT6S8ged4P9d7b4UnDMb1ZMOb_x27mrL13ZielyzH7uE4AvrwnqS-YEgZlfk4wKNzLRGdv4xfhAE8faxx03Zzly-Ys3IvtGCuS4Rn3S68PoWfN169PrysPRfWm9z0nLiI7q-JJEr8D_tZs6OCiMV2Zl6v7fYcgetP_jM0tclG9JVSozSQfu_FYdVZD98KNK3-O-BKl13ndCULkHnbPL0zXpeBMEjYxRkejk4BBskhSOPYVl-Q..',1370371329,36000),('87eonnktvbub6nq8b1bn0sroc2','0ioeS6jCvfZabL1vEr38dvawk7TCoPmXhGndUJDy1G3Z-2luJe3RZDiUEsWaksCOz92PA1m3T4hJZSpARRZqK6BcCr893n5oPdLb16LWRBLyyxa0t5T1qGnQpQswoX9IBEjcJU5aO73komlAuJPsYQIqUgPDCV0dmWpWJwjAPDpa-FGT-7EGXu8X_3n1NVX8B5vi2cmeBwnDtrUwAyN6MbkPwt6JzH0C60LzsnXJJbyBSEpMi-dlqJBChPwGAh6r8AyuJo4J1bd7OO9dyDlq5fExGz9DsJESq3ToM5r1tVoVeZZMnICGQInQjy0Y_XWA_DrSW-m0plhq3nRqHhxunpN58bKWWfaXQmaEaF0Z5N6T9yScMaNkgYdBYMyGS_m6pRw07dqkkC2JAbYw93XPZgQSSiGrtdYaPnMqOaitxDMlnIqB_pzK6jXtqU9aHuL2OEWmW4ppsVLstGV48qUVFLvI8pPP5BihmLcggPmg41JaSEXypK_kKss4P294wSyfDOxx8IWXaNHDbxHMarfTI1cN5hQ7Ag53LD6FG3KzdVs_5AqSLpYIFkFJcldDSKMTOOR7UhhodYho8RsD625q7E8kNQH2nqd0wYFN5BH9Hn5282uqBkpPuHCQLWmWdWPU3mtKq7HysIixmTmup-futt1x1nqX45jHsblVVz6p5QNKhOhb8g39zcfDUTZNJkTdLlcgdKPDEhiADrqKLlDIlA..',1367153516,36000),('8fqlihpsqvpqu4ta9d7c2vss85','GDXLRBT0g7Be87gUuwMAtdeqNnhLNOwhflpxRyslYQfO1-O0ADUxNALaxvL21npiY5p06_RlvmfsYtLc44DmZQggYeoELrpm7R_CjzmpN3lmijaV5nsa0vYYz6E8q-2i_GZMrWwA8gZDpi4wxtML8G1kY-SptVC2SSuBAAzsK_2KqTl7rpxA4qAogbIpcXYfOwADAq4nPDTGsk-CqsxSQnYQSIhFGKTjWPEMHRytLrl2oLZkHHW8uvATg3WM6cRDsR_l0s7xbXCAsRG-5vyg100iaUbny8xOQ2vQYhYHcd0uxEfy6deB3LrdHsCpSW34eLFHJAbOw-sq3XpoRlYgBchUDdBkVNuXQPGNRGA2wg_3K8rvaTjRl0i9UCK1_rXBpHUJ3MFdqyiyDh_ajeUSneEc_vQumw1e0b0BxTX307kPC39yAAfce8XPKHOjyoj7K5HxTq-ckHcXJhz7dumhqegNWjlOu28aAG9q3h_TdKT8QedrB4Civ6g3mIbn6YLTydZl-CHT3zLIwsWyF-S3a6bl87UtDv-Z9wf92fEUbXCzE6IRXVbDgYFE_vf_dLs2y-f-R0zeRCp8V6bILCPfPgmYAfNpA4yOqDrPNg_05f6q_YF-gxx1WkRU0GZZjBeY9ZLijfMofpGfhHsSkn67h5xOLep_pK4jYiZjLvz858sqlB0yybYfdjqp4rrBC9Etf2t3B77Rj6OxFLwu5IkcJQ..',1377431552,36000),('8g4vp9h1hunn5edtonh3h94mg2','8G0IlZD_D5uVtGEpsTw0N4ibEd8C1mUCGEL6a_I64oJZr519WpeIWwaEWTqhAsSh43V70rvHz_cc17aCOjCCeiIZR-CERZ0PzYh0BC-J8ywY6qHOjy26vrnrZUo-DTcezmz5dHY60U91oYJzxaNGSNNdyMQOUk-jJjusBeCbdD2xhYbL3pIj5FE5UCYlcU9v6j0oX8zwaYmXs3OjbGFpsClUhl-RjoeFtceYLuFdLjB9EJdlthhdz62X6BUFauEToZZM5ATKLOa_7_KYhrqjqt93MjlEtdsd5TY3DfHLRFK0zAM0rxWv1xyGooLjf_jVxBkS03fiZ4lnNKYFlZL6pDhIVIS-B8pe_1Zf-UXDEtBnxe2x0xFa0zM2I3y090GjWSMtVQDyUJvuoZ3Bg6aolpFYRNZaMjKzHxXSD1AUnRasf4hCmW-QQFmsNiRu-C5--ylJFRPu2-q4PRALEAx5gZU5G31KTWMxtjOTGSjsxuUMrLTWFhdWWrSrpEkvs8LjUc863WETDvwxBa-Rq1vJx1LMC2T1eqSKz2743X3YxrA755iUc1ZmFw04xx4WXpTxkgff86ScLDa8pPZOrdohtWB_KADl7V95NdA75n70-7Yx7-Op77hA57LQ-xT6e25E23pGGfyqyVtKYc2krEnbTTwGds8OT32uuJgOG_YSL9aYa6OzcTEiwSnw7cCe61XOCsesYgR0-Sra3oqTXuPvqg..',1363772137,36000),('8hlsi50742i75efjcjre8b66a3','ZPlYsOyAxpkn6e--vedKnrpd-vKyZMX9ItY641RiHZFnWK_QT47GVo5K7kyxk8yuowBW5sHD6rtTx5owdF6-fmSBh5lIbo8-cqm9zhCnVfAo2FxkE5NfQNBZ-cTkCR-mjR6JgID2HG3e2Rb-9dYlU3Bwh62Yq4Rl4KVvfoZDFZ7LOYmc6oV9wmiyKthssBB-RINrBGsbjr7dD7B8C3IpCq7b6GsLNLrMZkIA8_ujFiL1R1lvSPsc9fciR8WclwkGliEKn0APTHUtk4QnFXd0rXKxpMiKBtBUqLdn0bn7AmM21ieW0cyx0lH5nkoMztP-_Esv9GvKoMWJYpjVg2_o44m9WbaMFRQfuze2pWOuLkvOcW9219X_7tKhzGjKUqbKI4iiEoIc3h2wYdnS49YBPUxOyqt_lqr1PJIlf7fHgT7R09aoosuiiOwl0Yydb4WB6717dVLZR3t_6hCw5_Fie8Aj1AQpXS9eXrFc1DsYb67WGMleSe7A093EFhWFjCQSStviisEmw276CV96StOvMMFJKgcGZHdqkj1OAprG0wxpWHQ2NH2XTHjRgmBMznlqucZmSp6uJ6h3tJ_h0uwdH8_-zoEhU78KbVEPfqZkZ_kyGG6_oEE6gumGwiaIT_O9ASbGAE2jzH_hsTs0d3FFwMN5eU0WWPGOyn-HrM73X9Ck3WRIk3fNX0oxubmueM0-xiKOTj12URn_LGGXSS43PQ..',1375713457,36000),('8odsn1d5bfppoeld2lgp1hdqi3','',1382721615,36000),('8qipj375acnq9guvq2b76929l3','',1367738222,36000),('8qqjknc8dga7a937ld3p44i803','wRuui6qcdRH531qbMJTI4kQ8Y_TMdYpgiGfCFNykKr1qMRF6PE4n60Wrd4mwbpO18y8-q6mZCeefF0Y5cDkThUJ4VrggoBu09TmADkGGa5jd1xvPC-e6pdkf06PsThrLNW4eQQ5aNFkddsw8JeZYWGzljSBeexrUJtS6Kumps8_81AgjnBUezTk-IUYjNxPqiJ60ef_iuOVnPcuX4gFcJvlUeAsUONar7_6D26U3bMYuz6XG67o60GmhcHzh_zjwUoMejcS022TbaWy3D-t4ZDDosenDPhwQsAaFryRIj6_dPLqsgoiCVTCmbGsZTJ3qYKLCqTLadXWOTIVC7LP--3MReCnBpiGmtbtrL3F2tf11C6feMmko6vKwoo7mMDbAilklvJ1E-5ecrkjlrG6CMmQsppVWHzKzKgeTX1s_8HWN1SDfuPi10FS6S7y0ciKCcqUdLxx98tUm9U3JLNmuTifv7f7lyXKVI2CYHWRuu9YxIgMAn-IjlUSSqJ_1cvWV2qKT2Qj_M3fjqEf4oEQ_zJC93OPdNjTnF0609GFEa-ZFevyAY3t-o8UvXDiNeF2ezFOWxNUdBYL6K2Wgp4sZE72qFzzc674Y8bXXTz1NVJi95wUS4Gz4QJZTcixxU6FSnJ0JhmLBMM_zNthS61-0V5OYWNxioXem6D-Si3oCQsAaZmPjXdQWHD5O-hRnVZiW7X-_JmMkf_bM6w9DuIeS3w..',1345129031,36000),('97ou4n96udd4nsh9iivb5rb1t7','vIqnxfbo0B6dwHYweahe7GYl15kYWg93ngR5U7j_nIbiw3dElEo4TEXWYPscAg7COqaN9dcy5_2nn6pBIctb38lHx-gfaIV3uQMTNIeGhYNJCX0UzBkqHrZB4wY9i8gAVvQq_NRajExBhh7ZJEH_3qfuJqSPtTSlZO0eSBBq9cjSD_qMQyc-Wq_NPJsCuweekSmvkQz_-yYagXMhvjrwR_s-IacauwgZBfgsQ1Fyy8chDYhVbks1DN3MjkX6GBDwLqJMoGgAqUG0PQAloPJjDgOhMVD2W_w7znw9qX6-TWfkkHOc5okJx7BnXMyaX1ZN5THcOSxBAye2d0UXHzHx09FX4_AjkXSrLY4LVb2cosiWjqrQZ31i7hhWvoVCISkJLVJvoqYvJNCHBFCfCEFW33Gv418EHa6qDkv919vTwMg36nF70bA-PYmOFEIdUeWHTkPZ8pg2Z7KAqGYQaVXiRbyl2ipLlrpyihpw-PnRokdiD1WFny1B18OKtT5MuxgxFpLxW9WjX4bKull4t-ohvfl5y28Ea-Gnlao1qeLN_4xpdHjpZ5FvM-b3gR76VQxVBRcun-0FPhuNpr4Z62Me5aIh_4TuRXyFLA4eECl5hleeAIqoNMmeaAkjHPOa67PD-PZwNS_KB_GPVqOJCMfIy0lXCtjc0pfV26CrgzRH9XD8_8DxSrKV-27JSRI6As22-ikZ5yz4sakcwWNBCAUhDw..',1375888198,36000),('997fubffoej5bhsm7d6opbigc5','7ybpbkxUZ2uzBe4bX2chJ6IQDjCXnv-SaahmLPpBgWZZcdrM6Ip1KQDeLceDyv_8euO2wahYP2bqMo7C1egz9JfzbSVLH4IOn2K3Bo_jeAsQPBgAWBkzcYSMjEA92VUfHeYohrDisy9xnHcCvjDcY6lXyph_pnVhW3NAMoeRt0N4RUy9aj1tlrZGFCW6ChD_Fe1bLOhU5gdVPa3GsKuSYjZyRpMtrVY5L7A3evqu5kh9TwVSXyQeZNOaxfaI00YMvUTEBLbgXY5Tazu59o5KiXKUQd3m1EjCM68PqSM7EHystQuknBgYKqqYqeXxnDE8PmoTJHMlwacEPyG7DuPAaXb2nde_RsKGGpc7slqWV3zCUbJ8eaLLZNeHZQwHZ7srzkfDItfN30zWYsxxha24MRrbxP9ARv1OzM9w3Lhd3DapkPEVNLRy9VUZA2vh_tiqAZitGREYfwGefQfw7kwZ59nE4Tr9zk6Ml5b1zGaZGadReQwUds32WCEThzZjzHOjbKmXwgZj_XBgAXCtWrvyiRt_cA1AwJdI6jAwToe5nX9_5CvOb8eMoM1UcEpClmAol-WssGagyJt868p5JFA-6FBihNi3qvpqhR0hbEXOOseE2DXh3BO2EYGMkBlAX4iLybTpkFbwaDjmOEOG7u74ZuDix_mLTQ4JkfGnelaVthu_bey2793Itg2BBexs0dmjBVvxzn50ptgBWjwe8WGhQg..',1374419527,36000),('9anstq1u8op3l301apjaufc435','',1382626055,36000),('9b4dip7ntqvnvbvn14knl1oir3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"17f3040494daecc445e91c243b7245c0\";}',1378042191,36000),('9dnul6m1vcg8f0b0l480hdqk57','CQ26LPr8vfPI1mOYymjLqbN7R_IfJt0ry8XBm0uXaR7gkxYd1bdfj9aZ0C7t5jrbPrz8qHwXanynejijJVRXcU9pW0y6-0uIaNsAl_wX3Y7MUbSML4JYI5JCBnAK0daRJVbrdfo6yUw7HVswFvP5cQ9EfdIusDeLgk0r9FDNOHC_PHnbCoEbyxXiLo8uHVW_V_TztUeLXxtkhuquGcgRH2PRSeBazWHW818GQiCi3yJsdh4mxm1SxA8c4bQX3njGxWtOA7wN9w-RNNlVJ-JCGSnbcyy8bfeI9NCXMqaOm3WCQRrDqEBSP0bl0AWwBfUQhQ6szT9CHN1NKhZYj3oSx0bTm4erj2cNHK712De5EEUh29cKGxxB_TSuyfC0qUvsk32rLTp3zzKQlpMCNB2NcqQAQk63lRrwKWSTaRQNPYYfB1ClOgQWnlQecRIZuNZE6cO5VqrlxGgBL3gECMWlNb84RthYLHERy3RahpmTYpKHfYga78sDM6y9cJy0e9iwaTXb7KcvL5jBG6tyEmlMP-jd_EFIRd97CY4I8g8RD4HZqHnDWqCuKw_O4vpv_IlWiIsYNPWJX91Vpai_Sl56yZ7ZZRHAOPbXw8fhjPIwW48jMazM1Tzs0Ho2KmGJ2uTe8hR0zbWR6qOX5OH0lm8vHaZf76p2XJ7aZc0-RxqeYOqJowDr9g4M0PbK2izK3yiTEzZHAMFv7pE7atatISpWWQ..',1366620805,36000),('9i1daevg2g859krjiq9n6d8tc0','IY2iKDQmK7ckQmPLHirAyHG7CktYplM4uKV1O46yFz31_NuqGAU0G-t58ibLR5IF7W7shbe2BOr4IbnxTL5_TnaYbvFPId4LOumVR_pb7wJOW-iSeqWU3EXwnxr4U2_5AuQsQdOXmgay-mOY5HL4_jtlf8KXGoWW7j-i_g-77QFEw1cDTN3JFm6f0LX680R8rqiaZu8UwYI5DNZ3yOxHQaJ6gP6NI7yE91x370eYsjUuhb99ex49LzC7ZMConFcCTy6KXZLLx1MnAfeNHdCAH2Jt7zfaPfYWCHY1EjaDPlzYK5Mneaf47gISYksqBCskRikgVMZcP12S2CJAPkSON_Jgtqkl72r0jWqzXw5ZM6ngZqNt2L63VMzC1cBZgIVb5VaN0lSBMzcZSJVn_EIQQOYbwIcJAEuCIcb5q6tuBKyLBmizEWVwDFEDNSTNIcp4xcNb-WkJCAxW3xtvY3Ab6foqmOXZl6ll1zUGtDrHhBIpEwD0fygIa0xo5xjjvnnI-Pn4GTSAHgvLlEHRTnHgpg_43IyQ3Q_Jindz11G0As2UFzlS3n1-K1eTiOVDYR7JpcHebMBL5TPbbaET2BmaRT7Hvf0vDhotiOEIybYrSQ0XOPGvCLg1Qz5JEovP8NSz_6Ld6OXibB4mYke1Oyso7TW-nW6EU_c2zaEluPvJZ_-QCXCNvG6SPh1yc7swhagqnqsPhGkCIDP9cGYmjnp0kA..',1369837475,36000),('9pr7mbe7e5uhgtqkl2ga2sk4a4','',1382633232,36000),('9prb2v3q58q73nka5g6co3jea1','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4562585e709d14322e03406cafe9f08a\";}',1383722824,36000),('9r1m046hsf5hh3bvln1uv79np3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"3d1d8ed39a241d8e0081c6a180e72ddf\";}',1378200842,36000),('a0rl2jtgrsjm0io5ous2ikdqs3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"67617162d914f9212a4f96cb2272cc18\";}',1383399479,36000),('a73922o31cc0tqdqdttonhmu94','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"eb351cfcac4adc3e2fb6c73d88f2841d\";}',1383575760,36000),('a8vst2f1ci1m8r8ne3013p6u26','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"7bfd6c214230973e334b04e4853d4799\";}',1378129292,36000),('aa76u85fmibe9si2n7enaupdc4','YAytwawvlC2hW4gfqh-nyQW9d5-pxMhkoptEex212V8gy-I8Ak4wTvgfIWIZxj8TqSns8pIoJvc6qkUTQEJJcuOHQw3IXu3TH3Eo-Bu__8GU1y0YpVLQUjrGLYAsGBsYd7rV2Whd8yaTcU8BbQpybeCvuPewrxMsfM52uQt3oFObAGi6cVp1vzELARlHvejGKRPIXnncaBGHpb7TJ0JzCRTrBw0-tVeDjT8_ZWSlhwlye1Xx3XLcmmCXNDoGCQGe-sz4ku3TgZ3-hgaodCd1CcvME3J4eBPZ-r4IhNMtB0PHt0VSAK9dqdsEPx0aNl3j0exWrAursVa4Y--ML1c7J2-leC72X9shl1_C3tIayhBjmE5VD3sbikFehw746TVWqJrSAcOQ3u-jK005r5K1bwTgDrKb8rhM3c_mnkXRh9rU0XJ8sfiB2zGX5MitZkm1_Yo9KXM3E7f5dZaANcBHsa2LT3R34py-XRvcJdxYU9SHWHo79mpv8SJHJBGhCU1C48BrQZ1jN4wOL9CymcUSS5IoZVcbSvx9QvHem7B4ZpGW7CYiADw-2A_w8ziDwL7dYYjqhcFOlmg7Iq0iZ_UltioVKXFdwdyP_E2mdgvlSxMWXPnSdCC69AXMaxABACE1mLLeMrZgx6cbcHijsGRpalcQE7rbHdByENg3GTGZ4buUZIj8BfjqWMLao3xNFDOuYAngY0ZCfmvcJm7wB9QupQ..',1366620892,36000),('abj307pt8oerlhof5b19p0sf16','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"b4e575f0f7bc28ccb739df685f3c06ba\";}',1383572673,36000),('abohq9p5ca8v4j0jv1oitra8f4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"cb9ddf8b20dce426c4e9692e84018fe1\";}',1380802783,36000),('aeae2ktd7mq12c4tsspk7pq0c4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"01b5be9e20d290eaf80959f5abf75876\";}',1383155182,36000),('ajqqctsk7ts98tpv0kt7ou18i3','1rbVzupY1K6LpcAhBB7x9oP7-JkmzCgUjIewbnRRLU4gGucUOGkqr0bkbClvp3QH97zmmApnzkE5e5SaqhDveVnrVd7jMvTqZStubp3RI-6Ws2LQTsRnRB7WZ8qu_dH7e0Bdr_DIH4AHpdEcMQ3YJF-PbHoha7iuzLvSDSk_BM_IdomaWVFDfBCsYCV5x8Q8Xq3fPqBsCxKjYXxMUu9DEMLIyoK2ztAFdHQZGp1PMsY4ITnDLmswLVm9ApEb_FDA8_P6iVnadua0cVTDEH9WOksQXnn_3BJcA9X8B9pWX5idZV-P7IR8xrCaGXCZEq78uqGAJP-_Pu8_hmOfB7csDZzL-WWaHIYcvjNHGaqD801J3CjIumYliCoqNqKFZ7hUI_7mOTMupYL1JpcqTctK0fbs_aQ3ajzrxu-YKRAS1EnvLq5K4NAwtK1krahIF7aop1op9KGLdTjrcW1NHLWIT9BeE1osCL7ENfI24nlbOMKS6inee7d6AMtfSnEOKuEC7202RabkN2QoEXRreTFm89tY1gQaq_qVvJTVCRZx7JZH3U5dYC0_dHsq8yHIfw4Q32ePpYQVEV35Yjoy9MoC3qHcZqT4k5m4RGkneUPDfbwG6BX4GzQYj9Cd3U1Jo_y-NEHwPJyUdhii82MiCHZA2tX4gXsXvsR_AWlm9zIWNhjysZaW4B-RNJOO-2-LEfu5Z6CrjaA5TsazGse09JhaLQ..',1346676047,36000),('ao0j2gh6p0fo2edgdpsmcd7d26','SmaHqA0sO-Sv4SiRh4VzooaJsCzpUmv9_7jFWp1plxM_a5w9Tg9B0o342z7o2mWKI8U4CHzNDY_SkFVi5OCQlRQFC20drj-p5fMH_C_n6ICP8Kx3hcujczAJK9FFfAEQkTP6LgAqO0bwSW3kNPkQfd4A5kXy6Qz7EJPAYfv3pe-6SabszdCWVx8CBY_b1UpTEDN2MAFNkr-nf-YZ-ZHosRPTxKhYZJuYtHMVsfTSr00avrZtkHJZxSUOymuoCNq4K2CtvsvCs0G3tORuVseXbWJLxfZbnOaHaYHQC0E39dyhTsO89TRkGVwAmLS7H0QesRNtmS4FApnR6Y3qADcuWjIpJ_kOJD__M1tPPK15SB8pm3Ee9kufZHGUUOd6mAcvSZ-cBCyWgeBni0H38AGBd8Sj60mb6SHomQoJe7GvV2vXG06nPvn1wrJNyco_lir41KmToWWJpqU3O89l7Q4wMB0WLn_jxoBdA8Zf7JtHKgx4tdWRSZizBwHPn5ffJVbPp4g8Qc_A6wF4Wp-ZEX1VjqAT2uNG-82vJ2P1HTnSevRyOMUwmlYLmdntdVBXcgg7Be1QKLvKncDdPsc0oJNpM9T5yauR9PgGoy1_URotWlKeUZTgzh25GLDE7ZxI_xWOWgaMkbSTftLPTjx1gvNRnhihdegnDTgoyRxTacApl3BBm361IQeDNaad0Qod-7u5qRQAeYQEcI22VzkUVFlpAg..',1364988780,36000),('ap54u9amv5k1g1oikqj2mdhu31','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"1df522e6e8146b381e14a3713632c24b\";}',1383458762,36000),('asp99pm35bpfue7v6h73cu3au7','ko996PaJFbmJee-33SsoCpLEaj6YweKiUbs9gI44ImW5y5iWpnsIJa1s-oPYNaX2OdKvBx100eNKn6zx5KTf7gTiVKnhEcsBu7StrXMU7_NK3YnDPssq6DvpOoB3UbHo6nF-14D_zo_KUNuURpQXvvGsB59gbqGWeew2M2bNjYUGYp0UZEVs__SUZqHbH1yIUyAGit4FBfW6FFAX7jy_5aKTKr5y2S2h9GKtw-phDUY4RezX2PevAW_JZbGak-H55t_tcjASP47A04gC6H8f3BjsHyZZKXVP7zxyTL2AIBiPqXgzpatq5gIe3kWlWLNSozlbJ2-59FtIrLZHs-n-4m4amtixttHRHxfRJ3ltCq-Lxs6909g03qNWCFZYFRoJHV6fbtPoWgRFBXkLmFReQ5z2f-Y9xEM6xf77n4NKI6UnOEC5aVjDY_LvjekTA_nBb60YsmcrNm0tV1UrZtm-_t-bKUUy_qytGHnObOckopO3pcLSDBkoMprS_1b83vW7ITH7mTHLOs0IM0sU3g_1Tl3gKnru4-JANQOof71_HrurEHp0M5xU8D6i6JKj2BGfwG2FZOOpdkx--Y0a_07uU-gf5C4J2rtL7M23RLd3G9Vy74Awihap6BCXl_ju-vVWUQbgzzg2uov1d_Lp-QdK-NcZOh15KvPXKiorQXaVAP3Y1jhD-GszUWGCy0vRAmsDhmhij5GqSqBEczeKoCqVwA..',1367928468,36000),('asrqkvg6q779s1tor93327ree1','NO7dQkqMluYnJXIB21N5sZyFvGIAISt_Jr-lH8czygD4oFlvypzz0KObqFISnLOVEFp4XjWPGvThbmQAwH7VnVC0QawowImCtxcdLUZylq8eAPRqaEqQSm9MDfwOfCkw8d_NU39AssJS4eeLIz6plCXEFSu_63dhgHKSm3FmN3jTHqbGDjzdIMdG1Tvw4u3Bxe-mBudX-o5Jf_BtbP2NltCuLfl01bk9Hp_2vBtPitAPhk0fvLiHjjVlkSpIoE2neJKFoFxURckM2u-deRm0o_sewdA1sBpUNJdnOu-2Io19DA2amHMlir-VDgVL458K_gVtiDHgPm8zXaHBIGJ1BjlIFjaErTSOkc4vWOcWdHq1YFivq5XoyqJCXHA7UpHOI2Ub6Qc-3LRjWFFnHoAL8k7z9I_LQT1n1UXMXclP0wkAEbVDcr5uGScb27lyMeBHle-KNF7Nud1PIQsWdHUlItrUCBmI1TMc9oT6hZD2rLSx7Q4oef6VgZS1A-dGdl3PTpHyCpK34J1Ey8yjJbIJK784QWw2ZoQ2SYHwmwOrHNyGZAWeBtCwrRHIADMp_kEzsqX2FJofW6Olr1JjSQy-Jp6MZYfhClE_2-0YqKbLpirjIHRQB9qxYZl5Hv0N5HQ0n7kL0gW9OIwpXPJqMn-3xBXyYUX2WfK8bPTOB1OHL3n2HBpfzLRnrFh7Pw--wWBJ4kzdhK9CENBevqnluplGWA..',1345632187,36000),('b8ebkm8esgsshnfan126cfq074','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"3c6630b9c345e82af3ccb1ad3622a1a5\";}',1378377163,36000),('b8g11m8ni6a6k54l3l3lsiqbc4','',1385974038,36000),('bdocmjp7ldv3hjqjjv42e57it3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"f3aaf5636947c75d0a4a78cc2635d1d7\";}',1386672884,36000),('bfbnml03i0ur0l605c051clmr4','',1383572658,36000),('bt9cdbrn8581ce4670ld8455q5','4olET6y0AzzxwdlBv3jEWHBqjZrGHEOq6zxkypcwwRD2Imjj8F0MC62DyIaI_fnG3nuXZbY3gm_scRYlaJPyYAQT-uLDL2Zch8p-rWSve5-1TUf5D2cI6wrivkI1mO-pXcRqnK520oIy9NryAR5blbTNYL8JBzzYkLgE91dgVJ599766VaukGTWgvSwe3V9RFg9hgDIwVzPJ40amN2jUXehRoQFIEJjL9kmN2MAgeuiwp36GTVUJPmPyEKUJnX7zuF6mW-zIX7AwBSr0IY-jAFlDVyj4-ZvzeOOq_9SHfcxHShJMd1HWZgQs-6dZvo9BUpQTQ0SYbJGjaUWdaltW3LOtSgFZXtZzz91nGRS3ABUC_RQ_OSn9y2NS6fuDfJ--568NA1fO1g29dUIA5HbL0GFlvP4NnKB3VfacaDNmXTrWbPKrCGSLg1PQy5Nqb7xhDW0c5lxDFu5NtvyzMED__2MxIxU_kx1S3bCnOlkm0Cm8LJHlQBRDRKk9VePMCyN_ma1cpyMbB5eudVKxHgeShNmKXV3lJEnlnCFMlsBeodNhFOhsJ-Km-0UE1Erc8MsyUcb-I_eGQ-56cxIQjKIfMouzvzAzJbTQe4-DAkcl75c9P6FtRwerynrQ7Iou_kbzC4E4lOnKn4rNeYoHJOegbtxN4Y5oSODXUHZ-H9UdE_InonaV0CWAQmNIxU0I6Fudt-9p6TnHsu_YeR2s1FSgZQ..',1370105452,36000),('bv185j8vedj7nnmc65gn1kvku7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:9:\"alaaduksi\";s:8:\"password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:9:\"full_name\";s:4:\"Alaa\";s:5:\"email\";s:21:\"aduksi@barmajeyat.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";s:19:\"2012-07-19 12:43:03\";s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"2\";s:9:\"role_name\";s:9:\"Employees\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c7330cd12f474ad7c51a9816594cf946\";}',1386604653,36000),('c2ggjab281fqtjj7700ajumk55','',1385898578,36000),('c3dn7b7u1t42ma0gds46q7kdm6','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"ce34dcb7ec7eea220990d90cc56d2472\";}',1385926633,36000),('c3ud81u38mk78oqv1mtbmvkkv0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"0b773fd39669348b925d225433897520\";}',1387279727,36000),('cmcab6o8abgj7avhqotc6irq33','45J_TKuhM3cP5rCzHD_VXJOTK-NgkavG8UtlurBPDUutp4sk4hT7BBByfCxawb2rO_4GxsUCWWv9rpVAHKgd6QP5j2lLZBkZgDHjkgVQQlYKHsEklKJ6Bhw1mCyj_HRdc6vwlMGB-Ld76IO2NtIukDJINyStyR2idZWYswiTHV5BxrHprxDbMUwwYwDD_BY95Fxa0VmFOVQQmeA37kgGWOgARFDvTUSy-HAw0EATel00FBGMtN1dZGg69i_UB53gw4TxYDsKLr-c9LNKfdM2RCpn7Dg2sQp8ugK7Vvcsd-ADTdRnSth3dZ4fCyPTsPEYQM4la2iIC6aDeWEctTzBgxE75JG0PVPECtU1ZslWrxFpSxgQYbWOUr2u8lskS2PGuSyIsBjNU5DgoVSYR49Wd3A-uVdwxrVMIBdvlKbvdF7lNMneXWPaP_1cMJKbkeIWXw7YHM3eL6c58f4UQpqu1iS4Q_yvFu8VzU0zNBo5JRifx9rD32bsv6kkRmRZ9ESZT6YgLtHb5zdQL0eX2uJEknQuCf7yNvZtxLhXV-6S1vpmvARqfil095kNo3UFJVLKavhlBcD4MhX0DSv5avt_J6gPhQsoAsKM724gloUIyAhMb6Km-B0Of_VjzPt76Yo1GypGBg4GoUiDwIfn0wqGUw5AwnUVuBfYWQ4K8o-uCmfa1O70Te2ZqnusXfPR9zAZPnVqmMP5nPWv3UPE5l7Lfw..',1370945316,36000),('cquqrdpbfvdgj53il2r10apmu0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"af5fe4420f1563ae16da82a24321fe72\";}',1382630639,36000),('ct8ci5u7rcm8u2iaa5rqmfmel3','3jg-UTOjn2jen_6SN22FktoxXbUxAA2Qu2LPcYdwioUra1aVgxXtVzqScHrjcf9f7JF7msB-A1omzz8DdnieZsBGeo8AFjzlAN5pPNjhzWqQN8OX5zzDAghweXNDlwge_BZjLoeu4eoARVZr8pEoBaocwqlYdzQhEG2wl99sPCfptn8C66denouOTo2AKB7gH4tnmUkW3UJ7V2J0pxtG0MiahH-QQ4EuZUGrEAoR7csYCEQNhMA6bCErccK2_7e92-NhMTf0C0aZTNZwIsCdWhXZJEnye6POkDmJli8pciRQj4SiBBB1sXBVVepZJReEkuaJteM6HjakZcWapgMxAtqR9YBkdeFEbcN7dG08Aaabz4URjzqV8wB13hdxws8DBRnFFsjnzWDRwUHMtSlK_93qLDLPbwVQC_gODxduWGTdS3992W2pa_r3-yQo5PxlGyMXfKDSNXiQwTxe-GNoO_NcO49xijPZmzRZ_MYPLV6CFHnaJQVdpm7Wg4ERn5rybxRp0PH-t2lKJayRAi5mDWgASrxT24cF78knsefJQZUtOQERgvtZoR_2MLOV5ZwLy_BRmOFCoiFHXa2Fatugki54qudFdbb3-dsw6GN_rc4LFKzlPdYxLZIhO3tLDy5m_E2MBFlc4Q4u_Odtlld6JrVMoyOVT4DJfW6dijdoOu59Jzbp6UXL8KnGoVrBW1BRHgN0nhDjIrp0MMcpUVKmlA..',1359964500,36000),('ctculb4klfrefd51t3e1ugufr0','QKiUVyuvp4Q0Zri_x3Tov3fB0WUmYWWRjMX_Sj7gHJQNcQghnVdvOJeyRhd_tRNeeR8oywZH_iRLl2jM_v8MeaaTFht4FSfdpe2s6OzLbUzDLpMFMoRYv0X2h5m8JcEe84ZflO2_99ewakDJjdTbSNXqNgTZwaKkpvx5TRbp4P1n_5uG1PfGAOUdJbo9f9dk8PQrf90M7vDLXVC9FySDZndlXZAucSicaBrw2SQFcEpSnCgRf-NmW1CKPtKtiOKO7bqpPAPwKpyHW65dFEXW5IIsdaacB9yGZpD7lP3slItEneuIG5Z3oDi7SegkzyFreqNCF-BaeolsFnOJZ83aLllli-SNQh4pyrWgNuIMRBz-laPKLtkxvhSQN_vluhmpHXMk_nV6SzzLOuLYJAtAfjeRvwkAqrFHXnWXwIDrjBeWiaDuDTllEyZZ6xz_CK6qEqVl6FhcT98rqPMeTXWdOmS1ywkuAeAJ_F1HuKrgUfaztfEeyzZra3eGvF6DOf7scd7ekq8z2N06xN1o2G35__4uIBuYhz3-REWYMD59LT-b3c8orPJkZfVGGT7SbDqYh-xCHMjaJgNG5ck7yLV__uhfxVLkfCFa7iuv814W0dNEtES3i4qRFUzZ_xoh7ijjdJO2r_9XQTfUEV0UBIolHTTZ9wj5cvqhI4HhKfp_tsn3DX4evop3D7ZBiLAy7M1UybXnasaYrqa80M_576r3rQ..',1350485114,36000),('cuk66j5hqont4tv1e3f8mvmvm2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"da361753b0afc5ad234fc9a266f8a167\";}',1382447870,36000),('d9e02otkohsu5125vu04a63nc3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"585e7813d85339ac61f503e2ee55aebb\";}',1378636572,36000),('dg0s4ibnimth6hgde3hfkmtjj4','07VuXwRp4ji76fDMgCWqpmF2hHbcPAzHdGMq5IInmiCV9cTOQFk6Y-fpWpHSKxp5IIozrQ_1UJGNWxy_TNjFs8SfrzeBzxFMGpS6KGkkrfz8efD_Yn3ec7nvv3HaTbMV-AT-DmQ9I6O6NT-iCUXgJieIY8oa_rPJ-caLl98ji_Jtnt2bOeKZ5nrHJaESMau07kzV85_FTN0HX-qg9Qp8g6ZAu-BpFoW2i42BzbDyKEY4VO0pBL71Dxgp_n9iWVGzWqDWF6okXzIiAOSPgKaQPindPmlv49xAeQk7e5NCpn0NwCS68T0O_IUP81uohldUASt_wWZtfftUjWv5N2LoSRuqux-IDVr8xVra1xrU14Z9qW6gHFM5rTOnhChldLAlK2-gqhEtHtfj9x6xzKculZo71rZEGl79ttkXhcgo_33Xf7Kdokh_LYI8wIgu7DilEfh05BOt78Q9ZkPf8HEYygY87zRPZ_hLi-YO2g_GW9HhnSW-WyWwU5oPfvnaw2ez4GgvN6BOLT4wq_ftnO17hpIJxXURQ-BAx6ERtRYFVk4u2ncFtOpS4uuMxjFF-_BXRpdYAWPTAU4JQCmSRgWxGMfkEjWmbDZ52r82G8muYYAdZOh5cAGUK2M8M0JNj2PZsq6iCuMkIZ1RYBbPyn5iHWVRJHmgFSGmN9gzYwQRwyjyRgv11mlxX8SWYB2rCl0wNbOFbMwEG0ZLmzYedGoHAg..',1364819102,36000),('dgro94ddtodq6kb5saa7g33rm0','HEGgzPqmQ5qvRkReQSx03auIcP83-NIyDDlimG46hS9fM4KMzEE7Z-J2lPQfb8aLPzE2dIDss2jFF90k04QFeXsevzRTOF1y9LVDl7gMsjx0JPEhlIQU86BqPbAIH1Pasggv6qb_HoZWgMmumb2tnK41i9Morm2W40hl6HRMtOoOwizok-OjVAu3d_nLrxhSzL1kjmp7nr_JWkedyuish6q54vQvfICPwXOIzBNCt8peLOsrHoterjN98uTwYh23-QdoMMmrAviQUNlRxAQ8Ujlw7ZGRAII96tBApJKRylrlCqKkmopDO-8kAfAjrNI1gz2oE3OZCfnOvVJyEZOdjibXw3Cc33dCo1XTPNaA_MzxtDaxCnL52kwCog-2B2ARnYnOZWIpbRfBtK4LDuJVvJSJcMtv2XZcrxgn1INO5q2-YkHhNKOheRDsUtc0VBFOdBuBh3WIwiQku6K5K_iq3r0rMTygJfMK6O1JRm-jjnHhGgNUj8SStvSii06ff8hYl2ztIpSSUx5YRDvrEVIaAR9S0LNapaNSHbM3qL9VZTIbn4bp65UV_O0FL6UwZRlJxqomVlL2aYhzAKU2koJJTqsapbbi93ozJyo7tIdcqcNpnhfyiVUOmRcHN6dPMEsaPHsxC0IuRA8BSP3WS8ndgZU555EEc66UaBmkpg2z5ndKFHv9lYaJK_zU2jdXUqVbjPgv5EiXJQ_afMOmg7nrlQ..',1371558830,36000),('djf5itbv6s3j67kc8n85nvb1e2','',1382528715,36000),('dk15aoonbegrqegln0qh48l3d3','',1383572647,36000),('dlf1e40jhes4sqhh9da99n8s52','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"ab5c5e8b4e31d737f21ab36b343f9451\";}',1381066993,36000),('dlian1p2eui9hojehqiei6uo91','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"0cfec7c5fb0a74e7960c192ff5e01d12\";}',1382626085,36000),('dnv289e5tittifblsj7qpesv21','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c4f33b34cf4103d031ab60e6f05d3205\";}',1378547489,36000),('dqrho27irbsjfgmod85unjdri7','lpo_Y_1f5avwYEhWRjKEiaoAA_chKOuZBUiGSuzPEvLDih3zcsRBS5C532om9Z8oUfVJK9BzNoSAgGnjap4V_m4GSC9ksJMukAlut27C61PZOJ79HtJwOfZwyMeYY2PGDGc-_2IR7U4UrBUHMrh6oj4Ubth4KME5bBbJ-sjmRo3loSIjzJG5evq7MA9mCMRLdt_iRydJVSNoTSvQIcXRPdAK8eD-U4U0cacGMDzG5r4d4ZG0nQdN9M9zuoX3hcXkLKnyJp_OY4y7NMw--MAQBnEq7HiyJVhXXqP_8svwdSVuc0tUM6XNEz45iFva5-Y9NWdPP5jmxzoVc4AnVbxc_ElwyIWVDrY6tdsh9Fy0GorRHvJQbP5U548iJ0bCpDkTuKrnuz_O6YnDcNqHxTHXY-J6phy9ofuKYBnxQ7sTLAfh_ADSLlmZHCKGqm_8cIO0oDoZIpTd9x1jN4MT_haIv6kW6z74_dpA887DE8kKdCdvYCPMnUw-jzuZCoqT1tDQQfOFSOIGX3qJDfkIKjZkIfnh_KuueRrsGxTmASCykK8-7t-e8UhuhYyi7sguqfQ91PP2DaXRKoRJKJtBJYDOGVxYSdJxN6CXiBC1OvAE-Icc6mesv1a-ikJRNPWShB4TKn6Wq7ZOX-c3HDWSbevjT02R9-M6bk3vQhX9s2b-nCk3rJ9recRoetsDAOzxSBu3PJhUEIVToBpv-Qs7gUzW2A..',1369747603,36000),('e66t4r222524r2mod0afp5pft4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"622c778641ca44c6771e5cb999e76b93\";}',1382793899,36000),('eaig8rbudedrui7cmrrcuecdj5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"47816e49762ac06ca4abb17e4e912686\";}',1383066380,36000),('ebp6k7ve5drdth4usdn0e9iib7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"5d560a70635a9434248598b80e74413b\";}',1383682829,36000),('eh0q95ohhaei86fmmoshk7b7g0','cRieOP_FpvVthOrV-4O-Q0SzgYmLkXpETB6wOJcKRR6qdHowE2DyCKozdnNB8yoBAHg_zf55oXUrGRk7pk2eb5N6jAnBf5odqWIKQx8VFZVJ5TRLsT-E1M6mVVAgiW12uoPHk50rqUu1ip-fVq6dS7aPM-N_Egi7jngBhZHMM02jl7Hhn8F-0cGIRHaPHZ3U_-X0EPIQoLj-MZZ5qPOLNU2An2POucrRZnYmN2g8QoV_OVJZMFv4LnvVBYfi798Qaj81srcFBT30W7g1hYLy54HPd6R47kTwxs0_BJvGjJ9suagtcBXCgbQVXMu_gpfKDp-w034gXugXNdfUD5FgGRWYw3vYmr63thilgpAB3DWC6y2GPzsaKLizEUEDDPDv9TDkZ-8WV31jRlqLPMbYIHLnL4dU8sjqCgJOPMXFdIU2YMOvKqiR4bTHNYXb1-7l85IiJsi7pAOC631CS66riNy-il45kVpQeoD-dXKIp8WR1nuAjEu8HUxKZcyKKw9NQpzXspP4Adamr5XMMd0uZV5m8ObGb_yZisDmRNA2tuNalhTiTkXi1CNKIuRkpqmmSesHgkpPBSp5EGVVjUcOTTEuVdf1lWk0XRsY71uOhdHFPG6PGbecIJ1y6iG8BaXdFFLRHWbokntueAMKyE4TymjJqKOoklMW_w059VbutVKun2d8mdm3N7zO8pML-ZoklJ6qCayz56PYfDero4030g..',1367411899,36000),('eihhrlm2l01btlmf18r6el4dm2','',1383640118,36000),('eogh19bo177s6tvj6qs62ct3g4','yC1_lIcegU5DZ7uy5k30MjpwmBMpiOsY6GO22xuRfKL1gVHRyXvuRM-yqtl91BVktnDtwV_97DozDGWOYiYl8T4r1Wwy7m9ZcU8qxk723V0nxbak1QTPBDoTxrleAONk35zc1ToZbMnX6gZTu3hHmnMKzxJH3vKKIg0LPAVaLcABkxQPXrFfMu3rMV17Xu4fnsxz42DsBGQmYtbuYTVuhuD0IJC1EGK3plZSVBB8kVaT8DQAaB3sVtGMggmHOSYwRXK3wK2Qp2_s4cPb9LV99Eb49n4PMyLzAwO2Sb8NCrRP8Jjgt6QF7ivbMaCFjsScTBFgV7Uf4XEfbbEeKGxfx_1p33BwPnCl_L94k3I1xsBwDlyX58e188ZC1wlR4FruL-uxtG8cHZNPaOXbFTSsSqrydoVUkuRWshGhDVss6ifT_e9WuhCybSb-duysg4Gw7q5_u2dcmzc0MCUqOkdip-0rsd0ax41KtK4D9_-R3rgS_hGbalw4JlknXyPdGZnP_vKZAEfuPm0XXvQ8FUyuIQ3cgodCLoqNeVAJB_nFr2OH5SlrwBR9ne5LS73oOqJEMe4Cku-3NhJ7oCb81mgwRkzFSe3qqTJ1LJPZm-FTDA7Slvq0txGFqYyai5I1Z2hF0BYefF454HUTjeaue7ca-6yYIyngoQQ6eAibleoiy8hN2SOG-BmLPlhYtgxolNVenr0aTIRk5r4c9mSqCjFX5Q..',1375640236,36000),('epmklhaftb6lsqfi299gs93hk0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"a41a7ad8015ca17daf8473a38593ac21\";}',1386760464,36000),('f0hmbuujcdo9so4bmkrc16i713','L5awaAPBgt_7v4g-wqInT6D3isSqpafLgcXeY9ctBDWwf9HHvL1BC0iZEGf3PWTey0Stm9T1Jzs5oy2dzhybisn-rb1xE9Ii2pUKpJJkHg3RHFzATUo-uE5VcavhX3AngDGsSgo33mQdxAM8nKKV0Z06t9qo-tNZYPKzfIY4qIOe2QJq5V8qYm49KKzwEG-pg-PosXjkcPAGwt_FwU4IrAFV0EAH9c6e0Z5OCDz3-T33s6JqriQE0AjQGfoPuB9snWobaiY_Gzy-YlB7sAFzDMkfm8OQ7OIc8UkfdL-i5VpMG1dnm5nyXVyr5eOievt-exSERKtjHJkWiQzVSv4A7osAv9nO4Z_967WIoU--e5D6JIx7rb6ewKl43Bm0eSsxbs1OJH6QGxlOYLnZh96tgvVXKRssXN1jidPUVAYo7Ck4r4m7AJznzJIKsHE2UN12IeWTHgK95NdLVXmXCCix2Xnr3nJYFyH3HxKp56Y9DfUk9iNkwFKHQ-HTOAif20smBKsMa3HyhDH5DVQGI3lRPADnHZSabtU2_k2HC1csRr7ciGPdPQZLY3XS6K5YievteQrbXp6tLG-JlBAYszN5tx-5eBb29Bv8mBvcrn6z77FcF07Hh3v3fC7fsCvDg3-iaUJXOS8XU7bCPuMXn47xhSdpQRcMZH3tVTsMPTF3QLbkkWhQ3ggOkG6bzga053MvOIma2lXwWzAXMxYu7TK5WQ..',1371034561,36000),('faf3603kib4o37jnmdduuq3ps5','',1367997867,36000),('fbgpgg7t47rtk0f6rsf6fesd56','aCNmuaumID3E4El67OXLiDld17VH4YWq1Poj4ZiNbvNeivbH7m4Bg6dO-tPZVGhEBTmTVym5FMrWsaNoKJUyT9ifcaG3ygLpFtN9jk55nE4CB0gjpi1FGT0zOU5QOOqht-6mZH6tBh3jLsjVtFPTKPHcwVIMc-9oirk3dXw1kgHEkXC_BTATsYNA2ulwU-8QLlVtGTiSkCqBkIma1jSbNQNY5-jNpykgmldeoOgm6dJg2av9wpo7qjRhTLRMDQBvBgY6IKwbQzV4lotoXXcTTJAd1bIN69bwgY2nv0T-75pCh--ZFPJ7ujfsnwT0diRF-XbRcTgQF6R11Dxs3N235JLC3QF0r1aAK6XbMgUUuQRleHxibta6GHBwkt86OstizbVR5MQ5Gc0cO2ovJyJ2RsSSxPmVQRn_O3Wyzc9yVb_3E93RdRPZcm4BRI7LxNrXptu0WM1r5f-rEOqv0XyRcMWb3jPNcO1tXR7_lpBgFRIA_YbBDHDT1KAMlTCH7lDGjFfmHffjsvRKtOS5XE_4fZKFE1pKu9WeE-aju6GrK2wQ0Mi4gcsp4RL59_bPJV9rc6zRSsXhOZ0R-4bulL7lmcf2Hwx_iqhgJgHQGfJOXfUh4JWtgU5mkjeYpuC_njWYyUTEaXyQCcYedxDqEeHG-j3yBoNL4btmZglM6yb_elzggVqQ2hVm6ExnoiPJLoTC1Xt4z0Ej25k6MtmNOh_0xQ..',1367759162,36000),('fhnq0p1sgd5u7mfq9k4imlvnb5','41y1Rbyoxf-5ggNUjivtikpJQs4cMcgduXQl-A3RC8MkxN3k4_x4Ti8U-UAhjOBUN1MfLTZ0Eo8ZaGNNU2oqrq1-yNd8xGzIPu_FOp4lhzfO1J1ezkhaAe0OdfeGVaO0jhe9nPqxDRkN2CLOpw-nzwvOPdCAIrmMp9qXUV1Vpxe5EyLoFe_JtCj8jytEediaqoBfA4kIYdaRF2fD4y-WvL_5_lLW7ss1eFhsoQKdrzK0mC6g0e_nVXvNxO6ajL0wgVgs6pegAlL2_4puqgljnPU7eAQXswQz592XrchpyqYI1X7HBuG-9zJMZcl2YA1YbRGTqf_BB9d_e3_CVVa-W-_H5AwmEeU8Uk9KaRACSkjD9AE2xp4fRvV-dKdOhvyCC59kNCGz-u2uFPM9LznLYv4fnaATAUjcd7jWeCUu2lCYqA6buvGWekeilwzS8Qd_xRtCHvmXe-twwE6bYbRE9jw9IRA_eugROPd8M0FpSF5xJJxgUqyLim49DFhkXHpQYH8QZh82ndcfsa7TRRQXPsA4kudFlveAsLHjavpL8pDq-4cd_MGB7zD_Vl5gJsUjp5W1AM7TmFOJKbMPigpY5Km7pIDb3u7rBb8jsP-kyZXkpsWPVqVm8bl_45J6_iWZsmBLp2cmZrB4X9uwiRUdNSCp5KUmynahQ6MCe8mlwPWSXXvcU-ZG8Cv1MLfrhxK24zWUFHeL9vEkZAQNCF7uWA..',1374503353,36000),('fl3bh1fbg1tbbt7ucsmi5bn5a0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"082cc18450a88f63295a8661d7bd0dc0\";}',1383434126,36000),('fq53hh26qi2dtv4ongfg1v2sp2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"83f59a57a78f5c6694a7033c70b1c4d2\";}',1383153064,36000),('fs7e65f1mge1shapl5g1antec1','pge_s8o2F0YGpjuw9sBruQsAIMIqPgwO1zkI81YQJWMBNhEwTFk-3w8lYq5wC7V1ItVVzlUSW8mNQ3fYKS1JTFznkQ6-We4RxnKhQJUOzps-FJQZZsOC6hxzuALp5kgG2BFgz1kdir3ZxJkJ5y5dYCTk_pZTalEeTc78lZbE5d2Njfhiae6V_qPAkLm-IIzl70N28uySG_C7xoC6dPzVYQ4iC0E8IgzH3CrYI18yi8TPRIhjcrLBOSIv5SFswygISSMypMtVFBs9IudnPcpcrBCdKwK0K-J8PzmXqrDKEZnAEPDVmkZDuVjtryt6QTRthP9BqbGm2Hi5cCoVnQrE_vYZR6b0CVJp4yT4mTLvNcU5YkCt5hUGbKxMTnzxNBlrHj92JvcpznDCthcF3eDUG9CYBFm20aL2EvKEFsX_TsqA501WAr_kK8WAbdM3Uv5xzpkcEMLsQy1EQCyNGl4XFkFN5fljSc6whQ9vYb8DNEBZa2oTiiHztKCjrIe6RMCHRmm43pLUbtEQx7Sg_xIk1EXWwn1HAAQVggA-EtTJpFGDEhnYuhky4icp3RDvCRZUwf7U_Ll8OO-ryrMao1BGefohVe4TI79u_LHOH2ogAOBGF10th7-tWalbPtj8TGRwlNb5UVabl8aCb_lnEKpFVwyceaPQI5YMD1PQN07VJwUFRV7v2SrQRaXwO_48M8vpLRqwVglCXqGuh1Ji5drRmw..',1355752565,36000),('g3tq4kg41d2ngtj9p3pbfq9jb2','f85RC_wosfbWsliXZ-kf9ni0H6K78cd4NhSwDTD9wGzaE_33dQzb6OrN4yo0Xb3xqq6vCGrvixdjqQB3XDYlr8Rdvs05PC7oLE44Y4146i9tx6ghwPuUwFheXh2c2_fZGOakB4tLROnDtPJ0FUXZPQ4blij0kNqewilEYU_hvwVS3qFonLhEh5BH9-q7jV71l3dkde8EWaigXlRBpTghbbbvkLE3kMpg_xT-YuYVvG-IwrxAQetSmrdw-LN2xuAouVUXHS8YClJqp4EENIE4LcyqQJYfWWcs5-6vTtkoXCNjJzdgESqb4t4per5bkfYVLinIAIRehvQg22hcLLQj7eoXpgly_rw4jlVosvEMt49kRWtqp2z1NMwX7NMRkZOEsnCbxGsFjDau8wmtJh0kORQnrkKrIOslq49uRZmz0npjxk97KhSeghObxUvKfzjkVz5v8bmTBwINb-7l6c5fRApTW0yaSr3TylZiLDmy4AOiaEDnYXwq1uQZoouR0Z032iyDdPPWu77sSqxrIacpveIan6PeNpmASk9J8oadMcvNamvZoXYXzfCHOrniqCn855i-wBOKKQJp7ttmXmB1dCjtOSwTE7hzsMntRn51JdtXonItdWky3ONJwLUPLB3_yWaOvJ4YgomFiKlrnrDVO6YHzc2UdkTfe0G_ll7vu6Sl8svi0ZZuT8cqi9Y8TLfub0paVIoAg-WVo2mUyeGdzg..',1366809801,36000),('ga6mq4pe2r4pqo8aoouke285f2','1runubrRGDa_ZjIAZCd3kgxFcerSGDWVICZP6xMfPqHQIWS_6nf_9l3YSCaPZm2pS6dqHTiv8ZiPCSWSNuo3yFE1mKgh-nD3_-aBD6VSHpi1jH1S0h1Qh0105uiVbFYM6a4__kJFHN8ajKj1GCLrUcRBkgU7bOWtsKUcw4wJeW6qKUiTkzLC0GV2PgbLJzyHLCYhKbQ_5V8ZLWl4WUcscLJ9kasCu8AZLssZ-yB30QK1-zdWdCrIjRxS7x5CcWvAPVGnZF18KRelsPCzp3_l9AEaIbmmf5U2pMHs95keiP80lShRAC-3fvsxKyI4gObfgrxA-cT5GJymXpeSopOHRa0yxhsowOK9i6QEUS7JAhN2K-GVa_lDRWFpiQprzb1rsfFmQxqhHp0IOg0g_EQCxmH3NMV9VQRmWuIcTu0bvZbajpsutdPaRUVTjPrclVPGIL0jrosCn8Kpu8KlUG44npZDIaC7OJadEn0-Mbwa3DDpthCKB2PhW9IMNjPYvzgbBnQGRQS4iEF_F2qus69g_Vu8OV7e-cfzP-GKhNqLxJRIFMatOerPnRFxHSUoHiEmDdUKV2oTyIRUwsawcKc7EXZd1yWKTlGtngYv1lEJuV_3nfbzgMl8IFdufXbjXfOrv3sfD2nq8HvxaK8tehJGBmFJjFezTxEgTWNpg54usJi_qdjF82cYOh3A4B3AhTy2N7Ko7AF5CoTErdNxl-5Aew..',1374592173,36000),('giuljn6819i6suq00gqmiq0g25','Ty6p3j8FOMRbJh3dN0V35WskfS91VPjJm6naySooUNkbAGjpwzzFMVgOR7DHnU_kQ_Pv70py7LXwpXpBdLkW546l8FUmmjRJAoAFL9kQsRct88M4kP8xE-pLclUA5ZXG4i9j5J2-Y854nxNFbARk6Cr35gbgLxVJY5ZV2JdPib8y8w6gBhslO06eHsxYa3C93WwaD7Ch7nLShIGS_fXMJHHC1l7HN6n9IMaudQ3upKJirk4wdtHeLnMhZb_EYgn0wUOv4U_CheMcdmesehZkruBHNsJm3ks8Omo4zhrAQYxZoy4gX7vRkZ7h7SkDcc47lbBNEnPAruNW3vU9xMrMsMVx6cYILNigtmpFQe4zFsoqcnG7rMXNdC3gcaBy1TiKFG3kqUbSJEMBsg45V8YQe49WO0DmDGw6zjpbDpgJUUhoTLaBiFxvF2su-m1mu-gzZMvIzLLYUacMCswQD2a4Jpj3UcN9IwZsCqVEwkWBqh0KgWk2equulQQA0jIwRw5zQYeCNY1a4ecadGmXBE29teWQCWWbT_VNcn1FKe1mnVjsL0DEmwdfR3zbfXY1gj-Fs8BOaT0uTIn-eaDkvqx5_szeaz3RukLEonQ2eGcwie77hgz3xzbj59ackI9G3G6EDJeswjMlN1bHSBinohTVMWfBqBcZAHlJhK1uohENlJUU924-LZ3Sbjy1VT4Ao2AJf_xbsxaj_2FfIp3z0GS_Qg..',1350586517,36000),('gpus96dvbegqvch2bj48351td2','_7W5nFxoW1fH2a1iqCfzEEZ_ZaGcIZ4VNkRNxXjB-ow41qaLsAYE85iHiw09ZAbPS1yy-rkoApqu2Zip0tjE9elx0RIw0ryXk3SSMjmmj97EbC-Vg3D9CFOlLYEZnieiKGf6WBYLZxbUHKDmdzEx-DU1A8CKkb02k7Kpz4gBHY1MVW6bxYKt--vi7-UhDIiGlCbrGxEoNrdd8iyJB-0AXFOHb6JtzM7FZs31ocJGAkfyA2WJE-kISJz5guKae8S0oiO57AlcBSOPlbcYmGWERoypkSU7DcUqkRUHrU8ilWwgXWXNSEOb7_dxNnDQZc2ZfPX_PItsA6VqjSa2_PQWBB_3SQAF7jU8DVFOjvKc1w2ZQL94A_b4ECbdgeonEOvZLfZ3-K44rMLgbDg0mqku5kq5ZaglySbxOjuuy-8nXjLIAniZn0g3vuZVQEZJnwKkCI5hEFwVh6OZyJoUHiYv3LYwOgUjpAtu-VuxuKlZXHqzFBn1NbvH7eff1dE0adBDPzA9NDdKhfw8sPo8NgGj94hKhhfCQXXUrMAKUASWAbxpGoLhx4JSC0W3we-sXamse4nC362HGMobz1o0pXGBwPAtXFLJfuCni3z2p4DyZtEZAyCEq3fswQ2ZJhYet1ny-cd3HhodbWiZ7QQ5AxMsvkR6ES83hoOcU7xi0V6LX1ERnptXmVPhu5CJXpGG_2UedTjxJvUYT1EVyhJYXSXhyA..',1374761853,36000),('gre8ruifg936hb5orqnm8nukh0','mx03LXdN9jw56NoZo7xyu-QMcBSShIDJRHz3M6BlBqr2lNepoMKIs1K4gw857lml6PRubC6jogwVXsvBRwqUDqKOuhLhs940jmrimPK66vaPLrRe2qxYFxLJreNv2vZMWRfJxJNDoCeWLbTvQIM55cwvdHCgMpthp7XwbcbcxRL1yUlwfa-tPR6u54h-eeA-6Nu_mfd_Ay2PSGi91noaCzMoxlz2kC007od-PrxJaqUx19lvvuETX3XVCLCMjs1wfytIl-Y1a9qZHiaPqvt_3oAmhEiL33L60ZNdXXJFeHSNi9fEuLDm4x7-kk04lkm3XhrO9m44C3vKc5O3kwVMqAfkVLifW_H3kGlHszt9jmmoqvaeGO-9XgzNBV22xaiBPxnUQuDxEfF3H7oYLxHR8qhkGw9KJpyVrSRDwQseHh4pnUA1Smv4nLl0AKSqboUPj8tsiXPFRMRXJ8aU5QFRV-3cQcJELzfARCQI1iNt5Kj10exJMgx1jDcQhvPrWHmHOfETg9RB1S4KIfajxukzCDM2czkLgN5N_k-_vbPFe4iwdy18ty3xmrny3147wCPrwqArAgVmrBrw-KE_3kKOePSY13qzgED6fMbxp9LVNekNRy0xJ7xby3Oe1ZEGHuJPJ2jSfDjW86L8ZEf-li6Y_DcfMeiSLGZKe3-_A5Xk4o1RzpFB_VOBrdFOU_EoNx4ZJS_WW6acxMV5VujzBgRtIg..',1350681603,36000),('h9e6bo43escu58da30kbvdqaq3','',1383567369,36000),('hi65frpe55e6dcdonlgu64jh40','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c904cb72e56d6f9175af2f8a4e6b7c1b\";}',1383640524,36000),('hiqv1ugq15otbsb8bb8tl2b7o1','yOHT_OwqLeyGSq7wQ7atWcHKnhwZbtiplLLAWJ4nBbeUsGcsshChhK2xyMcnssYW9mXQBCvOwvDavF5pqZbwQ4KE79wNxbbxTwIS_TARmuc0uj1pG_9hKmUV0OLmuQx9mQyo0xIKZWa0HNN99K5s5Vg-lMmFIQhnMMMbteYn8lEYKxBbfhgedl5FfOlMLi8dGBOBAVnYBm7I_SLZG0vDIRrdJM1u65DXM07rEMFSkbEEzKP5rCyU3l438EdcY6k_ejcYN_bPmkKd1swn4qoEZ0uJR_l6BtRsmiByS44QmMsCl4TBYUWRd1lf94VD0aQ6HKPAHscronkfQb1xDHkRtDDNtoTG67qpaTywWbunkwE_uNXIxeCZchpMvo5YyjxFdWXJK9xY6t5C73H7_oSg4_TTrepQunmoDlktZxh2aXfRa4MMSaOKCQgdXYPCYGIXb9Ncp39gYRQmGFdqlJ7n374Qj1REnHJ-AMQe_uO_XzxCpIOJ8QWW8VtO2nitJQwxXzfYs_Goos0812co6BmGr-DYhdDxI9dbTIFsfvY97A1Tekzj9zmF7KADg4BM9taSa_Y-p6C3PUgkYW2tqlbLBZQwerjj4TYIqNI5SdZt8jzyY_gtcmhwL_GzsFs7496OygxUy2rMPmhSRomflN9bgvAAPAXcGkuHUSlvhSnFuULaCPNTXlZR2wYjihMud3wmFhVrleelx4NLK6ilRhNWgg..',1346595337,36000),('hk0ci18902pjfhkupuggaght01','',1385898610,36000),('hp61hbieqert6innrat86t0o17','JT8Bvzk-_ppGUo2ta6wsUpJqskcS6KSMmvec_ASZc_1jbM0FihfDDavdJbPHkaLHk3n9QnD4DP2_UEONZXjRzzs-1F_708Hl_NGGta-eGHwJhnaGK3E8zALbNc5mSAk2YRwdyBzVXlHKgsmfarXyNgD8CZ84XC0t7Whc1p_hEJ_FemswMCthazv1bJg2ZQRL0tpc1WNrqWBDU6F6zXnnUvKbFuwK4bJfOvzl37EfEP3g1avexvmqWsUz73FlzfynCKg0zTaeoCC68-5ArErnn6sIR2z16lvKc67Y87b-hmCXLu0WEDXo0mHffjO3fl1GPDAdMh8cDTa3rlcPIFzwX-I6SFy088sRn3BpxTPAlSvuCxR_LA9GKk-yzXbWIrT6zfGV1JVqjjO8grrMIfGRnCCPMsosTV4o527dL7DqOecPeQamnFWlb7OYygxjIYWLBnLr_OLPoA9HHTUB_qi54gLHPSFcfz7hYqmnAkfdNRsUqW6wyHhE3plwCSaAutomOsyI2O-rbV9w8sfRzeDiY3AjmJzZiLjyxM43SZvzcIIzjNH5-e7MYXn_WsTdhgUHw-l0WW4AmrpLuNEByPYuoXaSRJz8CBrZg0eIt6DpVuUKpoFKDV1fgcZkHCV0Qt482wLoFDSNFExRtRQ_Pbo_kNgLxdiROkAVPNAjJAGEXW9FGtedm02OSmPeU-Tm9wOfppR010sSD-4OvHLxXJ9IBQ..',1374583364,36000),('i1njre6vaf07je93ds5rsabv96','iUEEMCCN8QqMtHU0SBu63CLc0DjD4fKLPt-z0NYVMil3wwlovBpXPpvxTIOaoNIa_TA7BAfOsb0fGHMXK85CGlqrbm9UzkBbp1NiyuGCEXs57lxxqXlfzJncxxkVG43nw0-J2UMxJIkfSY0HwiC8mXq4LigDMhJ56Tme9FSfeQ1cErLzSDekbSpyHR9mTC4_O9Xft8E2GlTKko-jCZfUT0y-y2mJNgp2AOS69iFtGH2e7969T3KjdYdh8MQSvKzjNcIoKhr89FHXY22h11qqSt0P23NQMU_SJVEdeTkcp57ePfaSUhqW_t4XpgwxK7pstGsJ5pkHP384-5RsgGOnScc826nhDC5n7S6JTpg6ypVCFH2x6L4XG7O4rOIZf4DnTq4VYAJtOYeBhzx1_A0wI8_4Y7dUmJzx4qQ_GADKCd3Al5KCoLBhTSKMsET-GYmlLaZSqhhGQywG9hXHWFzCB2dsnjAqEg3d2Fawy3g8RT7GGzEfxhzAaO7yDK0pj-R889qe5gvxzjNM4ZwGsSQYe2xeshYidcNOa6uiTnWtyxAtcRCJRlNlTOrQ80qxnLyVlHIt_FXXLnNu01uWl7EUndzVQ48zxGRGcUY8GjXGxY1Lqsz5UBjdnMFlB17dx75SMYmdXi-4W6Z8aL6gE0joZH6--Z4dd_JX3mnNgHukM9SQv54b414pal9xwK3MhdCyVbtjof0qOcYTWAnPqdAkRw..',1365082947,36000),('i37d798cqsi42jd9kfbk13m4c7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"b21dd7c25aa1ac1d893601e093914391\";}',1380542550,36000),('iflslhirdspoi4ghben2848mu2','',1383571655,36000),('inm1av7csu8c1le8raabd9usr3','',1383571735,36000),('itnpe546d3ojjdij21112t48h0','O0kHbLOhMmzeVvHekNdBsL-Hf7X3rydTn93ZyclmBYqA8O0aHsUbzkj7Ik_gcB93XYleV7SKhpeSPDC9DLaRR_nc6ohRBt75CuyAn1lg-oBJpd9D_7vCpMhY-qd9At7KxJpwF0k-cAMEF3klHqCvfiToODEZRuesI_onahb6rIVxMPEKzbWX0-w3TcVAC39gKWOrXOWM8-SLcMfXBVVkr_ZER0V__zi1tsxw_QXIFjdzKyBFyTpHUtBSEqsuKG7OcofJvmeQoMBNVtIKppagiYDT-lRcyfNt1I6nsZQ2svN3blVMSoFbabCVIvW1bhYcPlNezqur3bnNYufA5d_tXG3aR1F79wGEaSaEpjqrdS3dbHIcuUG4R4b6fqiZq6_WA7S7CEwrjd9piPKgAKfGzFL1cwj9tFemGZhe-lWx0JjizmZ2eT30u3ZNS_mjLWTbxNvAHDU0Q0Dn0mAJX0k_D_oR9rME92DadPIG4Vbf77lstDud2qn9adybM0q39i9owgVMl69KJEU-RZFkxppdPV3zRCp1UOC9WqWQBPbeABevmxCbxs5Y6WodLwZ1ksknFit6-jV_gR4bkpCOFNUYVMkBhSVgZyVMmaiDUBkCmXpHwYwRPWHzn0IAiGdrl5ZwWOcSwhJShmlcDC002yC5kiVzyIODYOrBH-BKwU77fCeHyhWYZJvFaOxmzo-2hhSJ__M5xPtexvAPuNF4ptIhng..',1350500570,36000),('j43r39s4hni2jh8q9ios3idjp1','sCMpmyomuwmD81je7Xfs0KYOv1My737ZhBjN4hLBcg6Xts3I9ZjXkXfAGTmmjMd76bsnWBNOcczeBgL44vHYe_2FCTUobi80ZONmIm-EW_FTKBH9e-nVpRoTw1BSRX0DheLtWgqIIQuAAY5S5ejlGxd79GMtLynIL0oN1uVbUOjca-WgNt13T88t-s5TjOHmMtSAuxNOaptiL1RKUdMmDu0HSzF7cPH_0py2ZhNft7jhWI5LMXE0mjuQRgCz5SW9H9YShhWT1ki-VwWJic3ci9lsQQgAmC7JZGGnDtK2e3dPPad4WSAPQhFGewesGT17QK6VNiXzedxl-Xs-GWeqlgR4KDX7EuZLfjxl1Kfj7sYdjHl_N8Nl5_LJLsZWoTIWY3m6ToxAdKKXhpvygLTH1CE0UGbgauKHX-9AygKxqlnWCigZvzW5fjBmutdiynnLu6nFre9m1jN2vC6iCxIOI3WVITP6dHa5u9B1j36J5Pjy1iRYeL5Mh3u5O2nhWLqKjd4-r2pT77e9k11agLL8GMGTPwR_yu1sCs7uC-hBLdpJfOycEQQEf95W9ITxF_XSWeI0UjjS44mzETjqLwDAfLL9A9udhWFQ2v1UwAwCv1PpgtVB8hAlsivYUTGOlgIOHXGvelkLlGtLnND9Lwq1cdT9mt_bD35L1LutFkrfmOCfX57_4lk_Lm_j4QMtHikhh0zBXO1ru1z9dRDdX5XGJw..',1345714174,36000),('j6agq78sskoraka6ifebhb73j5','',1383572369,36000),('jqe8n65bqffkscu3vuo0dsbj13','Sawl6gW3dA7w6cO7pXk-FLElIWdIf8oQwJN0Fjuuuds997rlPPIMN_A3blu0fVkTAu23bYeDcQyUkhnhtcgu2DZ0pCjI7O2AskW1kcTDC-OcTM48E3zsPaIFPrtb25bSTqL-v-8VYbKslBk6SdalIKmb_TaUc7YvdDAULZ_5BtOpNLLYKAZ6Kr4ZvDHo6cCDll_rN8yj3l_vr1HiBnaTSplYj3lEjwSGO8lIL1R8k2OsGRLEFdl18PV1CgtYATQFyMH0e6eb4N_2dSGqZl4M-VRPzruPhtORXY91ZI2UA0Qa5-wsd7z0hgYBhRlheYcz1jFRc5lGA4z3mzkCg5jeY-L0vfL_HgXxa0RwfYcuCxf0Iqo7lXAlppbH7SmATf_XoHn353Gxi1am2lCwwiugbWlcOzgR0NootuC3J4c9c1SyS2BX5lMe46OOqGBbMWqoHa7fVbgi4gNTIWkD7nKuUBwjsM_uuyfyAAGa46JT182Ljdm74oiRPNJV9f7XWP5niRRYvhvdhsoEai76mNhlyvBnzR-P-lAwsFA2sEIbr9_jsbp51sJaKiXtzqb4bte-FjhZd8HHzqFS7Hok88FnNUgv47GAAL7aH-bZJnLmh2Ep5L6oBeXyLRHB4Sjgf4EOOCn_0U85ie4SXcqXur-l4lR9mPsOmqb6-Viw-V1iL51YGDFVc-RoO0agZE3cxo62iFphVcDZugGRWYJfMt6vYQ..',1368885294,36000),('jrpnstvni0sqbqhjlsiqsodl56','TXO_LJsSJD9tcf5SxjNSZkd7vhTBKLm5Tu2dB4xvIYa8XVWhSvljXJ7y_madC7ZVBhU5RGAlqjeR6rV3Fvw6qnmjuK5kafV6F9_Wl4wZBZNLzDOwvxbKo--NENZLjS1QOTE4UBAQ0W5I7ylSGRD8TLw5xJ2wKkvweNS_rdoL5Yr-nu1hZ7DURA5tElEay_eVEJnmfbH79VLUOVMypeS8IsqTUPVlbBCtBdygLvPBvXGKOv-OxFMmvYyRX3G85Sd4Bz1SJHz95nPq6ognOKr4RBJJAzs4k0tZsakBqx8k5KvYKgYTUQBL3FRri27upUXVh5xkPLfldlHYDrUvB1Ke4lmc2Yhu6O7N3P8En4EQQOCfEk9wRI3Y9AuH3MuPlH1tZwHM4uBd4oYJbfPSYMcBWKEY5lAJZKmx3Lfu8odf2eOUhPijxfIIRzZ3SkIDLki3pv_ajuYVVmlniv8GrewbUMzdc5ZGD48wdtaOAjEYMK8SpsQwjryNtW2hVXwcRhyOn33Ax1FDFg51Kf4OnewY2XOzj-C3HTtnMRmE0uXyGo0RHhDzE9g6CUS2M05PQOhLMmVekI_Rjs4--oLv4Yx0b4qXkoDbWDyx0eVOJT07g8Vhy5B4RVXGxQehqaMzdjRl4hbL2ytHNpdH9ZBHsg-cjKQrF_h26ukFFrqHdbOPDmNIl0HHQXPzpWArsoIMkF85XQbeFUjha2L3bT1Ho9cPvg..',1366798111,36000),('k06384i96i0ceqld7kr0957rk7','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"2e66efd9616fcf5ba7e3cb08242dfe29\";}',1385989131,36000),('k62fvnmch7pds1g38627dcnoc0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"58905ee01c1f9c2e6d380c3f1b103f0a\";}',1385915544,36000),('k9nhdo6bn062pdhrq8t8eqqoa5','',1387279611,36000),('kdoporidmpntf3327fr1rld3a4','FE5GRwf18EyWpvITvNb-0vcMwpjIn37jq94gj1Yhdd0fqJjFPPK0u2jfH5r3UT62uIpqTvWBvm68V8Uo9HuZswtbGfx9vDcz2m1PMIwmAv1h7JEhBPjC7pLN8er6O75O4kbF3dizhSrdLB-2m3mkJlu6FA6LjijflH_OcRaaC4ZoDZ4hSMjq-MF4L4S9jBfaaYCi02wRtFlxGhqohMo93I3ikGOij5G3oevthc7Ba0N_qcY7Wl3vLWRVZWbT6VtC3yjlEFMMDLfMGWZCdAobl8Xbc5OVhlK9GypaLWFpehlI0NCu5IVvHux0wah88ZpDYjnN5PEIYFP6XPYBn0jt8Yohv75t1DXO6h6m6Jh7usrTJK1YOkO0OsSueXwjUJ33KCOvLRbFJy6A6XX8wAVNuelsyboqqjSANSRWXqrmVtoHvXhJY7QkEj_XJeEEX1vgDN2tX4mrk-wKx5HJ68O85oxmPV8USdv2sc0T5PubiMW2taeF2aGBtmX_FSORG9xtIcjxCFWVSpIai7SYmI9UMK-4p_cUOzvUMbewXIkmO6x1Z9WX6bYWu62A0vLtG13dqOJWSP_uQOAiHr6z6-RhQevEQCnZoUoEF2SVeDhaZOamHcYuwFLopvwoUIC8Ec5mD3QkmtXkgi01jzV34I0MKvRCmrMF39Ft10JqDY5-oSCVsPfWa9-6xroMLGZSw-31bxwT4hh88KMXlmFoGPd5PA..',1374669646,36000),('kf572h8aflpvamq1ou6k4uala5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"58009e3243d95d2e26b2651797774995\";}',1382814303,36000),('kgoulgfto2ha554s858sappdl0','UYum6lkKBN5ANFpgJoTiSxTKDB3-v_wGgZA6u0XcgWr8dxXNEil5W2jTbKyFvmJ2QJr14KDAU1OFYoGb8MLv675T_XsWLb8vlihoVHZrugx8SWzSm6vRHtHtLqeULrwU56eMRDEMe-raCwxVMmaLptZMU9vibQgelRklt-YwzJdXLHdFiFK9RZivvDPiDIMQXPrKxtWVfj_DT_pERqSTfBg56CzNOsEKjD2AKhkSPAE4YZyT93AQ9G7jukm5OvqbQY7wIqZmVH-S_IZGGSB-ndDUaoMWUEdt_F9eJXDwyqX9mh3M9dsFLWdLeSjw56iZwu-TXXxzfrABOsCkcG-Y-1ElT2nD7AYbtSpbueILzp3Rj1d0yYVXIvzTPxBsp2am4H96o_Qhaa_6Dzv0vJCk2UMXMjq3DMi-x3xAAgjHoz1BrYXiZDZrhn33bVV1qqOdkGkTBCi23-WpnLbzLYt3-ziHPepROyFiARZcHlCLJWPLyS9kSTk5lt4MPuhRPj8GL7mpx-ydY3rzc7EEfwwuo5XyJSPaBIk9WQJIbe6V2KF2xZx1Y-EWKf03X-Mem9Fepo5d9jJLZQEcwZVEFLO5UlHdv21hgnpnWQkl9FBGiY7Wi3NzpQ_tvBgL6VAearfEub9BzY8QuFVQXoiekPvEZHSAk_iLajrykXujPDdQEfFBqtlKUqj3d9ndOUTX7CvoONRZgwfU8YTAyoZWP4kPJA..',1367139476,36000),('kk1vp4366j677hoini8mn5b9d4','w7ZXRCmnKNxN7epv9_YUoVeTpKyOJf-h6wZY7LmAqmu1yIFELSQy_T4nHc_D6KIWeyzBeeQ1zzO8S9-EvHEtARQhJ8ds5-vtu-vkBBBoUwSIhV1eqCCheyKJ3D13XJb6rVlx6uzk1kQf8NN45vPWPkVtRbyQirBam8YIVIVsYf1E3HjNyNvs2AZo3FNsl5qboUfm2FMkeAUunkqVpLccDKbpTWWON4fa8LKr_Yr6dG-wsOa5v-91nHJ-9EpMhno78IjcMA8f7elU9zfai7XL4tSyokl0xsD8oNL4i9xMqJoc_Y07nqMHS0aDlTjpxBVeLkV3wvOdhc4mCcQdJI96E-KYtkmVDHMcnGp_WzseTV0Fl7sObeFFDzllCHCfwrAL44GtlBXqeafFGn84JyHBOwb5ou25YE-qq6Kqm3MbPE8D1e8VsHqDgj7Y6iNelg_XDs6dNELF4zlMAGtBBTyZhtZXVQzruR4YPd0H-boifvJaeP29FPrGU7_dS2C-hloWuUDNjSa4U_dIs5SFwGZJYQ3PMSoEhTsjRw33H9rUBa3HcQ-W7pa438SLI2dcjCE_-Fgim3ystnAe6014iNr3LPofZpTKMAjglY8DlMH5Y3ZZECkLzzvyy7RSymyac9CqAI5lhood97To6ZVh7gItB_mewhHkX_a7HO_AbztyipQOds2hZaVlAIGRSitSMa-vAc0b3nmTYQBRJKrgIUmF7g..',1370450454,36000),('l3td161ljo1ftio2mtihagce07','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"b3f7de006ad9d6340723e19761d40f96\";}',1385993074,36000),('lorchm6iier0a91cai72u0mqv1','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"2ae17ea8c6af64cbb435ae93c3fba4d0\";}',1385650527,36000),('lsliadmujfhnq2g6s9ktfosj46','',1383571685,36000),('m4j86nmpghrcfn532ccdgipas1','8v_YYqo9VlzVm1wU50k5LN9zabB4NhpN-5M-Htmaygj34T8n1eWXmFSryLCmWUUpru6uMoQ-GpbMUzRhW5mYJ0shS22EX9zvZM1phUuAEImMGLMcOu7BUyADnF3u7PPMu_0VfrEiQJZteotSIcir3a2dawb0Ro83hERUc-GUYjiumRvmL4QTICoE_yJnNil8rM84-WXwgTm4mfGU5XoPsY_6eQUrF_E_0RgRIvJxGztwvi1DqHTfGyis2CT5zTw2hcHi6mV9zlms6_YkRv0c9dIlwQ0zPziWwEmo_h4bpIbMHS6zPIDpXAf43QyGLu3rYbiQlcHSDLVo0z-966n0HlbRgRJ6TAxoJIMiK3lf0vgCfpJOztSyx-IeDLfJrXjz618oiTgUkdDXsv7huH0T8uOecCYoSAOkC4qou8pdiEAsJJDYA8KzsSj9IhIUtCfJgWkBUWUPabuoWPXAaO55CDduFF935ypAjiignTupi8qa4GauzXnYxumgOJ17de93IoHoCD8Rk5U4dpp-qyEYZL2pF6EFnjO08I-7MlUlC1ipXEycbS9T7s2rRmeWoU4lmlBUleIZHXTF4ZWufD7k0OhfU0crOynRMcnQ_ohP9reWhq5WOFgqXK1xggqbrnkNwK07PWNkwlrrv65KPrHFErlFkaGwH3K35LB2aItrnMwWkMt0Nz5Z3hgtKJZq-bnw20XWAFNA6hsx1orWSutH1A..',1359295811,36000),('m5oajnk9nli8j5nvdbvkndieg5','U6hCO1dU24tS9MLwiOGS5oxfpvsX0N5XGFyw2bszJWXafPJCw9OPwNAv7aEEyoFCRs1riHm7ED6DtdCpcdeFC_4CC2RLQd_1BrTU1XbrxsmpbBf-0KoSpdEgzglUBcz4cLd-cOZf8Ez9fRZdofeRvsItSl_IgSXLcuVKVWPTNhxcYg3lJ9rNEMzgmlgA8gX2DGM7oGkzy6xY2SCiVtRPa-jVm_h1_m6mYbPubbLLnA0IV9sdPu3RpN8XV-12Fv8W-edCdAHDdow9uNe9QZucJ2laTwTc3BU959fgreQS9i0ZoMMP-Z8zejAK9RCARH705nkTUKGMqz5sRjOBxUMA6EJojGRGIA_qANs_HxhbcQHHTqTHL5f52Rs_-4bcRogz_UlUVoVNMFod6Frdh2ikdkjyO0rVfGzfrN2NvY7XtPY_DjgpJkDyjTX3nmhK6pYP3xLeJ0Dm7E9xpB8whadvgx0kEkRPQjkemvcX9IC577J58G8eNaEvoT_iAtCGxPgHAKf9Ca33UrVnj44bhrg6g7kgAHyeqpUNA-5U6bJeEryJmu7iyDUajcg4KIgLb_9i6ddR1VR1oj74u0E3GJxbf0KEqtJIHNzZW7ZPkSM8RTt4DhLM_RetWY5BedRge2xmcMkB6j4fwoDho0F26-xiRmdTzEq1HLKG9LQ6afLoNipEyU9Oq3V2Y42-TA_Z6Hfr7IqjWEVgM9ZYhR-mABWOfA..',1363618558,36000),('ma7nku3k3rvrncc1bqv59eead2','0ZYcCKKbRAWGD90BwuJUld4Wxdg1RXwRZUtTeQhMgAfzhW8B3SUs5ev-bmrbdYZV5ZYgw-lCNZmUQlh6FR0q73yVEjT80omxOUcdKfhfgvEwzMD3pqzljFSdGH5LXQKwDfzjKb29jkvEemI_c8wSmMHYo4uDo_GHVifsQ6najQyhN71f0p-HVoesTls-uopPREFjeZ10CuYBH2e4KSrvpkY-yQlqu29_m6YUvffSm26n1jrueaLQJY5hpD5YkOHplx_y8VFEcWDgOn4QnXH2m96_Sok02gQ2sqkD2zoTZGL4pa-yUQIZ4tXg6omaaDiLOShjTtNvWhfNlDnYtlSX2_L-9zogD4I_6Dxt6CAjoZYeNX-P8XSqsn7YG8Scx-zNUlUa-Hy1e4QJoQhg43F7ulFjm_fDMyhcfX6uAT3ElCmO1vk01uciWY8XjQCADjwyBRGjT-aiQ20OTJQXqS-bMAqFAtWefzN3Rq5TGkvEdiJB4XB78memIiBeBoFLBEGieKDugP10irYQWTmikZjy5x7eOxcgFDl5btoM5NeW1Oz_pNO7o0iypqcb1h4vn0RAuLGQvDtmGRRH2VdKMezwAbAmP39a7ITn81aAGBRKrEIrnn8vohKS3ivI85RSW-bRothY8KLSBh1EcYyoYUz-0c6itw_BuN4otSIHipvC4EwZynm-9_ibdWj_5VKqA9mLK8FmHzJjDYiBJ4URShvaFg..',1366552940,36000),('me64aclcpbla1oau4bdtp0ba26','8UjOC9ezGK58MVkWBU0ROTmeykgPeoHI7-rPv0fI0NDkPTE96b2Z89IZ_sP3T4JH13qbl3alL8wSygY3vPqV5m7IO61ClcinVZ5lvDmoIqAIAXbCiGa1rEe0VD0lvY4-ZpkqN_8BDhjvSm_RfhGf0q6-1ihDfV9awwu3ptRvaQVu8pcTrCsFRC-_Em9UARDFjhD_2e7UCfXjVMWskO1Ld5JYCju4fl-0GergMN1VoQ1s6ULkq-itIAwsNki5MhVeCEApNs53Tf0z3qq2Ul6v0VQiiue9O5RQlvGKqjWn_OwMWW5dP3ter43fGsHSAyB79PedFyiv3ax8Mnc7KBAFIwc-8z25vAChMMnHRcrw-iAzXToqYPwM6p5ABHuCST_KHtkl5EzJC-8XKxJFQUXXL4hgOeFs25mrmP51HN_Ksol2OPg7_woGHXCOpeX8SRRqU_43i8_wR5I7E4XQWmkSZaCek7td9ru2RgAWYg9YcxTXQgxIgnaIrYeXtsdob3GaRoAiB9IZqMBAdtKpq8FvKCjWoZc2kZ9F63thsaw0JYunErpXVsVvrpCyP95rc100VWpQHq6LzpM61Klafk490-3kGl6CKLiWj-ASn0S4qX5UxmahZKAK-dY8a9Dp-9hn_EldVVtM873RLBXbyu3k_2jzFK_eaTUbdpSq4ttR1Bx35EtjI2hl2ovUBTJN7_IUN2cnz0nfl2UnRSEQoPyIzA..',1346590763,36000),('mfj92h0vtcgbg6sam1juqt0rt4','quEWT8u9Qzcst-GUTkHLKQAzKGFsSYP8fY_jlHRmxMO-_VpnymXUJkc2J466Q8WsYAbxP6UzPs74Vvo9dlARMiLKpcQqkagXlDMD7Ag0BA--XLueyVTJw_mortnXbgusIES5-cbGledTAQLXGnjqkNVoTZFthMkhQc8F-YEZCTX20VdBDJAkSFWUYhSFouUTH2xm9DGn7BKIYoTxxj9FdA7i9r3RNFGAoDQUcGhR0Fy_TGDO7JD3s0VJEbKuwpbs5E07u0oziCC_qqBhOZROOMonqqSU2XvW-MEUH6I0hX5GTHjaAt-wfQyye69nOBJ4UDAiXQU90xMyadq1d6ISa-QFMd8Hq5uYvUOnJpmcQPIQAfvHKQPywhUfNZS3DFJtAsHfCPw-dz53MS5ceGmlt8S_5C3pW00RS2kBVORjz1Xr9AUnGQMHs7PFXlHcZ8pXtSR1LoX4wVXn7qorTpDxPUaKyGtxvjBdU5Z67JyCyUEd0gjdsvmzJa3mjFvxRphsDUBOMsC0H2zDhtp_kwJFFpfrAUZnb9oibK4BsheNKNsORcX7YSnJghRS07rDD7mZO0tJseP1hRnn8oFYO0ymAl6h6MvpD221QzTG1A-QlRbYMGHWNUp9p_shjCCAeWNDDyaPg0g_IjJhO4ZHEJtLmY5-KaNIIhmr_B7HAe_eqqqf-MSvbrZ1dyI60ZmFjmPz7_yCr5wkbbvaEswWURQXuQ..',1345039668,36000),('mi7mmhrp9qk394hg0pps58ugj0','93blLbKKz1p-MRLxLqx15kXhwuwpfaUPl1KPJxEEJxI40fHxN8Z7q8GIujKqGH1hmiLyxM5ToTvVcNssj_4BY-uRXnOw4iID3uj70MaB8D6XEo7x4W2JGFaf5RH2UADLz5Tzm69Pb0CYf1omyF1Lg9pGRRm4z-ClkEcDpcHjFEGwCaR0ij04fxvzZ696iQ2pPLeinZhzpfYtdl0wzMpdf01IyTIrIgPv3oMem9ZN4w037yms0O7nKM2HHL0Uyz9vmJ-RselWymC9chis6Pn6uBQpoQm9vWHKI7Mtbwoy8IfgaJOYbY0sQIgi5JTukPtUHUFFeGMBdZbOeRBqPiMRjTJMDUPaWLx_O_8gMD2e-qBRnEYI-ZhVtAtkEpWEMyVqJIWbWjL9j1wqrWU4G95EKpKWnllywBri8nUG1FfLaR0d-E78XGarLc1w00fUCI9-nWqdslwNM9PITVYcEG1_z618JcTvrBMVHL4cBIGsJtcETumiCNyJ_Ys2CorWC30jlIUJug5FQB0eVUIGkM4e9BOHnnuwZi_nxHni6h-Xk2SMuMRh1ysbadz-Y9RhRPcLgpgYWJJXW6teZvyP8993_WpskdZwH86Mi1nr-RXqTsJFetQhiLVzmAawAem5CAmRB1C0ySiW8-LgioO-jm0jVogpR8Q0SwdvS_tlfb_uXD5R1RhI-F5zWK-LOChksFDj_fW3rxc2kPzLDOEcdFx6jGm10KNp4xar2l9OW4UPq1s.',1362997434,36000),('mick1bmi9blbuhk2n080gq3397','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4688bc11b05936877a68a3dcbb96d1c5\";}',1382361288,36000),('mqkv6v6mavkp98mi0qqvquvpv4','qatBL7r2niGgRPp7estlI92kCUgQEhSbUlROAxUWgYJIgDp5595Sx1O8UVu8ZriB2NGf4f0NN0V3P1f4ROIUEcOZH0Ap0MHybhlHFLSQ3j3Lgjfe3zrw6QrT6kbqPL_RGboeE3ogn7d_iRRgPs4EPfi-KwgMx4P46eItHhOL5y_9I7CnonaXOzcYO9SJeqRnR37L2EpbTJB_74xIyAQAxLVB9HZD0_P_Wwh9e6QKjkUyG1t2uTBa5r_Wz_gB6tHvwlwZ4L_uK2QOgiwQH-GbjJM4NVW1_1L4Vuw5LgcWHfsbrXita7WQWdAIRcEffrInybrQUwxu5FVzoE4ZtSSWTGMv2XfBBZblcplCqXVn0i7WfvEXXvh8sxvKgKW3oTK21cD3TW4by41Jqq7-AyBkGEmZCG8xc-WHDdkOQGTj3-m3l1VjQV6k-3HE0ZiBERyZGQgM8bcThEWAyjpk7Eqw7P8NSW_ezrFXFksaUH7OqVcXvbC3kWsVi1HFHEd6BccS-Bkk-XdgIw1AJahz-0ejafsOVlOk8byLRHXRAJpjYniEAP9sqqqbFCmzPfjMsphep2ntnYnL6W6DfPR0lFBy9yPRHhfaZcHwGBmWVHY_3naWQejmEUYw-eJYuGvUvZmO04nF1CPgh0sTKqbIQpF6flHPtEMzgyXFslz1BQiKoJuAFazN-jI2StDLmzRl_xrVAwJMK5T5xouSGrqocHhpyA..',1350930521,36000),('muavjbmmip1k5gljlhfl26ff73','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"ac149b15d7e6c854b3ff918e72ce298d\";}',1381230851,36000),('mukbtmi6b4ske3n5u5l81jmp63','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"5f0483ec5ae01a7fde404f9499074ae7\";}',1383801752,36000),('mukiu0qpdh484r5aroct389l83','axsyd7SyYGQ5M4XzqObHaSysuEdiLd4HBewIoO6ui62ZayhLs4VR_XZY9vKCA8ClJrqD37n9JGlObjfl5PaIyQGHCPUeR47bbZQR-oZCFn97dWR1yAVW4uh91FmAgtxtPsdEgzS2VrSiJp1bVgjkV_uqwHSnytC8vupI0zhUpi9M6jnksnOigOeqFs88FHRHPnNS-Ff8eFSdRmHL_df2IFLGYEa8HRogJJfzRI112zH6577S8gK4PcNShpbYh6VqWUOICgbqF_UcjcAGvc45IUVggh_P7ch5OK9DVVBylgnvDPYD7Va4G8Lt_quAlyuF4TWYw_YYK24nQX0exp3jy21gf8nhIYy6ZPukXSkNXtq-sHoTXrNqZV8J18cXJ7ai3zQVzAho_CpA-ZIiO7JQ1E46VUznHH3A13lCViYXzVOj8k6MF8h_6vpk3FK5FxUkTNTmr9tQIMBujiC-66FOeNrja5OwPSYFjxQ2R4uKSTQioNz1KEEf4U3SddXHY1NLinPuCs9Iyts8mr2Xw1rvBEmgPzbdBN6ZUVuU2qfaY03Dos5UneX019do4Di5hhfk7wWz1S5mR6V4e67pGBnwtqIGiwbSDEDTHle67irLqkNWV8Ru2NCtIbhBfwnmAALK3-7aPYvcGTeYSCk9T6BMh2beZoe15uvwuPfEtSehEWOW0gKbzAzRA57mpUaUwxHo6oMo869UNM9nWTORkdXNtA..',1358872211,36000),('n94soq762refiqkoo58qm1c1r6','',1383572673,36000),('nd24a28knu2mh5od6gju911e86','',1383645641,36000),('nj23m5lkctkn5ncgf0oeuno484','',1386153450,36000),('ntaq4crd9c1srqbq6gkcmj7ah0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4fa83232af6ad40593c60105d86554d1\";}',1383090858,36000),('o4b6s8dr78l5oslua2qe44avq6','evoeZyOQBGSBNM2g1X2hBDthRxFhyPAHvC1jluF9xzAqJvx1Mpxny0TDvcxTLFKF58iXAs2vZz13yvTontm8LBenpf0kGaa1osbHQOOMQt95mad6CskRoJC3H3Aq-c9_ZYdjLKbF7tqc6310q84bH0FnH8vg1KjWsYnLBZ2xlXzJp4nR-8IyTNjFphMfMFIITWf0_v-hQIrStMf8zS68VHdU6uI7i-nmQK9y3EeOOrHq97agWPsWcIxnZ-6ivLFA1QIvA3DC06phY4ssG0Qe5nDgPaqxM-v5sTWK7h5Qk1ZFf9eOrIEaOCw0fVAGPBlew3cJpI4mee_TU8roT38eiPJtwGTbANCHuX1z6LEDZK1Y4hKZu8V8AqgrC5uab2HhQ-yr7EijLGTSRO8MPKhBHCoFMONIZMcUXez4EgcvY7RLAJ_gIMTEVLFZFEOSJpNJwMrt8VXZrHEoNABsNN3Hw04Oggti5ayOcAxqEgjYhre5QjwV0UhFbD_KOp2c1VSkfXZVhtCKwyPu9b5Jm9pe6SVRIc3av0sJ1f49yOdRlC-dIx_eySm02oLpX-mshg0LMnrCixiwOGjKNQBYcpMING7wr1rN6i9zjo9PPNGmRgT9bzT6uulGcVhEkvRLUyAUjyJ9d8aLbiHopN8Wzixcu2_235OPP3OBIOH_Xp-e3WPUUIdaTTADk_3th8Ut6_puEhObTGNySKzbumAd_jCIVw..',1364889107,36000),('o5ol5f8jva80tge9flcqmrhme2','hs_jw6RRvCBQK1_QMII1Ia2RcakFNNy9xqqxzi1zoWQeoKbBqPG8jZABbZjwH3ihA6CjKLREjKpx-fi7FX-N6ZQ--K6bdYlhHyVcrN_MuN1ICuWXC27GnXMaP1gz1yaFhiAULlauBRThYfQ3yFOj4lNxvSb4DtAIM71X00tT_EzPWOq0vjqEpFakYaSj7TiKdv-Ejp03OATQLPQozk2r9p-FRs4-ABYpKrb0UOc-eKXfDqLhRg2w-RCPDuMzn1P_0A5S4qIcscLOqt-P3kPUzNi5dYHVmO2icm1L32XdgcJlKjytO06ITSsIkh8lJVqj--d3xL7M0_K42-RbsJ014MHweinGnSaisBI2SCSCvJuCYlCIGxNIkreIOgpVZ2cw2YPwY6G2uB_Wbi8T0gQ2dZ_ridvNcXIprWsRVLND_GvjmNWB4m8c9XRdDbls6mOHE6KJ6Ym7fzHwLZDU0MryNsoTVBzRPdyNm3HujURirdzR_dC63dHU8Rb_Xun2uqJuxSNn3HDcQxXuibfGo8J02jnUeECBxSZZXSF16RFbYmQU17glzjc_f3fTChxZf1KvnAjiMRKKkXKH38rT5vW7EkkN0Y5H1Ssg3ZajPjunyr1fLdMdDILa_7XJBEE2rCUrRy5ZwWRQ7Y8dltceuLL-qBmsTUNztJge6iv1WbeVMhQbDxPiXkFL80eWAvAeNa1IwL_vIAvn6X81c_gDmr4mZw..',1371558118,36000),('ok85lumbrbkv8jo71d4nj0fnc5','-UVa9zLeND-S1FegupW4DIs2ziU8bCdfD9QcQGYWTOdmyem0-y22ygccnbvOJYyMzIW2ca7fpc-kK16iv1OjqlTcbMvPd8iIdquSdAuGqre77Kq6ZWB3Q29gWOqpac-BoFhP2CrqmgkireniGZDRjNbnfZSJLGWxga7cfEoquaGlZVM2gfRSuO15BdQUBL_3HxkDfLX5_JbrBi58avExQEI1suSKSqPyucCt1FYYOU213-KGonQ-yvT9QQnEaa8NT7tTPW0BJZD2LFXML3_FvkJc3vNX5x_aVDmaJWLoLhdnBExmy4tdbJVRUXHTAq2wUyteDN2A9UnbzPYjh5rDwPNfwbj08wGDKETgDfmtA2CvLammz_VDlVxu6uego6gAeizT260VJn8xHiECoelcEmsk0E2oHdIhe3-RDa0j24RX9phH0BnwKdJmpnt1BljfvlDiS0sSOke4MYYyBpF-cEN-vWbmt5s2vjPHrNhxY1QNMgI-d821wlkHCqwlDsD6YsXrFe54P54u_gVbyDIbddEwlTrg6PVYtubHpO5qWpT8X6897epcVv1BFDNarsC8rORMr1aB1reFeFPDxYIRIQy1-yli9WxQNG0p_v65Kd1RwzCqHAvil4nHs8fgKjgugI-o0oGgOVMQUlWvcu8Ag1xzT2bKtu6IQGDGkh1IAr_LUQOIK-ddKuqsSWLyTruhyyWf-v3ZT1vGEb2hDo9ckA..',1368447732,36000),('omtn12kqooer1cq1shoq3onbu2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c382ebef354ba5a7ee056a3b3a8b19ad\";}',1383720955,36000),('p474qifl9ip6anm7m9qo1tn0q2','EDggSVNjKq6olTAMVdDQpv2NsnCy_zU6LaIrHe7xP_tLHswq03awdIeTcT6wD6c1jZmjmkiGCAs6nUsZcfzo5jgZfIU0-NWMeLX2LdJepS0V8QJG5qaWDBvYwwnsENTuN_gy7o3IyAaiZtJ9135He-7BXx7s25FbhdOFsI-YoON250h9M2gXpsvhKsc49qrVKEIJdnuJOFBG35m2k6sZIW7AbGeP_SfIWlRgsTpKd_K7llITEl-jsbamNYxStsMjb5kVx7b_Vw4y0_Kz4HlnQZYcY2YKKwFWr8pClfbRs1OGIJcU-o6osMb8VCGugHXhxV38k1FUVnqKBQCfrQgjT-35sb7jzCixCVHhKIuriOmI1cXtsae0of-4YkEil78h1K28VT3limE3wEPYADc6VMta-0W40HlEhCjEk51bWTDpOhCFDywqIIX2PleU8AbRKGO55TzlYmSFfw1roGGEiVWXlqGuDiy7-MhFnNfZZFsdUfYz5o-n1L_oYcfu_MjTJT2MkisypDmNoZsiHmjJk68m6QO3903x5POysmVMxYC7nzVFwCj7WjUWmK-ywRw5BgVya66mk4xW8NMEGVd3YA5m7IMWBsjLlJFmj0BHIKrHKDzPDhRJZX_ZErb7vEGCfozL0BudFKVGog9lpKntIiyiELDBHqLJJ3xJRlLyraUUh6K6nRPFkTDGSXnG6DmDqZx6nmrrE5Jf7jsfFOD6uQ..',1364732396,36000),('pcqooh0ifc5e3kmmv28c2pgvg6','DEefak0qApylZnX8y1f-iFhx7Kpeh94oiZE5CRuAuTcriAS8xsc7zzu3OGRyrXs-a6YwO2HhZYht1YSGuV6ngz9nuotMhNlhwM2zEYEVrlOC1gWVwK6G_w_0WKu7naZ6CzI0oyrD5MDd9SIOKioGl8c5xrHT2oTUKV92GcB4QODUnLLVdXXVhuCwd1hb4ParOX2gE-EXkEx8cvd7EieQjGq1VaZH9d1QXRnj5D_g2gfSHeJsZ6DUPxz83zmAjdU6BcBEpP6gZh56ZMZrPxlcC7FlD6L5XIH2Dzb6NjsZn4wNWiGQ4f-BgV1-ksn3aws7hTw8pA5gpG80NawxUD3LhQpmvcW0DFCUousHIg-zn8TzhTozFk-gB2Qmv1dmMteg8iKK6sk3dgqf7zAsiQks367i29_WM4ADoUy22N0aI0w-rnB-Knss8cz2EjsVE9VbzTTR3CpSb8BUcskRPMv7Da_jvceA_yYFputa2MpDTm-0aT6yEgUXtdnMeqqlxw-71BKZADUuVG_RHKlAfEnzUmkga5QpriNdRh9O686eD6Qw2D6x4L0NyMtvBqa1wX3fjIItqXOLviyWx5nk8CAVcjBh_M-R6FkSd4XyuRrHGuvBXuAc1RdJeo-Vi0nsw1HVV2IsFF2uD2RMfEUoNUgdCUhoFThSQh82E-zZNV89XkZfyATjm1kmIZUMNvcEdDYpXQe4B_2f0LKbF_DkQ9pzvw..',1373301275,36000),('pk10sjk89bq7roj0g8a026qmo7','',1346657906,36000),('plld2g06g9vompuldce8mhbir6','TiOKV7Ns5IjEhj9o4_83AsAPRao3aWKTr7Tok99eAyHavHSuG3J86yDHa2mUrHS91t82IUIKlyJeeXENUwnk9OhE7Xgxn1VtEmOnd3LVQULAlyNryn-8-zcJnYy38Cwh8p0F5olrkmzpNrjruuNC2Rev3TSiyT99UY1x0ufAV6PBwb-Dr-htTZH8fmkV1FfmlGt9uAF7SpzVdrwFfOdgJWZIDkC4TMb8GQwkSjSrdH2WyXgaL0Wpe0B3WUv1AexQA043MCD2G0R09j1NJsf7OSuBFY0eOIkwfra_3xuPA-U6_utGSX-L7c29rW2Hu-hsZBiq-khCq539SFjSrFNIClaqdx1D3G1mDl5fn5DA_VRIBjk_NjYXgAIvj2yS8JxFyMro2RCGQgLDDM7Xe0YMxI-5KPgGhsh4SjWObHiDGWZJbJwFp6rq9g4pJ7Zff2M0nN45PK5MPyp1FN81xxMERmF2P9CpkriepT6WDMJ_3q0kK0MalcwfTnUMgs63wRZq_J8fcCQmUVYtk1waAgVwYG02yx0d2AaRIsvRWm8KinbY4YC-H9WjLJNrEyC2F0jlFix2goD1L-JX8A1YhOaNCZAsgTWN5lK1_LZq8v-0jh0RjIEsYmZ-zLgfyU-09scus92LSXjpy-KLqE6eQAaxUdnOY-GbEGMGiYYdT0EA3gtRPOPMbOZWS4iQwHzcRHWtmFQy2zK1YRvQgARzPON32w..',1369835070,36000),('pmhu1ou963359pothlngj162k7','DJFNfLOdNKt6G7tMq8WrFkGuePSWmXywScwhyXzQO1KtjpO88SGIHfd2VtzQHIVHZSdw-KC8TA4GbBXn7-R2EWJhUvsl2PvfRoCHu-32LKzXwUzOq3wNxPBmwqBQhBSujeIwvO3evz59_AbDhMXl412OjsVGwSA-ppESjBQ1GZQtCqHlJQ4mKl6phfxqM8C7AU49oEV2KHh1fDGm5MIYbRHJDbbv30g-biGEhh1nXShw2dIL18WvZ0R7LHyeErgQUdwj6ZoV8D_WChzHTtRLAaouXXxSmucZIxEz57wTihi2ruWaRmmYfVQxG1ipQQLqb1qIVCfgOiZBiqVTeyNJ3hWtlkPKQApgdtq3uvbfRAaP8v35lf4dqbJSBbgWyfnJeSLWQ37NAz8i2N2OHQKyqt7GRoltDaVImpdZ8YVbNVvrN9xSc0Ept8c5BEP1DY9P0mVYXmtNlpratAWOMMIb28y2XUKfjU4Jq6xFH7DDPLMjgAyIbKDJq3Jgkpaf3kfIHMGM3TrM9NiEDkBFUJ2hS-sxQpt2-Eg1P0PvNJosluKmuK4DTTA_Pn-3x_tfRVZCr8aon66a0Drn-oB4IUG_ueo1Cr3y_Mx2UwWLIi1w5AybAqM4JWyWp2Cy6B-mKFHi6N2hsbkRUkkRi3_C1ISXDF43_ZGUqVfpMr-f-xkKLYy0t7HaW9OVDENHrpTLZP-Toyu9awSgdoYM9jt1MJ29JA..',1364283494,36000),('ps4uc3n528n1j7m27cm1iev322','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"ca9679db61e92960a1558c374e813f8c\";}',1386412174,36000),('pv3hcm2n4osu5lne1mpfjpsa92','gw25vj5ggTiBU_jiL8yv4y0Qg-2ehvHpfghoiDGzxJ-D09we2o9yPLPZOrA5TFDh2CpYkRq7oTTVy3N4A1UQBgen7NWLQeajPhGP2lqd7SgPz2SPf5PaZLui7E2Gik3FEqXiATWvP4FOfcwzm2q4QC6z39zSzCmoozFbi24YLdMsUe8stXfKlJqcbUT95smU5mR5zEDv0Zgk-p_HfpLDtnbabowQopMmefuIDJoaX3UtL1KIohs5Ue6g3O7aB0lYn0YaYzLKtUYvi8ONg1ulAZmoV4lEeRVCxbP7_usSbUXVD7dvTtRE-Z9Abo2VX_eeLnHcaEU9bFm_Drsic7p2fDGjV62tgFBbA-kA_zs6Ulqj-uIF91cCr9htch9AI0U7O_WjPARffVse_JfgNhxxhVCTE-o9znFKRPzWpPuooZOiN6_qJt42Xwg6gogMSqSKiqirgIbNOhuDvHCJhTzzmsPRZ2_582D6u_woXlN0oUYAFCmlOMGu1uQQajqKGYCHTVGmRmSx7yvTodGe4hyK2bM05Cha6tEGLX0LIBqzbRwfyW6uxwWu9cOB5I-Ga6oFv6t1RN1OthfTtvwJ7KYdBLzPW-TUnQuCqVft_zRyO4loxlbsDQK0VEkq_knsHgcs0cj_BQJzX8407A4mcDSwRKxoMmwCgrj6hWS5JOmz3622TRIdRoTSmPi4ELNMH4mkygG9aQ6BGxbYm-jZXb0B9w..',1366183998,36000),('q94969bhkavc3qp7qr8it1jid0','5QE8lm9_PoBPJp9M8u4Ilor5sRF3HplsX655UesCrT4ebugj8kqMeNdmW3wgzOC1ZFll2ZKXZRVVsYPlXdj2BEb1JdW4SKOFzn__twbno-3bLGFmNPu1YJBLNAe_M_wpUW4Y3T7JkrdFj0XowJaN8IEskwIs3XgPZ0bHHNaWmgI1fibiaBtCkFW66l1dMvZW7olRUD2SJzJRu4E2iuXe5qMKqictYoxRVD9XxR8F5Ecea2qmrfzRhUQnp6cbcOjP6mr_3UzyXmzdE_sKNDbKFLYveo5fygh4MK1nkhZLRnSd5Buzctz6I6nYzhm-fscQ4U2zz_dCVh6iC6XTGb4snFRACxkNyBih6WlyY3ABAX2zzpfchRKfqI8oziA9cxZI4uRStMa0214R0394CEOS0Pc6dAcZBSAEjVttNaSTpbxbIlU7a8mccgBmy4OX9a8-pXPyUCJHDd_rahoS6S55167nkesisURWlBA7ajbSc4le4TtRD86dooY9_O97ENeuLDf-JkSmKAs4VXwI2kPS--t7TtxXHB-GOLHwWbkILWq2KcqxFsRhRhFE4AHU16i7jCE1PltSmnMNexJPA_4OpkvQU1tgHTW-9U4ng9XV7N5VYrApwCbXapPbNzo_N2aOYFo827Q87Fpm4GYuI22jcWYbdj79iMl54hjT7xKknn1Xj3b0N5boiwIA0R-jJjIVctV-eV9epTT1P0DRqIGUFg..',1364907563,36000),('qb6iljgbvvsrpiv49imfk4luu4','2rJqq1DW1vC-XMHCGawXs7Vdg70myDOJpSxT7EYwFpRssbmB0JIp9QRORRCaozzoX6rUki3BplkC3xuUICjqdGJI8p2A8e0WO63mgh7gN3wl1aGQvmW33ytO99qczofsEzUPaUT06qWmRkreUp9QelizVuF4AS45XEDXzzu6nTTi8y9yJLdF6nYnoXMKE5FkGdOAhhT7m4URBC_kB3woH1WC17pAsrb7tDO7EXnOrtXgmr575GAKze7Z6jd0ucz06LX_eXHtlLzuROnR1J7XrGn-77U67cEVPsG9OISQ70eSh_JpS5-pFnbpt1MR2ooe1id9pJnd0ANzoxIpf90W_8XN1iIYIl7oUDICsCmkTJQFlk-2aUlYoXIJZa5ActvPL3red7ZRgslC6WBtqBBGafu1S_jRatmmbUQHdr-sWf_tDXkUrI2ZBtne7bq1mcs18zmef7n5NSvjW9EXbrREWu_ZzIuaRUa-a3_zKOElhS3nbHjJzxk4ZxDhGvchTbGKoD_sriXuIgEtsU2qfO80F3COyinFvjUNgSNYlw0JS2pE-T1kFmhuW9FlmnJuZOtvMC811lBWNW9LY7sCj7kwiyjuOWUASp2WRbX8z4rzqz2vU3E2VbamSeCzBkCo3ntadFoLv5nSZJopsYej1S1yQPpTtM8KcAGQSuL2e2bxh4gfyute6ufGPZvbY_KLXLEeQHpj_NYu0_hZbGepqLp28g..',1363251808,36000),('qdomica6lflsitsnbc7eblpl76','',1382525212,36000),('qgh1ad7j176k73h833aoearum5','STb67RGqabnkB_PRISqByEMAmzjajhP6qdHUNQWV3jdLKaFVzsdd-VlpFJoiWVVA0jPdani3jndnU6CVjT-MP6SDWumPsPN-iHCBrBIvIKh6JIaPt-AONp42O4u8J51Z5CEnsl5QkTybW0ll34l4xaPm2obGt3bCJJaz15qVNJG8Tjucej3DueRA-mDxo8pQQmp_xiTObg5i057gPQG58ZHNXW4XxnsMvwQDEhvujB5Z9CXrvcwEwWmoum1tWVzGF_TC1ty_AVuDj_0DxJ3I-qb9M52xrChIDgezZr29jjGXAg0mnkrGhLjv-oyGOM77mQKgzZb0e-67qwwDR9QWwWmLZduQ87L2WlyGnTTY8F9bAKtDizCUXbLB06z-Trly-68Niv_XYs91DBI80uQ7VC014_Jpn-wFQjIDXVU-WNaT7aS0jxK9C6-UFaEij3o6jBq13711vJ3nXxGGDB3kdmpXgsZraMeWG90ZSh6VfXRDcL5S83aNEVR-iSyWYq19cKCOlN7zYn_xp4cduL2HbLhC2Ea1UPPB31Z0XICO2CNF0JJpxIEfIcS8xi9IHhYA6WnAhf0t_irXn7YS3WhavEo1kio_A4AqPvIYckvo2AinXV-M01JDGwDvZvOMArNfjit3okOntH0nTCep6T15PTZ7dxFU22yqSU1juDHKyINPOVL0XVgOvy-rO6pCrVkUrXb3cH2OGZzhU-C20iFmUQ..',1351063886,36000),('qj4v6auieo3abcn0913jth21r0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"dd611d7aecbc16615efe658c3dad8b24\";}',1383233552,36000),('qrpda29nskgjv1cdhdbfhiog44','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"79b737ee44bec9fc9a2425a29ddbe329\";}',1385832697,36000),('qu3hitag9o0ee8ih3cd42bll60','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4a78553ef2a442f7d39c9fabc5312536\";}',1378129125,36000),('qu68q7d8u68lhanckkomdvm0j1','RqEg4P6VLtFmI1kXKeSjOkbGNHUDvLIzbV2egSX33jCt63H_l2rxtQhwGzISaOlv-eTiYo72yysjgxSAgokvjxpc-gisN18QJTuneKgo7QHcJN7W15qDGhEm8BErAW8y40ANypWp1cNbG1VYq0QjEfRKQaqgL-bgvhFsUYKcnAjMYQJEkDyOY4wF_S78NJzN8j4liFSjWdmvhnmAmRbIQOxmJ31gudRrq_6ZFfETVpEHycoGGPZgRFpeNOk3WDE5o4jTGfRyvBStNvWkaZ6-kUoMM9KKidQ0lrE6nLuRFo5kqM6vb4mSe_ZXvNXBQWLgq9OV55RydBKPuGu2E0Jr4AgKg3yHQKv-ZuOSi7MOwmXgFZ__HKYy3WO2ZgXb2-HCr5ByqbIfiGlJ5LeiM6Pybvvxwa7WdiBP9ld1TSFY2R8reSyZjm5rraChd3t0Akf5WAfnAywWhy5eTHu9sJL28L_yqD8EZ4ctvrV2xVw4MMXvqF2KL_YvFDmyiHylBENLbD8j2ly0TXbEOMlIlmcEinTSM06F5DGScE2VA7OZl3ZKZsCm05alpMAhMI1h7kM0y1P-J3DYQIgrT8-_FfI9yYe3_lSl2x29VVweTB5uyFwIW5Ht-EhfRJQK2EwGO1w-tY_AsZ2Pzfr_k7zhZ8DQbYQyTq6nx7qDvo8S6TgsmBImymwMiSCJ0gmEDK7lqJKzvD-SbX9KO9AlUB_kKhuaXg..',1345709696,36000),('quq5v7ed25di7en93mh4emsta5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"29df2a84d1de859b9060a6e0ecf05778\";}',1383333627,36000),('r0vaokl7dc96nlp4olir1pq280','OYXKyX_f22zbDszs4HT0McZoT0LrZhtHeIdDk2pddhHtkP_zRpXPZIDuZnfP1mXG7M1jXSaLu_fw-NaQgAYWWJVEt0VTKkfQ6sX-De03vn59_bm_hEwP9ZU9zvF6oeRUZdlIKq0Q4WhWS4vmwqdQyZm1bqD1UIOVi54pGYZPn-pS8STp7h0nZasSqaCR_bqKYZpU-_i-RRdhyD8d8sFmuQWo7WpfKQO3GsegzhDyp7DtqRRmC4aPtUI0U_3ePkzpYVfc66ITTzNHBioQ0XRB6fEvPT8X_e-RBJdNNyIU6YBG-izqqSuqKgecosTxkvtgMLIxeY8hIhY3bBV3ND3EECG3GbUh56Ok46gNMnYQoNiZ0CuAg88u5yUpwgOHjmTjFTjjJ_9lVvtN5O3BAflA1lhcad4Tht4ofRBJ1rOzl_WUmWXndAQPRZbIpupxYMYiA62pVYP50WLZdOttfji07efE1i_dZuHVfTwYFEBxRk4E0IUe8SqqBQIeiT9Bn1bFPk_eTvhFsu0mSq9DnP-wO38QAKpP3XyteehVzIIKEZfEUaA50Bhrk47IuCVMUVNiBaV_kpj7Y7KyMnomZqhQ53UiB7SJGVd9xXdkGDnZx8_HxG8c0L9E3zU6hfkLRtySbIAKhuI7pbuH_PG-o3fyIrg_x6b85sLgwykFvZRnKc4jhRyJOZPe2kB4w-KZPK69eI7ElE9r9-Igm2-eH5CRXg..',1346677967,36000),('r2e3rin0pcb8207tr5pf0qug96','jwHqwjBiuMhqqAGzdqjvD-U-UkSN4PtEyhuen_G16hxFQXlBlFWFzqptBBw8VBpDbVibUm-leWQg9emo8yEHyesXr77aTOh90HXwVaozVhEIvb_GQz4km1P9pMmf9Vvn64xMhyj2ppqipfLd-dtnY7ayJpc8BDJ0KJsDAWmcx6wJEYHoJgVtMO4Cj4rEpIREdS0h7a4lpRBMTEis8UPDZXc1Mm4ZJPAop35jBZjf0PpOmQTRrKB1lWYVBtdgoAJEHpYgDAg6EHN3TyhxPkQv_9XHTnZTcupQ02L9DmTFKjiA1ea-qIbcOK-ti5hLE0SJyDLBejArUCJkNJ1Spj4Z5oCY86fJARO_ugkvGvvMoYuMJpWGEpb34bXm3S2GFQ6dmTHJEmve-1zDaHnS91sL910wUHojwLshhghyngLyWZI3Fn4w2_zzZYyzOyYvTbpTXDMqtV2IK-mLdWRy6OE2gAWwpIBI19bIIl-d1JexUmtETa19iEUB4olEVEbxH4Mh0watQUtTY7BtbCv46tESR03ry7Dy5uoA05PeNsVihfKToqyn4N4DIK3uyPfuSS1VF565q0z0lgYpTd_oKZbTZ6kZNbgwj0D-Q0iEr-qkL9UA0pLETJXIJfsP_yJ5kseogcJbDGRxC6hJhZmn4Nb_-1XD5feYz7kgqEVSjuV_e0wZNdvyEY3fvO-o8mmRVeTUJVRjWhx7Yk2p537gpWyj1w..',1345645136,36000),('r315uhceee2uaau15b2icvp4r5','',1383651118,36000),('r3gfms17dd224tvd1gdkfcouv0','WPPPlMOgK6QzpD6BpioD9jbr0ULBi3APWmE4gRDJEFhhYs5dfuDZxKqc4XFBQsDsVcmdO6iFLQU3XDvwx0fWiazw5escLQSJHOZ3TudropRxd7-aWCkGBMikwwVHYNatiR3nm4_Aa2gZ3IAlXcwPHesPWuxn3qJlmIvCskd5cctexW7t0TlRdJM3KltiXcGs2ZZ1EAd976dp8pYbUF8lC_H75DD6MDMBJP3oNk5ycklfWk3XAgcH-bgPIK8s_RJijU9mjB3UCqQO_5mFcBGRVIaAIyW8KZd08jHy4hCOxLaAW6T1XHmnu3koR3zW9PpUNAOFI62GIzQygpf7OCHJ1IX_mIPuaI03glQuVruP8ttfs3JGbblC2FG20aQ2u5PEITIpZwwKvqB9DXz_ZOV88ysiAz7FCMvN9LF_DpS4AtnNwpEZn5RjIrVt8JUbnTAPCdcI44HUyX8tFva2nHapRQ121dHFjh_tDevsODtStZW0fX0Pl63tH9AehytENBvdwcTj3gYqZqzS9YcEme1ct5dQPRm0icmZZBpDIXQmc_4gf8Q3Ts88zSj8bU6EGTk0Cd-D-erJBoXtYp3OTtoRBhUVdw49fGsPTFMbEd35isCSrjCYUtXvRj622wLR3N58A4OuENiC9gJ-ZaG-jVE1wFImh4u3N0ZW96UQex1VVdQt0nUt8XMIDFI0YbIEI8F8LED_MFqO_AQrtK7Xwp-FHQ..',1355214162,36000),('r5uj4th390f2c1l9p16j6usbg5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"077f50f5ececcb2122e5a7a97e0c42c3\";}',1382442545,36000),('ranighkr720ebqu5ql7lu0s2g5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"4671e0b535102af015075776a2d71471\";}',1380027844,36000),('rb8uhm03jtv7tuq3r8v6f3tvq6','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"6df1dbe075016ac3abeb38088646f939\";}',1383686249,36000),('rcf5n1o57c2bop0nssjm95hvh4','',1383211055,36000),('relqf2f2jerglvlc9uqbj1euq0','FXff7typw3gtjisvJqL6B7VAl2gewJNEUGqElpbEW0b6xHHbvk4Oquqs-Rr4W0nOhNkLbyUdra0fdxQSbqrpB_X1tSYpoEhdW0q5aIYXUlbOnPOavMMf2MRI9Hqnh93XXZvuta_G647sozwGqm43AAgwVgcDQlBskQX3yBmLlVriLNo5EqgLNTkAb_gsrXedKRd_hMmh5VRKza4gGNDujTtYQMAXbLJj02tTIbFUKFovV0dwZwxIjd2uNqsjW2KLAsWvK7FQFc8fqo7gHaSpeKDbfKTbaZbvQ0XgAr8ebmJeakrA1-ZI1NTdSYgv5Ooy4WqwXU1VsgFUX1T8s91FJ1omWI8xrwcn9qOheUsFNfe4mYG4aBQH6j6R1oOYeiX5jpIroCJhE02kIqguGODIbJ4HdEWCAzDLZalieHOm0PqG3nf1Y0BLhSetCP2cqp9JBBERDWTp6rz7eKGXZUJbd8_Xsl-NhotCjDvnbIipVFN3q0FnvYnFuaJOmnR9ARTYywcLT6bClAr3PUBF-VdGr927sUKhzZuVNGyhGJSTzQyXlRt9BvuuYyNI7QiOP1uQm100329ah5NGX1TFyN26c0e5qDaM_rzs_Evg1bhpJ2wO4BiLNU1HPP3IjTQp-IlWMgLRx0gtbYOfcxU_6RiOmv-ttSYIVOQe746Kv8AJ_n2LVAj2S2Gcac6p1LCqvUcqScPqtdl5RjkLHG30dNGyJQ..',1370873070,36000),('rgadccdo9ive96dk9cfrdquph6','G_6zqTf4e_PFLGC8R7OLueQ_tNLon5RwwYhsUg6stVOYZiP690ymAxj-ncvEOikF1oAJ1ndeltf06qfDc5K2Kxkpi_oiM643mifzLm-0e_tF9_5Gdf7wqR6ZH3r4s8IgRxie1TDNgAsLze8tJY7_aTBTXp_yOaIEGbpsrbQSASXsQG-daTcdgc8bWkat2pxmWJMnMoUT2lCYqDr6MYT2B9OMdqkLaxoua9ymeVcGn8TOQPhqQ3cSTjGTQE2rT1EKcKwiGGksAuGkxaAxcdbukgtrVZ78BvqGwISWe_CwCNgiWkKbD4ySLqwSpW85SKZj2-d8bE4xaN9sgseE41nIeBpM5AYEJ7A00-2WRjQkWIeHvwyPZXGsFpznMR1712EUStEGsdGCLU_MH3U3khhkwHGVImobjIJsDhAoqJkyZ1BuG6zBZizbl0oGXyKP7WCResLAjt8vuzvP9TbDou6jvCyNGL8vdVXiEOhYUKyt-3J0nfIV4gYcJiIj5NpNtlVUwS5ivB664iN2gxQ72K_AK3x4l3S798-LS31yXH1ERqNpyJ20bK1sHlPO0Ul10BS1WgujZXHD_pzDqCd0B4JdTx9OKURhTzjrsUq3t20IUjC34McDU3ea-Swnp-XEoT_Hjmlwmi68X2JcQg5HBvG8SDZLIF3yojfuVorZIsTBu4hoZwKysDC6Drt8z1ToN2mFl6nGL-QCcX_bDG0ngJ_YrA..',1376844944,36000),('rhhkap3qmktld1rp8gaefebe54','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"654477a677c7baa7dfd7a9d240b6ca8b\";}',1383162538,36000),('rl57ldts7g7okst8ph2cjj99b7','f6yfi7fQmyNfJR8Brgfbz6VSDIRAaS9WYnFf-Zzxk2xEJYuHvnNaI8IDvWWoYtwA9kyHKGW8iinxyblhxHNKaISF-cmifmggONiAf8wEY8uz4Emgle7u-ZWCp6F96nsrwRS1g3ygBctCixhtDQ4IFcwB2Spj6WqGLTmF4H9kp28lybdHuUFotllP3UkGEvbOgytWJk6-D-Zus8Hf03T8euBTiV0wTecIt_Y9bHmjty2fkMnWlMYO41H-yV7nPSQl9yJcZ4qAfXyT8C0w_vEVftoK64R3KlLXBwWvlOiRf1chr2GAPVMd0se0lHj5mxKjfVvz9AojAR1zQzSaEr3URbzhmojyToUeqJoQklO4m5mElOX9F3YKGokdBPYnAFQBdCx4MFdY71vPn4v-wbIocr8lQESuCq61IWumZWLK3i_8ggu3g3jkqdh1-5uvIEFdrZg_n7C-O3jON0lzRnE1cGBA3NPOynd34ycazzcpUVw0LAJS1UVtlrDYSoMUD1yOn7y8ag73R_gpLEOnsVPdIT6c7eH9X6MMgQLxs4_zBgXMojHNzQuFJp9TYwNAcouE9b7CTG3GTRXNucEM5J2nfRBzz3vz_-R2WKB_Mu0PnrCEZyaiFBKRKNk8diJUnZZ5L7OOUIzETJt7ZtvkRwnLsly_rx7rD0s1MXKNcm50f3bJNruOO-ZCaPUPuSXX0EXN0W6LmAMxOhDPptOqBAWSaA..',1351019197,36000),('rsh48bkkjfql1k457al7bmn6o7','7VmmTqKLs_Jj1QIDwkIZqngmAHBM-SIVd91VbBcpOUNiMWi2ArQpHC0o3m7XyzsbxKi1MlyRb9klBSpUGwfHFL-ODE7DlWhWqjjtsrBRnBmNCScPsURKfr3Z9uAw7WASb69EKCdnZSW4jKlCtp75DLz7wlAItdbx0f31aNHhrQlwhzwc7JrO85yF_IqCL1-T3kOa5k3OSiL9EO2iNhqRXcwgzYCsYdXsd0Btj0jTS7HeGUEg9nHDp116hVCN9pSp7BBFVDbLXmdDBmVSraGzOUO8zDpCLzDw0z7TghJjQp-g1Wfgm1uXjdhHhqm7DSOAbvgKti6ewBfLCM613I8ta5JqsyFaSOEju1NZCkIy1kqie_Z68cClVQ1jmDSFVDUdMneLRSzdpxiBRO-_-9WE-cE3FXZMOq4lJaSqvKu8SlSMQEx38oe6mF2RlamG6ES1R0GQcbm5fGyMHCR43FEUGbgtqMdMWgwKz7UUeqnTkjLVtmxMndUN966wynHP0DOUCMLj0MLJ-TGQSERhLQWe_oZXpJkV_ag3seeFy7PEH9SQfRkqO6iojt7PSqBerX5HBE309tUkG2WIYOtSNkiqXROORu0V9sp2Laip7H_0PtkUC1XJ5RKjSw8Skb5cbsrau6RO9_feoTl-GMhc2-fXxuLwYxIi8Id64uHMLCbNpv9AWjPJKBYs9fWeE6mjcp0PJIj5-NJH5rH-FyRsWdJ3qA..',1359975752,36000),('rtb8hjksscrafdv5m0q6dp3ms1','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"a723e0eca8f45cec3bdaf8c945cabe0e\";}',1382360434,36000),('s8p33guvggl654rfirb2j900k2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"01d8e37720fa210585c652572655a6ae\";}',1383176124,36000),('sabidit9isi8os275afcfh3sd7','7bHEgEFHbozdwAcXwNqhHmHZ62UhB6kzvVYtJoRkL667tJmPFFBUdNsvD0duopfMkMUE5SCkehWWR0J48OMNNEIJ3-FDbGEZAsnfWIlggdBH3QkAF9aveEBJr9I5ROzCrgXmEUeoGBcYIY9DcuJCcmpYvXO7Zgt5u79E4G9-QfSBPTNeCLMG5B5hexiImYw-6yh3UDhq8uY0-YeOAjDW9gcZkVd8mC6Z3YZk4zZXQ4cBaOuhY8G-lYoU4ZsZ_NDX87BAqlhlwE8-0S0FYULNrtbeg9ZyZvaP8xhXREGdwOhO6IMd4epA8kzCkAHepH5R50WBKj8w9DKjF1z8iZmVk6yrZWem3ubjdoJvzU33kUp5wIhboMJv2urdV0zTjaJDm86Uu5lppi1FDfySUoa6cKhKT2m8aWCdxrJVyr3oUtCY395lGR_eW66Ksn688Z8KhJKPtJZ7DFlGzajBSEDM4bPiROsAplsKgiZ7fEGO2ZD7dgHU3DrmFrTX4UIQE9blIV_pezoCtzq1vk1h0imd_yayT_mSN0Cgu8_V36jpSrcHOyFF5KXp84oUaBjjXaw0GZlD5g5mwZu3_gLbr_npVrYQ9VYnYCM06aQt0_wdw22t34oy4npn452UeladZfxAm4HYM-Cys34tg7dmE6Fbv5YfZyBDY3ek7RbuCRdITP4LdNsEPECRiluiLOP3C5I1UAZMr3Cx42kopgIxb9Xspw..',1374761591,36000),('sfvpjq97lsnk7c882hbegc37f4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"eac7a625e6b2b6f8c780bf4c1745de6f\";}',1382629431,36000),('sg2ugnffkjra0dc4qkthvr0562','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:9:\"alaaduksi\";s:8:\"password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:9:\"full_name\";s:4:\"Alaa\";s:5:\"email\";s:21:\"aduksi@barmajeyat.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";s:19:\"2012-07-19 12:43:03\";s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"2\";s:9:\"role_name\";s:9:\"Employees\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"dd64e463ddfbdb6623f924b79ebc9226\";}',1386688813,36000),('sqd5m7ql6cmuiimkvr4fr96al3','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"58c9103ac31f32932d5add3b6d356847\";}',1379852191,36000),('svi8pqu1qqbeod1agr894nh4o6','i1W2jYWxuZ4r0NMFmfkY5h2edmxfo5bMfpUz_Cw91gDP5MUqtlFJhdHl-b8pprRznPhL6TJjSN1YyfXQOwg5m2WUOAYL_fXKQfe_wQH9nugPZyqw5OYCZLaDYxMi-95UqPjhMovRQ67A7Q6chF6uzDiQxFTy9xymaXvoqIxOFj02pReo5H6iva46vHqq9h2FrKXfsYrepZhCV1F37RPxuYblPxfBQzIeilGvid7KYBVmhpmcCNQYcYHzkXuRFLtVTvWBav5pPOOXzRnoPYpJsOQc4VSahzfWcLXjN2pR4zk5FaA7tXfKabsyLOl5GvHXj-wM3aJ1tU3mHeJrwpOuPP4P6GOXUHdbBOIkJqupIqTkMKa3cQa7J9KNjPdXffpmy0-wwVWBVASdUxhR4cmt55P2rN5g_gtkiqtbZO1VJ_QSp_z3zacimGp8CROnI80nbpJN75u4J5NcBqkwOgW3sIpCBWginAMOWtrGvKYff6V0ZskSwuLFEQEafu2SjGLwDVuGqGE7Cy7ipO0olSDCOFSiX5f5WH1z0ymcc97VaUobjlcGtEp9qEFO4vCztUtDNcvYRF5LjbMl1dSYnLUDUvJ0ta7QuWcuMorZ7lXXbcXf4zJKMH5-h1BLiXNAqFxcVlbnSARBhWtgmT9ZHcv_84DIcY9Z-xWyn5yLKm_Wqbwye6D8lHEIQKUWVDO3b-Ah__N7TIwZwMw2_Twqgu36aw..',1356963927,36000),('t2rte16dnqqnfaighoitv7uf44','6szRQ7DMFAIAbBKS183-onSwOQWNQvvKiF0PfK8U2C6V6mi5UhgORnB3AC6drqmIe1lj85mcaj5Rbhu2Hgexv5NG3oGQZXfYADDH3VgCgOspvhdljaN-QSDM_Z3uLPXakOLaSUpWZBRyeDDxvsw2_5yh87vma7_cMaqH7U7TJ57N10_npzhj7v6A0S7JuAVHE9imSijm091blnE9EapCkHumhS6GfPW6RAaZtKnaodBRCju_wzCloetFoUhEzNq7gSH2WCvKs-WTf381_px7Sv5qBYJqSJ0jDGNOw7IRkYfeZpNceEsy9R3CUg1JSrSxnvBHwkzbDtoZWvpbcB9aK13EEq68WxcN3U5Y57_u_aV6pPjQPeg7_JJE_2MQmGw7gfVeknZft_rclfHB_KF6a7a1Cflo5ha-Rqpc9EPn90EGrmpbn939Rg7baCtVG0oOx36pduK9Mllto3LX1rSSjLieg_TkORjrV_H7TbhUDAMD_y3Qzw3aWKgJ4KAODICPEi0BAQOPzvcAStwsKi_aJZBpa6WoVC2cxm8vaTriZ950nzxRrjTGMuhRPninKRHmvV63W17XvRFuBzOQVAKJW2fb2Ebi3sEJadOSQL1rgR9wTaMDhwDo0lGM8tx37PqwHCsqAktTAi1BbphRtv9v-wPml_-F6vPeWlprXrRS60EoJHZLGkJ41mI6Ijz9vbgnUbQajKgaeiLESDgZ6O-cxQ..',1377353312,36000),('t3ioirti5ebgga5g0nk7veihd0','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"80481216b5ca1fe8237520cfebb15d61\";}',1385994130,36000),('t87sjk4b3qquqfg4uako6ha2l5','',1378190849,36000),('taom1fr1q208n4ver94f4f79s6','LH7J0YKMqVNxnELrMjJKtQ46prhw7HelQIFT5M9PWiaE73bp6xHoj_AtT-7o_fBxT7jlfZ7dO_A2OqGfVZ4EMSl1yVmXkVBkrKP-TrBBZOzo4GvbPLx8sPEIKzvQpnsVXGbRbF8_X8S4XXdzFmL8nGtmvnzxCaVdTXDcZFqfi2I7qSaiMk5UpJYAtDTI8AJQNsfi3hbUlLWhawioMShXoa_PqfQDXUWEp4uvNTe5drZ8YwHQJB4H49L25dtJUoymuY0yJb516oJKYzNqA6b0A2YZT55WTuXQGUYm869Dnj4wYI1sBiQZe3XIl6lf9ZMGO5CByz6jno937L0ErstS2Gw_QXB_Q1xsjyvfLajttboUxsFD8IuEBGYpkxaCcdCPorX81a6_yTXtIsYrCyc0RiqNCUcf5GWr94kBc3g5cYJDSw5xKd9XJNjBWN6VQgUsR7-i_0XtoFDVM8c12K7v935VERAtTqxfVOt5M6Qm44IT9dVQ7Dc75t3CpXprIc2mAlBQIM1wU9pA9WPwpdMqIhn1Te50VJ6L3VcnP2_YYJyFz-tZ6zBcKcBA9BetS1bqBRX16mymGCBJgbP76Zm9v1o_eq74rFezn1pM7JgVPWeuCw1tdE3VYaU_s6g2AKdvDh6v3wy26mwF9bE--BOZQoHLiXmU1hmtG3yNuUBRRjK88Qkzms5i4JmpZyPM_mD08SpsDo1bKQrWxbIwjj9q2g..',1365321279,36000),('tkkbl66jaalogqpt3baea4gdl0','',1380730199,36000),('trmj2l6u2tj9ulko70auuv8p27','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"08216fdb60fdb332405f8efb3e9bf8dc\";}',1385831549,36000),('u40ejdsp3kngtsnko3o5ik3os5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"7e6a672caad1a110097c57c1b9786009\";}',1383642937,36000),('uk0na3boivd98a3robeodclaq1','cfbG-sQNtTXU1jf0LNDeG1ohFJb2erlfg4Ya6UYg_gtIgl__qUl2SoeDgn7uy-8dlidPbBN-OOhxbSsX6Uk8YDTU7HIgEK1dAcDgY6oixwGwxiMU3P2oXmgG7SIy-dZKcHBqtylZb6SfvjWxBhXaCYBxg1euu4GTehIxyiBLilfsaXwoDs4BN523aDSMJBX3Jbphb_nW1aEOr_mK3n2bvBhdADA3jIL3jog_KAPqubPXygdWTXF13iToyUGtZMcWyLr7uWpzoq6fHTGA0mLdXkhXeqWstXwiDGhahNO85Sn50RDor_wP74C05rAzaomLh0svg9ADwdGjzNyxwTp_h4Zac-JtRDneqxpGiRe8_9FA4MyB6Fazw2z5_J0Fe2fn75XyQ4NDBWnMRCorh1WEvQ_GTWSkHu2ri6-EmrGGiffFuqw7wL6WKBaENZYl5XjwhMV6h9nww5fNykvnmdjPUzQXtrX8Ve3rcrUx-n-Z9tLA9XUutusNcvr734Ii3hhfbSXZhtD04HRzX7bYxKrtgRd4dh5VBJc8Y0MgO4LIu1dt_4gThOHbUL_c-maJPtQfjw47H9er8xQ_rzNiLoJ1idZhE_zVBQjojUeZl2ndI2vJZUyy-2v4_tMi4nLdj0afbqTEjo6x5BWC9p9i5PvF65xM3Q5P_9KGgxmSmwgfCHsNEIns2AQSrGCyk3lyf89yikWyMDW2a-kbpIKT6fLsJQ..',1345039719,36000),('un4hisllc8eo7u1jj8itdrud26','notVWiTrsT_HX6WaAJcsNSeSnUci6FkTncHYts_M-D0GbrVfAkqCx04nTLGgx8QA1q5k-KYdvXxL0mn64pwINdoxO7QmIZYDwga6DiUFSkBDCd1rhcZ_iDF0ObwGCxh79NYh4-mFqeZdDQqQXJmKivj5RKXBGs9Au2aTMmvgK3nlha_EDD7z0fav04Vqx3RT7ni3xHrnD-geeJRzJOLynvknCdFmT8cKCPvfSVzZmt-xJzAWl58-ye6CjZbOeqexqfFIMijQDI2f4-ob5V_0GEf7FN9OCBUPMXXGsVex0CpTyWlFBha9-sI-mvrjexAd_7pPpyDQO43sdTVd6yfwisAxPF7-4PB0m4cEmvBTtVRgKzdFKYfvz_oACXqAPZ4BIo-sTilHHnJeLlV0DW4hPLbZvLbzG2a98jijBV3Mf42bxZXpDoNVdze7UTHkF06RvsJiIBnB-YX-Vzbk4jOjpmjg_QhYEz5C9LPFOld7TeUfbUOhSjT3XPPWQQ6WGa1AYd1vQ4FVaX1y2So_TZ55i5yL8PigPwzHbDoIh2BMTMCnIcUAU3w3yHlJYftDRexM66sxovzhjFB7uCc97QhdW4Tn-vtsZzGL-JHSFMN392GCUhXio54yIvdJrqlah8RbBLoj9bDQXlAtKn0f_0XxIMTA9Wik9NT357zgoJjg559Zp02FH2K09MwbLa1p1RWhbNwlMayeYk8tXD2JkvVWBg..',1369918928,36000),('v2lsn38opg4fakob7s46crb113','YtkUHgXdVnxi5iVC74bBoB0fkuxwau-hdWy3gb2vr4zGXB8dTr1pRHg-YPsVMH6Zlppmwdvg0jaM4AOOQF6jFum-x_Jh6WtaTcZwWFI0P8fkI6cijobEjBUd8Ywg3m-gFnHnGfjwLV1TUlm6hwaWuKV2cOQJvXD9bEqmwFnqsW8rmTzA5G-6-T-APf1e98MMi6Cy0xEHJi53ifvba22awqTbWz6L1I50UC6Q8saV3jfAaJ_MnNfLyKoUmeN9EG98FmomVmva5-iT9j8ppsbgV5Z3548LPolSf4Te55uUEWfMK_fa3D7qf4D8L3PWLrIqTyS-UJL5O2AI-u8_49XUkDRrSypijN6bcOo9kxivUP_6zPGIUA_nIYZk8otXXn-Pl_NEWYTqAR1MIqYDD7UaSgrqIB9o8i5H4dVjeRVFmWWsMTaa___3WDm37cNTepA1TqCvUk2dYczag0F12hXYBJl6IKadcX6vZ1pfKSy8HP0JVlgM_J4RHFS14fphZM4xQc-zUVw5NCKdtkf_sOxPPG7oky-nsBM63pat-3jVPHGjkjdMSH2YEJxRfD88029rVBxOUIR9Z5JN-QqwzP7iXdXQ-EZJuNZ0cUI4zsS5epTwGQN9R1K4oxMISkVxZ7YS5CV29PgO2ZzcR77GhXBhtIWp6pQ1vFDd7VLYOHACXTqAIPyrgAIAPAcPVyDvNmsdvkxXPd6voFQirv5r305FuA..',1376326258,36000),('v8srvb0kqc8ofladg7mu84nr04','bNSVuXzCXJ8r3vxxQDwbZdWNRXIO0NsA0oETlR9vpP-AOfkMQ-QmNo2FvTTfoFO2RCI8UgP8D70O_2ZiW8mWC6TRLZXVHWpm3o-bJg7QjEWRbooCl1MTgXroStn8MzNJ4yMAh-jNCgQutZO7_LaLIrvXRd7baLaflaVZlR8Vt-1cy7uuIRbPm8g0BBIQVyNPAsh0zULzhd3cy5I6OuKXZDqZXriEnHfLlBiWSDGZbQ2ptUAveuRfUFy7I6C2Vsq3ERp5sREaC3I4urRpj6zYSBmRW0X3PbH5GKD-7ZEDYjimdaoZp_Y1oadOh7-DNICu9J-Umb-AyVyjgW8F2gX6XdyI-rwMMjh04Ph7-3g9Fo5818NoarlYtmw-_yl_8u5acBq3sQx-lJp5DfqmwgSc1PLL6gLPN8qz3trS3GmsrgnD7NsjIDrG9VJhY5MNxb-08F1m3WCd5eL1eaj4uoFx89H8FrVMfYFxNFyP5vRXO9o1hSgz6a8qH8Cx2WZc8kZZ2oGDZnOlfryInW2KKZMdebh3nc4uK1pDPxTIsUnlJ1DA-_Tqz_X5y03WyuidWBtbYh4K6oVQliSOAtRShR460uOdrveN50hgUuvccKtf1rg_eeQnp3I5ncj4X9LwiCuafsxEMZY_jqm8AwfWkRYDftrwauAN5f9XClSUNkY2Kc-nH75RXX2zvq2Av13-C5wDOxIKd8vYRqYwHJ4HDzjuMw..',1364895487,36000),('vaceuhiddqf56lf6kolo97ruo4','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c1508d073bc2285b8e32734f975713c0\";}',1382279232,36000),('vbf79m28ndng0kc1sqlgajp3s6','',1378042186,36000),('vcmpqum15nlglg0m53b53dg3g6','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"00b2955d063c440142013201782fc95e\";}',1378217079,36000),('vsgfnu47qu73mth2k71ek80no5','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"c775003cdb2d1789b9d6aa53472875e9\";}',1386506689,36000),('vv0vme2ns65lmh9f86qcd91030','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"686ca65271fa35d910cc63ccd2685703\";}',1381234442,36000),('vv3ujvqkk6tpohc9pk7hb5odf2','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"99a3aadf933f17516d5e6a98639fefd2\";}',1382439535,36000);
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
INSERT INTO `core_translation` VALUES (1,13,'Client_Models_Client',13,'en',NULL),(2,2,'Client_Models_Client',2,'en',NULL),(3,3,'Client_Models_Client',3,'en',NULL),(4,4,'Client_Models_Client',4,'en',NULL),(5,5,'Client_Models_Client',5,'en',NULL),(6,6,'Client_Models_Client',6,'en',NULL),(7,7,'Client_Models_Client',7,'en',NULL),(8,8,'Client_Models_Client',8,'en',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,1,'admin','6152afbe654c37ad257492ea71cde69a','Administrator','alaa_bmw11@hotmail.com',1,NULL,NULL,0),(2,2,'alaaduksi','e10adc3949ba59abbe56e057f20f883e','Alaa','aduksi@barmajeyat.com',1,'2012-07-19 12:43:03',NULL,0),(3,2,'rasha','c6ccf05170aaa0f8e01bf12d3103aec8','Rasha','rasha@barmajeyat.com',0,'2012-08-12 16:37:38',NULL,0),(4,1,'abed12','e10adc3949ba59abbe56e057f20f883e','Abed','abed@barmajeyat.com',1,'2013-03-11 12:22:57',NULL,0);
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correspondent_bank_ip`
--

DROP TABLE IF EXISTS `correspondent_bank_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correspondent_bank_ip` (
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correspondent_bank_ip`
--

LOCK TABLES `correspondent_bank_ip` WRITE;
/*!40000 ALTER TABLE `correspondent_bank_ip` DISABLE KEYS */;
INSERT INTO `correspondent_bank_ip` VALUES ('192.168.15.141');
/*!40000 ALTER TABLE `correspondent_bank_ip` ENABLE KEYS */;
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
INSERT INTO `currency` VALUES (2,'Afghanistan','AFN',971,NULL,NULL,'1','0',0,0),(3,'Afghanistan','AFA',4,NULL,NULL,'1','0',0,0),(4,'Albania','ALK',8,NULL,NULL,'1','0',0,0),(5,'Albania','ALL',8,NULL,NULL,'1','0',0,0),(6,'Algeria','DZD',12,NULL,NULL,'1','0',0,0),(7,'American Samoa','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(8,'Andorra','ADF',20,NULL,NULL,'1','0',0,0),(9,'Andorra','ADP',20,NULL,NULL,'1','0',0,0),(10,'Andorra','EUR',978,NULL,NULL,'1','0',0,0),(11,'Angola','AOR',982,NULL,NULL,'1','0',0,0),(12,'Angola','AON',24,NULL,NULL,'1','0',0,0),(13,'Angola','AOA',973,NULL,NULL,'1','0',0,0),(14,'Anguilla','XCD',951,NULL,NULL,'1','0',0,0),(15,'Antigua and Barbuda','XCD',951,NULL,NULL,'1','0',0,0),(16,'Argentina','ARA',32,NULL,NULL,'1','0',0,0),(17,'Argentina','ARS',32,NULL,NULL,'1','0',0,0),(18,'Argentina','ARL',32,NULL,NULL,'1','0',0,0),(19,'Argentina','ARM',32,NULL,NULL,'1','0',0,0),(20,'Argentina','ARP',32,NULL,NULL,'1','0',0,0),(21,'Armenia','AMD',51,NULL,NULL,'1','0',0,0),(22,'Aruba','AWG',533,NULL,NULL,'1','0',0,0),(23,'Australia','AUD',36,NULL,NULL,'1','0',0,0),(24,'Austria','ATS',40,NULL,NULL,'1','0',0,0),(25,'Austria','EUR',978,NULL,NULL,'1','0',0,0),(26,'Azerbaijan','AZM',31,NULL,NULL,'1','0',0,0),(27,'Azerbaijan','AZN',944,NULL,NULL,'1','0',0,0),(28,'Bahamas','BSD',44,NULL,NULL,'1','0',0,0),(29,'Bahrain','BHD',48,NULL,NULL,'1','0',0,0),(30,'Bangladesh','BDT',50,NULL,NULL,'1','0',0,0),(31,'Barbados','BBD',52,NULL,NULL,'1','0',0,0),(32,'Belarus','BYR',974,NULL,NULL,'1','0',0,0),(33,'Belgium','BEC',993,NULL,NULL,'1','0',0,0),(34,'Belgium','BEF',56,NULL,NULL,'1','0',0,0),(35,'Belgium','BEL',992,NULL,NULL,'1','0',0,0),(36,'Belgium','EUR',978,NULL,NULL,'1','0',0,0),(37,'Belize','BZD',84,NULL,NULL,'1','0',0,0),(38,'Benin','XOF',952,NULL,NULL,'1','0',0,0),(39,'Bermuda','BMD',60,NULL,NULL,'1','0',0,0),(40,'Bhutan','INR',356,NULL,NULL,'1','0',0,0),(41,'Bhutan','BTN',64,NULL,NULL,'1','0',0,0),(42,'Bolivia, Plurinational State Of','BOP',68,NULL,NULL,'1','0',0,0),(43,'Bolivia, Plurinational State Of','BOB',68,NULL,NULL,'1','0',0,0),(44,'Bolivia, Plurinational State Of','BOV',984,NULL,NULL,'1','0',0,0),(45,'Bonaire, Sint Eustatius and Saba','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(46,'Bosnia and Herzegovina','BAM',977,NULL,NULL,'1','0',0,0),(47,'Botswana','BWP',72,NULL,NULL,'1','0',0,0),(48,'Bouvet Island','NOK',578,NULL,NULL,'1','0',0,0),(49,'Brazil','BRC',986,NULL,NULL,'1','0',0,0),(50,'Brazil','BRB',986,NULL,NULL,'1','0',0,0),(51,'Brazil','BRL',986,NULL,NULL,'1','0',0,0),(52,'British Indian Ocean Territory','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(53,'Brunei Darussalam','BND',96,NULL,NULL,'1','0',0,0),(54,'Bulgaria','BGN',975,NULL,NULL,'1','0',0,0),(55,'Bulgaria','BGJ',100,NULL,NULL,'1','0',0,0),(56,'Bulgaria','BGK',100,NULL,NULL,'1','0',0,0),(57,'Bulgaria','BGL',100,NULL,NULL,'1','0',0,0),(58,'Burkina Faso','XOF',952,NULL,NULL,'1','0',0,0),(59,'Burundi','BIF',108,NULL,NULL,'1','0',0,0),(60,'Cambodia','KHR',116,NULL,NULL,'1','0',0,0),(61,'Cameroon','XAF',950,NULL,NULL,'1','0',0,0),(62,'Canada','CAD',124,NULL,NULL,'1','0',0,0),(63,'Cape Verde','CVE',132,NULL,NULL,'1','0',0,0),(64,'Cayman Islands','KYD',136,NULL,NULL,'1','0',0,0),(65,'Central African Republic','XAF',950,NULL,NULL,'1','0',0,0),(66,'Chad','XAF',950,NULL,NULL,'1','0',0,0),(67,'Chile','CLP',152,NULL,NULL,'1','0',0,0),(68,'Chile','CLF',990,NULL,NULL,'1','0',0,0),(69,'China','CNX',156,NULL,NULL,'1','0',0,0),(70,'China','CNY',156,NULL,NULL,'1','0',0,0),(71,'Christmas Island','AUD',36,NULL,NULL,'1','0',0,0),(72,'Cocos (Keeling) Islands','AUD',36,NULL,NULL,'1','0',0,0),(73,'Colombia','COP',170,NULL,NULL,'1','0',0,0),(74,'Colombia','COU',970,NULL,NULL,'1','0',0,0),(75,'Comoros','KMF',174,NULL,NULL,'1','0',0,0),(76,'Congo','XAF',950,NULL,NULL,'1','0',0,0),(77,'Congo, The Democratic Republic Of The','CDF',976,NULL,NULL,'1','0',0,0),(78,'Cook Islands','NZD',554,NULL,NULL,'1','0',0,0),(79,'Costa Rica','CRC',188,NULL,NULL,'1','0',0,0),(80,'Croatia','HRK',191,NULL,NULL,'1','0',0,0),(81,'Cuba','CUP',192,NULL,NULL,'1','0',0,0),(82,'Cuba','CUC',931,NULL,NULL,'1','0',0,0),(83,'Cura?ao','ANG',532,NULL,NULL,'1','0',0,0),(84,'Cyprus','CYP',196,NULL,NULL,'1','0',0,0),(85,'Cyprus','EUR',978,NULL,NULL,'1','0',0,0),(86,'Czech Republic','CZK',203,NULL,NULL,'1','0',0,0),(87,'Czechoslovak Socialist Republic','CSK',200,NULL,NULL,'1','0',0,0),(88,'Czechoslovak Socialist Republic','CSJ',200,NULL,NULL,'1','0',0,0),(89,'C?te D\'Ivoire','XOF',952,NULL,NULL,'1','0',0,0),(90,'Denmark','DKK',208,NULL,NULL,'1','0',0,0),(91,'Djibouti','DJF',262,NULL,NULL,'1','0',0,0),(92,'Dominica','XCD',951,NULL,NULL,'1','0',0,0),(93,'Dominican Republic','DOP',214,NULL,NULL,'1','0',0,0),(94,'Ecuador','ECS',218,NULL,NULL,'1','0',0,0),(95,'Ecuador','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(96,'Egypt','EGP',818,NULL,NULL,'1','0',0,0),(97,'El Salvador','SVC',222,NULL,NULL,'1','0',0,0),(98,'El Salvador','SVC',316,NULL,NULL,'1','0',0,0),(99,'El Salvador','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(100,'Equatorial Guinea','XAF',950,NULL,NULL,'1','0',0,0),(101,'Equatorial Guinea','EQE',950,NULL,NULL,'1','0',0,0),(102,'Eritrea','ERN',232,NULL,NULL,'1','0',0,0),(103,'Estonia','EUR',978,NULL,NULL,'1','0',0,0),(104,'Estonia','EEK',233,NULL,NULL,'1','0',0,0),(105,'Ethiopia','ETB',230,NULL,NULL,'1','0',0,0),(106,'Falkland Islands (Malvinas)','FKP',238,NULL,NULL,'1','0',0,0),(107,'Faroe Islands','DKK',208,NULL,NULL,'1','0',0,0),(108,'Fiji','FJD',242,NULL,NULL,'1','0',0,0),(109,'Finland','EUR',978,NULL,NULL,'1','0',0,0),(110,'Finland','FIM',246,NULL,NULL,'1','0',0,0),(111,'France','EUR',978,NULL,NULL,'1','0',0,0),(112,'France','FRF',250,NULL,NULL,'1','0',0,0),(113,'France','XFO',250,NULL,NULL,'1','0',0,0),(114,'French Guiana','EUR',978,NULL,NULL,'1','0',0,0),(115,'French Polynesia','XPF',953,NULL,NULL,'1','0',0,0),(116,'French Southern Territories','EUR',978,NULL,NULL,'1','0',0,0),(117,'Gabon','XAF',950,NULL,NULL,'1','0',0,0),(118,'Gambia','GMD',270,NULL,NULL,'1','0',0,0),(119,'Georgia','GEL',981,NULL,NULL,'1','0',0,0),(120,'German Democratic Republic','DDM',278,NULL,NULL,'1','0',0,0),(121,'Germany','DEM',276,NULL,NULL,'1','0',0,0),(122,'Germany','EUR',978,NULL,NULL,'1','0',0,0),(123,'Ghana','GHS',936,NULL,NULL,'1','0',0,0),(124,'Ghana','GHC',936,NULL,NULL,'1','0',0,0),(125,'Gibraltar','GIP',292,NULL,NULL,'1','0',0,0),(126,'Greece','EUR',978,NULL,NULL,'1','0',0,0),(127,'Greece','GRD',300,NULL,NULL,'1','0',0,0),(128,'Greenland','DKK',208,NULL,NULL,'1','0',0,0),(129,'Grenada','XCD',951,NULL,NULL,'1','0',0,0),(130,'Guadeloupe','EUR',978,NULL,NULL,'1','0',0,0),(131,'Guam','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(132,'Guatemala','GTQ',320,NULL,NULL,'1','0',0,0),(133,'Guernsey','GBP',826,NULL,NULL,'1','0',0,0),(134,'Guinea','GNF',324,NULL,NULL,'1','0',0,0),(135,'Guinea','GNE',324,NULL,NULL,'1','0',0,0),(136,'Guinea-Bissau','XOF',952,NULL,NULL,'1','0',0,0),(137,'Guinea-Bissau','GWP',624,NULL,NULL,'1','0',0,0),(138,'Guyana','GYD',328,NULL,NULL,'1','0',0,0),(139,'Haiti','HTG',332,NULL,NULL,'1','0',0,0),(140,'Haiti','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(141,'Heard Island and McDonald Islands','AUD',36,NULL,NULL,'1','0',0,0),(142,'Holy See (Vatican City State)','EUR',978,NULL,NULL,'1','0',0,0),(143,'Honduras','HNL',340,NULL,NULL,'1','0',0,0),(144,'Hong Kong','HKD',344,NULL,NULL,'1','0',0,0),(145,'Hungary','HUF',348,NULL,NULL,'1','0',0,0),(146,'Iceland','ISK',352,NULL,NULL,'1','0',0,0),(147,'Iceland','ISJ',352,NULL,NULL,'1','0',0,0),(148,'India','INR',356,NULL,NULL,'1','0',0,0),(149,'Indonesia','IDR',360,NULL,NULL,'1','0',0,0),(150,'Iran, Islamic Republic Of','IRR',364,NULL,NULL,'1','0',0,0),(151,'Iraq','IQD',368,NULL,NULL,'1','0',0,0),(152,'Ireland','EUR',978,NULL,NULL,'1','0',0,0),(153,'Ireland','IEP',372,NULL,NULL,'1','0',0,0),(154,'Isle of Man','GBP',826,NULL,NULL,'1','0',0,0),(155,'Italy','EUR',978,NULL,NULL,'1','0',0,0),(156,'Italy','ITL',380,NULL,NULL,'1','0',0,0),(157,'Jamaica','JMD',388,NULL,NULL,'1','0',0,0),(158,'Japan','JPY',392,NULL,NULL,'1','0',0,0),(159,'Jersey','GBP',826,NULL,NULL,'1','0',0,0),(160,'Jordan','JOD',400,'bank/currency/dinar','bank/currency/dinar','1','1',0,0),(161,'Kazakhstan','KZT',398,NULL,NULL,'1','0',0,0),(162,'Kenya','KES',404,NULL,NULL,'1','0',0,0),(163,'Kiribati','AUD',36,NULL,NULL,'1','0',0,0),(164,'Korea, Democratic People\'s Republic Of','KPW',408,NULL,NULL,'1','0',0,0),(165,'Korea, Republic of','KRW',410,NULL,NULL,'1','0',0,0),(166,'Kuwait','KWD',414,NULL,NULL,'1','0',0,0),(167,'Kyrgyzstan','KGS',417,NULL,NULL,'1','0',0,0),(168,'Lao People\'s Democratic Republic','LAK',418,NULL,NULL,'1','0',0,0),(169,'Lao People\'s Democratic Republic','LAJ',418,NULL,NULL,'1','0',0,0),(170,'Latvia','LVL',428,NULL,NULL,'1','0',0,0),(171,'Lebanon','LBP',422,NULL,NULL,'1','0',0,0),(172,'Lesotho','LSL',426,NULL,NULL,'1','0',0,0),(173,'Lesotho','ZAR',710,NULL,NULL,'1','0',0,0),(174,'Liberia','LRD',430,NULL,NULL,'1','0',0,0),(175,'Libya','LYD',434,NULL,NULL,'1','0',0,0),(176,'Liechtenstein','CHF',756,NULL,NULL,'1','0',0,0),(177,'Lithuania','LTL',440,NULL,NULL,'1','0',0,0),(178,'Luxembourg','EUR',978,NULL,NULL,'1','0',0,0),(179,'Luxembourg','LUF',442,NULL,NULL,'1','0',0,0),(180,'Macao','MOP',446,NULL,NULL,'1','0',0,0),(181,'Macedonia, the Former Yugoslav Republic Of','MKD',807,NULL,NULL,'1','0',0,0),(182,'Macedonia, the Former Yugoslav Republic Of','MKN',807,NULL,NULL,'1','0',0,0),(183,'Madagascar','MGA',969,NULL,NULL,'1','0',0,0),(184,'Madagascar','MGF',450,NULL,NULL,'1','0',0,0),(185,'Malawi','MWK',454,NULL,NULL,'1','0',0,0),(186,'Malaysia','MYR',458,NULL,NULL,'1','0',0,0),(187,'Maldives','MVQ',462,NULL,NULL,'1','0',0,0),(188,'Maldives','MVR',462,NULL,NULL,'1','0',0,0),(189,'Mali','XOF',952,NULL,NULL,'1','0',0,0),(190,'Mali','MAF',952,NULL,NULL,'1','0',0,0),(191,'Malta','EUR',978,NULL,NULL,'1','0',0,0),(192,'Malta','MTL',470,NULL,NULL,'1','0',0,0),(193,'Marshall Islands','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(194,'Martinique','EUR',978,NULL,NULL,'1','0',0,0),(195,'Mauritania','MRO',478,NULL,NULL,'1','0',0,0),(196,'Mauritius','MUR',480,NULL,NULL,'1','0',0,0),(197,'Mayotte','EUR',978,NULL,NULL,'1','0',0,0),(198,'Mexico','MXP',484,NULL,NULL,'1','0',0,0),(199,'Mexico','MXN',484,NULL,NULL,'1','0',0,0),(200,'Mexico','MXV',979,NULL,NULL,'1','0',0,0),(201,'Micronesia, Federated States Of','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(202,'Moldova, Republic of','MDL',498,NULL,NULL,'1','0',0,0),(203,'Monaco','EUR',978,NULL,NULL,'1','0',0,0),(204,'Monaco','MCF',978,NULL,NULL,'1','0',0,0),(205,'Mongolia','MNT',496,NULL,NULL,'1','0',0,0),(206,'Montenegro','EUR',978,NULL,NULL,'1','0',0,0),(207,'Montserrat','XCD',951,NULL,NULL,'1','0',0,0),(208,'Morocco','MAD',504,NULL,NULL,'1','0',0,0),(209,'Mozambique','MZM',508,NULL,NULL,'1','0',0,0),(210,'Mozambique','MZN',943,NULL,NULL,'1','0',0,0),(211,'Myanmar','MMK',104,NULL,NULL,'1','0',0,0),(212,'Namibia','NAD',516,NULL,NULL,'1','0',0,0),(213,'Namibia','ZAR',710,NULL,NULL,'1','0',0,0),(214,'Nauru','AUD',36,NULL,NULL,'1','0',0,0),(215,'Nepal','NPR',524,NULL,NULL,'1','0',0,0),(216,'Netherlands','EUR',978,NULL,NULL,'1','0',0,0),(217,'Netherlands','NLG',528,NULL,NULL,'1','0',0,0),(218,'Netherlands Antilles','ANG',532,NULL,NULL,'1','0',0,0),(219,'New Caledonia','XPF',953,NULL,NULL,'1','0',0,0),(220,'New Zealand','NZD',554,NULL,NULL,'1','0',0,0),(221,'Nicaragua','NIO',558,NULL,NULL,'1','0',0,0),(222,'Niger','XOF',952,NULL,NULL,'1','0',0,0),(223,'Nigeria','NGN',566,NULL,NULL,'1','0',0,0),(224,'Niue','NZD',554,NULL,NULL,'1','0',0,0),(225,'Norfolk Island','AUD',36,NULL,NULL,'1','0',0,0),(226,'Northern Mariana Islands','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(227,'Norway','NOK',578,NULL,NULL,'1','0',0,0),(228,'Oman','OMR',512,NULL,NULL,'1','0',0,0),(229,'Pakistan','PKR',586,NULL,NULL,'1','0',0,0),(230,'Palau','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(231,'Panama','PAB',590,NULL,NULL,'1','0',0,0),(232,'Panama','PAB',590,NULL,NULL,'1','0',0,0),(233,'Panama','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(234,'Panama','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(235,'Papua New Guinea','PGK',598,NULL,NULL,'1','0',0,0),(236,'Paraguay','PYG',600,NULL,NULL,'1','0',0,0),(237,'People\'s Democratic Republic of Yemen','YDD',720,NULL,NULL,'1','0',0,0),(238,'Peru','PEN',604,NULL,NULL,'1','0',0,0),(239,'Peru','PEI',604,NULL,NULL,'1','0',0,0),(240,'Peru','PEH',604,NULL,NULL,'1','0',0,0),(241,'Philippines','PHP',608,NULL,NULL,'1','0',0,0),(242,'Pitcairn','NZD',554,NULL,NULL,'1','0',0,0),(243,'Poland','PLZ',616,NULL,NULL,'1','0',0,0),(244,'Poland','PLN',985,NULL,NULL,'1','0',0,0),(245,'Portugal','EUR',978,NULL,NULL,'1','0',0,0),(246,'Portugal','PTE',620,NULL,NULL,'1','0',0,0),(247,'Portugal','TPE',626,NULL,NULL,'1','0',0,0),(248,'Puerto Rico','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(249,'Qatar','QAR',634,NULL,NULL,'1','0',0,0),(250,'Romania','RON',946,NULL,NULL,'1','0',0,0),(251,'Romania','ROL',642,NULL,NULL,'1','0',0,0),(252,'Romania','ROK',642,NULL,NULL,'1','0',0,0),(253,'Russian Federation','RUB',643,NULL,NULL,'1','0',0,0),(254,'Rwanda','RWF',646,NULL,NULL,'1','0',0,0),(255,'R?union','EUR',978,NULL,NULL,'1','0',0,0),(256,'Saint Barth?lemy','EUR',978,NULL,NULL,'1','0',0,0),(257,'Saint Helena, Ascension and Tristan Da Cunha','SHP',654,NULL,NULL,'1','0',0,0),(258,'Saint Kitts And Nevis','XCD',951,NULL,NULL,'1','0',0,0),(259,'Saint Lucia','XCD',951,NULL,NULL,'1','0',0,0),(260,'Saint Martin (French Part)','EUR',978,NULL,NULL,'1','0',0,0),(261,'Saint Pierre And Miquelon','EUR',978,NULL,NULL,'1','0',0,0),(262,'Saint Vincent And The Grenadines','XCD',951,NULL,NULL,'1','0',0,0),(263,'Samoa','WST',882,NULL,NULL,'1','0',0,0),(264,'San Marino','EUR',978,NULL,NULL,'1','0',0,0),(265,'Sao Tome and Principe','STD',678,NULL,NULL,'1','0',0,0),(266,'Saudi Arabia','SAR',682,NULL,NULL,'1','0',0,0),(267,'Senegal','XOF',952,NULL,NULL,'1','0',0,0),(268,'Serbia','CSD',941,NULL,NULL,'1','0',0,0),(269,'Serbia','RSD',941,NULL,NULL,'1','0',0,0),(270,'Seychelles','SCR',690,NULL,NULL,'1','0',0,0),(271,'Sierra Leone','SLL',694,NULL,NULL,'1','0',0,0),(272,'Singapore','SGD',702,NULL,NULL,'1','0',0,0),(273,'Sint Maarten (Dutch part)','ANG',532,NULL,NULL,'1','0',0,0),(274,'Slovakia','EUR',978,NULL,NULL,'1','0',0,0),(275,'Slovakia','SKK',703,NULL,NULL,'1','0',0,0),(276,'Slovenia','EUR',978,NULL,NULL,'1','0',0,0),(277,'Slovenia','SIT',705,NULL,NULL,'1','0',0,0),(278,'Solomon Islands','SBD',90,NULL,NULL,'1','0',0,0),(279,'Somalia','SOS',706,NULL,NULL,'1','0',0,0),(280,'South Africa','ZAR',710,NULL,NULL,'1','0',0,0),(281,'South Africa','ZAL',991,NULL,NULL,'1','0',0,0),(282,'South Sudan','SSP',728,NULL,NULL,'1','0',0,0),(283,'Spain','EUR',978,NULL,NULL,'1','0',0,0),(284,'Spain','ESP',724,NULL,NULL,'1','0',0,0),(285,'Spain','ESA',996,NULL,NULL,'1','0',0,0),(286,'Spain','ESB',995,NULL,NULL,'1','0',0,0),(287,'Sri Lanka','LKR',144,NULL,NULL,'1','0',0,0),(288,'Sudan','SDD',736,NULL,NULL,'1','0',0,0),(289,'Sudan','SDG',938,NULL,NULL,'1','0',0,0),(290,'Sudan','SDP',938,NULL,NULL,'1','0',0,0),(291,'Suriname','SRD',968,NULL,NULL,'1','0',0,0),(292,'Suriname','SRG',740,NULL,NULL,'1','0',0,0),(293,'Svalbard And Jan Mayen','NOK',578,NULL,NULL,'1','0',0,0),(294,'Swaziland','SZL',748,NULL,NULL,'1','0',0,0),(295,'Sweden','SEK',752,NULL,NULL,'1','0',0,0),(296,'Switzerland','CHF',756,NULL,NULL,'1','0',0,0),(297,'Switzerland','CHE',947,NULL,NULL,'1','0',0,0),(298,'Switzerland','CHW',948,NULL,NULL,'1','0',0,0),(299,'Syrian Arab Republic','SYP',760,NULL,NULL,'1','0',0,0),(300,'Taiwan, Province Of China','TWD',901,NULL,NULL,'1','0',0,0),(301,'Tajikistan','TJS',972,NULL,NULL,'1','0',0,0),(302,'Tajikistan','TJR',762,NULL,NULL,'1','0',0,0),(303,'Tanzania, United Republic of','TZS',834,NULL,NULL,'1','0',0,0),(304,'Thailand','THB',764,NULL,NULL,'1','0',0,0),(305,'Timor-Leste','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(306,'Togo','XOF',952,NULL,NULL,'1','0',0,0),(307,'Tokelau','NZD',554,NULL,NULL,'1','0',0,0),(308,'Tonga','TOP',776,NULL,NULL,'1','0',0,0),(309,'Trinidad and Tobago','TTD',780,NULL,NULL,'1','0',0,0),(310,'Tunisia','TND',788,NULL,NULL,'1','0',0,0),(311,'Turkey','TRY',949,NULL,NULL,'1','0',0,0),(312,'Turkey','TRL',792,NULL,NULL,'1','0',0,0),(313,'Turkmenistan','TMM',795,NULL,NULL,'1','0',0,0),(314,'Turkmenistan','TMT',934,NULL,NULL,'1','0',0,0),(315,'Turks and Caicos Islands','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(316,'Tuvalu','AUD',36,NULL,NULL,'1','0',0,0),(317,'U.S.S.R.','RUR',810,NULL,NULL,'1','0',0,0),(318,'U.S.S.R.','SUR',810,NULL,NULL,'1','0',0,0),(319,'Uganda','UGX',800,NULL,NULL,'1','0',0,0),(320,'Uganda','UGS',800,NULL,NULL,'1','0',0,0),(321,'Ukraine','UAH',980,NULL,NULL,'1','0',0,0),(322,'Ukraine','UAK',804,NULL,NULL,'1','0',0,0),(323,'United Arab Emirates','AED',784,'bank/currency/derham','bank/currency/derham','1','0',0,0),(324,'United Kingdom','GBP',826,NULL,NULL,'1','0',0,0),(325,'United States','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(326,'United States','USN',997,NULL,NULL,'1','0',0,0),(327,'United States','USS',998,NULL,NULL,'1','0',0,0),(328,'United States Minor Outlying Islands','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(329,'Uruguay','UYU',858,NULL,NULL,'1','0',0,0),(330,'Uruguay','UYN',858,NULL,NULL,'1','0',0,0),(331,'Uruguay','UYI',940,NULL,NULL,'1','0',0,0),(332,'Uzbekistan','UZS',860,NULL,NULL,'1','0',0,0),(333,'Vanuatu','VUV',548,NULL,NULL,'1','0',0,0),(334,'Venezuela, Bolivarian Republic of','VEF',937,NULL,NULL,'1','0',0,0),(335,'Venezuela, Bolivarian Republic of','VEB',862,NULL,NULL,'1','0',0,0),(336,'Viet Nam','VND',704,NULL,NULL,'1','0',0,0),(337,'Viet Nam','VNC',704,NULL,NULL,'1','0',0,0),(338,'Virgin Islands, British','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(339,'Virgin Islands, U.S.','USD',840,'bank/currency/dollar','bank/currency/dollar','1','0',0,0),(340,'Wallis and Futuna','XPF',953,NULL,NULL,'1','0',0,0),(341,'Western Sahara','MAD',504,NULL,NULL,'1','0',0,0),(342,'Yemen','YER',886,NULL,NULL,'1','0',0,0),(343,'Yugoslavia','YUD',891,NULL,NULL,'1','0',0,0),(344,'Yugoslavia','YUM',891,NULL,NULL,'1','0',0,0),(345,'Zaire','ZRN',180,NULL,NULL,'1','0',0,0),(346,'Zaire','ZRZ',180,NULL,NULL,'1','0',0,0),(347,'Zambia','ZMW',894,NULL,NULL,'1','0',0,0),(348,'Zambia','ZMK',894,NULL,NULL,'1','0',0,0),(349,'Zimbabwe','ZWD',716,NULL,NULL,'1','0',0,0),(350,'Zimbabwe','ZWL',932,NULL,NULL,'1','0',0,0),(351,'Zimbabwe','ZWC',932,NULL,NULL,'1','0',0,0),(352,'','EUR',978,NULL,NULL,'1','0',0,0);
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
  `pin` varchar(4) NOT NULL,
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
-- Table structure for table `iso`
--

DROP TABLE IF EXISTS `iso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iso` (
  `iso_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL,
  `left_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `language` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`iso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iso`
--

LOCK TABLES `iso` WRITE;
/*!40000 ALTER TABLE `iso` DISABLE KEYS */;
INSERT INTO `iso` VALUES (1,'account_number',19,'account','1',1,2,''),(2,'processing_code',6,'','0',3,4,''),(3,'amount_transaction',12,'amount_sender','1',5,6,''),(4,'transaction_date_time',10,'date_time','1',11,12,''),(5,'system_trace_audit_number',6,'','0',17,18,''),(6,'time',6,'time','1',19,20,''),(7,'date',4,'date','1',21,22,''),(8,'identification_code',11,'','0',37,38,''),(9,'response_code',2,'','0',39,40,''),(11,'additional_data_private',9,'','0',41,42,''),(12,'currecncy_code',3,'currency','1',43,44,''),(13,'country_code',3,'country','1',45,46,''),(14,'original_data_elements',42,'','0',47,48,''),(15,'mymo_sender',10,'mymo_sender','1',49,50,''),(16,'mymo_receiver',10,'mymo_receiver','1',51,52,''),(17,'amount_receiver',12,'amount_receiver','1',53,54,''),(18,'mymo_comm',12,'mymo_comm','1',55,56,''),(19,'bank_comm',12,'bank_comm','1',57,58,''),(20,'merchant_comm',12,'merchant_comm','1',59,60,''),(21,'settlement_amount',12,'','0',7,8,NULL),(22,'cardholder_billing',12,'','0',9,10,NULL),(23,'settlement_conversion_rate',8,'','0',13,14,NULL),(24,'cardholder_billing_conversion_rate',8,'','0',15,16,NULL),(25,'expiration date',4,'','0',23,24,NULL),(26,'merchants_type',4,'','0',25,26,NULL),(27,'point_of_service_entry_mode',3,'','0',27,28,NULL),(28,'acquiring_institution id_code',11,'','0',29,30,NULL),(29,'track_2_data',37,'','0',31,32,NULL),(30,'retrieval_reference_number',12,'','0',33,34,NULL),(31,'card_acceptor_terminal_id',8,'','0',35,36,NULL),(32,'cdr_id',10,'cdr_id','1',61,62,NULL);
/*!40000 ALTER TABLE `iso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `iso_content`
--

DROP TABLE IF EXISTS `iso_content`;
/*!50001 DROP VIEW IF EXISTS `iso_content`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `iso_content` (
  `cdr_id` tinyint NOT NULL,
  `client_id` tinyint NOT NULL,
  `account` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `amount_sender` tinyint NOT NULL,
  `amount_receiver` tinyint NOT NULL,
  `mymo_comm` tinyint NOT NULL,
  `bank_comm` tinyint NOT NULL,
  `merchant_comm` tinyint NOT NULL,
  `country` tinyint NOT NULL,
  `mymo_sender` tinyint NOT NULL,
  `mymo_receiver` tinyint NOT NULL,
  `date_time` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `date` tinyint NOT NULL,
  `currency` tinyint NOT NULL,
  `extra_data` tinyint NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mymo_lastused`
--

LOCK TABLES `mymo_lastused` WRITE;
/*!40000 ALTER TABLE `mymo_lastused` DISABLE KEYS */;
INSERT INTO `mymo_lastused` VALUES (1,6,40010),(2,6,40010),(3,1,4004),(4,1,4004),(5,1,4004),(6,4,4008),(7,5,4009),(8,6,40010),(9,7,40011),(10,7,40011),(11,7,40011),(12,8,40012),(13,1,4004),(14,1,4004),(15,1,4004),(16,1,4004),(17,1,4004),(18,1,4004),(19,1,4004),(20,1,4004),(21,1,4004),(22,1,4004),(23,1,4004),(24,1,4004),(25,3,4007),(26,4,4008),(27,5,4009),(28,1,4004),(29,1,4004),(30,1,4004),(31,2,4006),(32,3,4007),(33,4,4008),(34,5,4009),(35,6,40010),(36,7,40011),(37,1,4004),(38,2,4006),(39,3,4007),(40,4,4008),(41,5,4009),(42,6,40010),(43,7,40011),(44,8,40012),(45,9,40013),(46,10,40014);
/*!40000 ALTER TABLE `mymo_lastused` ENABLE KEYS */;
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
  `is_active` enum('0','1') NOT NULL,
  `right_id` int(11) NOT NULL,
  `left_id` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`prompt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prompt`
--

LOCK TABLES `prompt` WRITE;
/*!40000 ALTER TABLE `prompt` DISABLE KEYS */;
INSERT INTO `prompt` VALUES (1,'balance-not-enough','bank/balance-not-enough-en','bank/balance-not-enough-ar',NULL,'1',2,1,'en',NULL),(2,'pin-3-times-wrong','bank/pin-3-times-wrong-en','bank/pin-3-times-wrong-ar',NULL,'1',4,3,'en',NULL),(3,'pin-prompt','bank/pin-prompt-en','bank/pin-prompt-ar',NULL,'1',6,5,'en',NULL),(4,'transaction-cancelled','bank/transaction-cancelled-en','bank/transaction-cancelled-ar',NULL,'1',8,7,'en',NULL),(5,'transaction-completed','bank/transaction-completed-en','bank/transaction-completed-ar',NULL,'1',10,9,'en',NULL),(6,'welcome','bank/welcome-en','bank/welcome-ar',NULL,'1',12,11,'en',NULL),(8,'you-will-be-called-soon-to-finish-request','bank/you-will-be-called-soon-to-finish-request-en','bank/you-will-be-called-soon-to-finish-request-ar',NULL,'1',14,13,'en',NULL),(9,'transaction-repeat-1','bank/transaction-repeat-1-en','bank/transaction-repeat-1-ar',NULL,'1',16,15,'en',NULL),(10,'transaction-repeat-2','bank/transaction-repeat-2-en','bank/transaction-repeat-2-ar',NULL,'1',18,17,'en',NULL),(11,'transaction-repeat-3','bank/transaction-repeat-3-en','bank/transaction-repeat-3-ar',NULL,'1',20,19,'en',NULL),(12,'wrong-number','bank/wrong-number-en','bank/wrong-number-ar',NULL,'1',22,21,'en',NULL),(13,'commision-1','bank/commision-1-en','bank/commision-1-ar',NULL,'1',24,23,'en',NULL),(14,'commision-2','bank/commision-2-en','bank/commision-2-ar',NULL,'1',26,25,'en',NULL),(15,'3times-error','bank/3times-error-en','bank/3times-error-ar',NULL,'1',28,27,'en',NULL),(16,'change-successfully applied','bank/change-successfully-applied-en','bank/change-successfully-applied-ar',NULL,'1',30,29,'en',NULL),(17,'insert-new-pin','bank/insert-new-pin-en','bank/insert-new-pin-ar',NULL,'1',32,31,'en',NULL),(18,'insert-new-limit','bank/insert-new-limit-en','bank/insert-new-limit-ar',NULL,'1',34,33,'en',NULL),(19,'bank','bank/welcomepress-en','bank/welcomepress-ar',NULL,'1',36,35,'en',NULL),(20,'Error_PIN','bank/new/pin-did-not-en','bank/new/pin-did-not-ar',NULL,'1',38,37,'en',NULL),(21,'no balance ','bank/new/no-balance-en','bank/new/no-balance-ar',NULL,'1',40,39,'en',NULL),(22,'try later','bank/new/Try-later-en','bank/new/Try-later-ar',NULL,'1',42,41,'en',NULL),(23,'not-entered','bank/new/not-entered-en','bank/new/not-entered-ar',NULL,'1',44,43,'en',NULL);
/*!40000 ALTER TABLE `prompt` ENABLE KEYS */;
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
INSERT INTO `setting` VALUES (2,1,'HSM URL','hsm_url','http://192.168.15.102/hsm/index.php','text',1,2,'1',1),(3,2,'ISO Message URL','iso_url','http://192.168.15.240/oracle/oracle.php','text',3,4,'1',1),(4,1,'LMK','lmk','MjY1Mjfb0a+pm5elmKTQybKj26zHlqvK2ZubrJ+tpMeZqpra0s3y167VztjU3g==','text',5,6,'1',1),(8,6,'Retries Call Back','set_8','5','text',13,14,'1',1),(9,21,'Trigger Path','tigger_path','http://192.168.15.102/trigger','text',45,46,'1',1),(25,6,'Retry Time','time','60','text',13,14,'1',1),(26,6,'Wait Time','waittime','45','text',13,14,'1',1),(27,6,'Channel','channel','63','text',13,14,'1',1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_client`
--

DROP TABLE IF EXISTS `temp_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `status` enum('0','4') NOT NULL COMMENT '4 = under approval',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_client`
--

LOCK TABLES `temp_client` WRITE;
/*!40000 ALTER TABLE `temp_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_client` ENABLE KEYS */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES (1,'Mall'),(2,'Individual User'),(3,'Corporate User'),(4,'Change Password'),(5,'Change PIN'),(6,'Lost Phone');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validation_key`
--

LOCK TABLES `validation_key` WRITE;
/*!40000 ALTER TABLE `validation_key` DISABLE KEYS */;
INSERT INTO `validation_key` VALUES (1,'Change PIN','82861a40671b28a354bbb29ef87cab3a'),(2,'Change Limit','40048fa1b25649b8659aaae3fe5bf049'),(3,'Lost Phone','94a81cbeccdea51ba8d855b3847bc1f3'),(4,'Lost PIN','baa1670af12d4e84ef86e97b0ba04094'),(5,'Request Change PIN','a869c6d5ef4eb2e8441ca9820403cabe'),(6,'Request Change Limit','9a848f09adf23fa3cb12d6169fd724d0'),(7,'hsm','e18790885736ee2184080d7c1099f124'),(8,'check pin','73039233277694e8d8074df40277f379'),(9,'encrypt data','69e1ad852a342c74191d145d786bd0cf');
/*!40000 ALTER TABLE `validation_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `iso_content`
--

/*!50001 DROP TABLE IF EXISTS `iso_content`*/;
/*!50001 DROP VIEW IF EXISTS `iso_content`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`psf`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `iso_content` AS select `cdr`.`id` AS `cdr_id`,`cl`.`client_id` AS `client_id`,`cdr`.`account` AS `account`,`cdr`.`amount` AS `amount`,`cc`.`amount_sender` AS `amount_sender`,`cc`.`amount_receiver` AS `amount_receiver`,`cc`.`mymo_comm` AS `mymo_comm`,`cc`.`bank_comm` AS `bank_comm`,`cc`.`merchant_comm` AS `merchant_comm`,`cdr`.`country_id` AS `country`,`cdr`.`src_mymoid` AS `mymo_sender`,`cdr`.`dst_mymoid` AS `mymo_receiver`,date_format(`cdr`.`end`,'%m%d%H%i%s') AS `date_time`,date_format(`cdr`.`end`,'%H%i%s') AS `time`,date_format(`cdr`.`end`,'%m%d') AS `date`,`cdr`.`currency` AS `currency`,`cdr`.`extra_data` AS `extra_data` from ((`cdr` join `cdr_commission` `cc`) join `client` `cl`) where ((`cdr`.`id` = `cc`.`cdr_id`) and ((`cl`.`mymo_id` = `cdr`.`src_mymoid`) or (`cl`.`mymo_id` = `cdr`.`dst_mymoid`))) group by `cc`.`cdr_id` */;
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

-- Dump completed on 2016-08-67 23:34:55
