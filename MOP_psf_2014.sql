-- MySQL dump 10.13  Distrib 5.1.71, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: mymo_psf
-- ------------------------------------------------------
-- Server version	5.1.71

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
-- Table structure for table `amf`
--

DROP TABLE IF EXISTS `amf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amf` (
  `cdr_id` int(11) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `sms_receiver` enum('0','1','2') NOT NULL,
  `sms_sender` enum('0','1','2') NOT NULL,
  PRIMARY KEY (`cdr_id`),
  UNIQUE KEY `cdr_id` (`cdr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amf`
--

LOCK TABLES `amf` WRITE;
/*!40000 ALTER TABLE `amf` DISABLE KEYS */;
INSERT INTO `amf` VALUES (9,'1','1','1'),(12,'1','1','1'),(14,'1','1','1'),(15,'1','1','1');
/*!40000 ALTER TABLE `amf` ENABLE KEYS */;
UNLOCK TABLES;

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
  `limit_from` int(11) DEFAULT NULL,
  `limit_to` int(11) DEFAULT NULL,
  `required` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `callback_phone`
--

LOCK TABLES `callback_phone` WRITE;
/*!40000 ALTER TABLE `callback_phone` DISABLE KEYS */;
INSERT INTO `callback_phone` VALUES (295,'0786945106',1,NULL,NULL,'1'),(296,'0799113799',2,NULL,NULL,'1');
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
  `dst_mymoid` int(10) DEFAULT NULL,
  `src_mymoid` int(10) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr`
--

LOCK TABLES `cdr` WRITE;
/*!40000 ALTER TABLE `cdr` DISABLE KEYS */;
INSERT INTO `cdr` VALUES (1,'0',400102,400101,'55','2014-05-27 11:43:29','2014-05-27 11:43:29','2014-05-27 11:43:29','0786945106',0,'0',0,'','2',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(2,'0',400102,400101,'11','2014-05-27 11:46:29','2014-05-27 11:46:29','2014-05-27 11:46:29','0786945106',0,'0',0,'','2',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(3,'0',400102,400101,'19','2014-05-27 01:29:16','2014-05-27 01:29:16','2014-05-27 01:29:16','0786945106',0,'0',0,'','2',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(4,'0',400102,400101,'66','2014-05-27 01:41:59','2014-05-27 01:41:59','2014-05-27 01:41:59','0786945106',0,'0',0,'','2',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(5,'0',400102,400101,'19','2014-05-27 01:59:25','2014-05-27 01:59:25','2014-05-27 01:59:25','0786945106',0,'0',0,'','3',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(6,'0',400102,400101,'4','2014-05-27 03:09:34','2014-05-27 03:09:34','2014-05-27 03:09:34','0786945106',0,'0',0,'','3',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(7,'0',400102,400101,'6','2014-05-27 03:12:18','2014-05-27 03:12:18','2014-05-27 03:12:18','0786945106',0,'0',0,'','3',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(8,'0',400102,400101,'5','2014-05-27 03:13:48','2014-05-27 03:13:48','2014-05-27 03:13:48','0786945106',0,'0',0,'','3',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(9,'60',400102,400101,'5','2014-05-27 15:16:22','2014-05-27 15:16:25','2014-05-27 15:17:43','0786945106',0,'SIP/0786945106-00000008',57,'ANSWERED','1',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001'),(10,'0',400101,400101,'2','2014-05-27 04:30:36','2014-05-27 04:30:36','2014-05-27 04:30:36','0786945106',0,'0',0,'','3',4,'category_id=26',1,400,1,'192.168.15.248',NULL,'0001000100220110100104001','0001000100220110100104001'),(11,'0',400101,400101,'2','2014-05-27 04:30:37','2014-05-27 04:30:37','2014-05-27 04:30:37','0786945106',0,'0',0,'','3',4,'category_id=26',1,400,1,'192.168.15.248',NULL,'0001000100220110100104001','0001000100220110100104001'),(12,'82',400101,400101,'2','2014-05-27 16:37:17','2014-05-27 16:37:20','2014-05-27 16:39:01','0786945106',0,'SIP/0786945106-0000000c',79,'ANSWERED','1',4,'category_id=26',1,400,1,'192.168.15.248',NULL,'0001000100220110100104001','0001000100220110100104001'),(13,'48',400101,400102,'2','2014-05-27 16:41:46','2014-05-27 16:41:46','2014-05-27 16:42:57','0799113799',0,'SIP/0799113799-00000001',48,'ANSWERED','3',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104001','0001000100220110100104002'),(14,'62',400101,400102,'2','2014-05-27 16:49:28','2014-05-27 16:49:32','2014-05-27 16:50:51','0799113799',0,'SIP/0799113799-00000010',58,'ANSWERED','1',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104001','0001000100220110100104002'),(15,'73',400102,400101,'16','2014-05-27 16:50:04','2014-05-27 16:50:07','2014-05-27 16:51:38','0786945106',0,'SIP/0786945106-00000011',70,'ANSWERED','1',1,'',1,400,1,'192.168.15.248',NULL,'0001000100220110100104002','0001000100220110100104001');
/*!40000 ALTER TABLE `cdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdr_authentication_level`
--

DROP TABLE IF EXISTS `cdr_authentication_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr_authentication_level` (
  `cdr_id` int(11) NOT NULL,
  `callback_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdr_id`,`callback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdr_authentication_level`
--

LOCK TABLES `cdr_authentication_level` WRITE;
/*!40000 ALTER TABLE `cdr_authentication_level` DISABLE KEYS */;
INSERT INTO `cdr_authentication_level` VALUES (245,285),(246,280),(247,280),(248,285),(249,280),(250,280),(251,280),(252,285),(253,285),(254,285),(255,280),(256,285),(257,285),(258,286),(259,281),(260,281),(261,281),(262,281),(263,281),(264,280),(267,280),(268,290),(269,289),(270,289);
/*!40000 ALTER TABLE `cdr_authentication_level` ENABLE KEYS */;
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
INSERT INTO `cdr_commission` VALUES (1,1,0.9,0.1,0,56,55,1,'0',1),(1,1,0.9,0.1,0,12,11,2,'0',1),(1,1,0.9,0.1,0,20,19,3,'0',1),(1,1,0.9,0.1,0,67,66,4,'0',1),(1,1,0.9,0.1,0,20,19,5,'0',1),(1,1,0.9,0.1,0,5,4,6,'0',1),(1,1,0.9,0.1,0,7,6,7,'0',1),(1,1,0.9,0.1,0,6,5,8,'0',1),(1,1,0.9,0.1,0,6,5,9,'0',1),(4,1,0,0,0,2,2,10,'0',1),(4,1,0,0,0,2,2,11,'0',1),(4,1,0,0,0,2,2,12,'0',1),(1,2,0.9,0.1,0,3,2,13,'0',1),(1,2,0.9,0.1,0,3,2,14,'0',1),(1,1,0.9,0.1,0,17,16,15,'0',1);
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
  `view_name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `mymo_id` (`mymo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Alaa','Mohammad','Aldeen','Duksi','','1985-09-01',400101,5454000000,'2014-05-22 13:33:13',2,1,'1','en',' ',' ',' ',' ',' ','','0',NULL,1,1,100,1,'male',0,NULL),(2,'Alaa','Majed','','Alali','','1990-01-01',400102,5454000000,'2014-05-22 13:35:15',4,3,'1','en',' ',' ',' ',' ',' ','','0',NULL,1,1,1000,1,'male',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_account`
--

LOCK TABLES `client_account` WRITE;
/*!40000 ALTER TABLE `client_account` DISABLE KEYS */;
INSERT INTO `client_account` VALUES (138,'0001000100220110100104001',1,1),(139,'0001000100220110100104002',2,1);
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
  `status` enum('0','1','2','3','10') NOT NULL COMMENT '0 = inactive - 1 = active - 2 = deleted from mymo_bank - 3 = deactivate by client | 10 = delete',
  PRIMARY KEY (`phone_id`),
  UNIQUE KEY `phone` (`phone`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_phone`
--

LOCK TABLES `client_phone` WRITE;
/*!40000 ALTER TABLE `client_phone` DISABLE KEYS */;
INSERT INTO `client_phone` VALUES (125,'0786945106',100,0,1,1,'84370','1'),(126,'0799113799',200,0,1,2,'72006','1');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_db_all_tbl`
--

LOCK TABLES `config_db_all_tbl` WRITE;
/*!40000 ALTER TABLE `config_db_all_tbl` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_db_tbl`
--

LOCK TABLES `config_db_tbl` WRITE;
/*!40000 ALTER TABLE `config_db_tbl` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_integration_info`
--

LOCK TABLES `config_integration_info` WRITE;
/*!40000 ALTER TABLE `config_integration_info` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tbl_all_cols`
--

LOCK TABLES `config_tbl_all_cols` WRITE;
/*!40000 ALTER TABLE `config_tbl_all_cols` DISABLE KEYS */;
INSERT INTO `config_tbl_all_cols` VALUES (1,1,'phone_id','int','callback_phone','src',1,'2',NULL,NULL),(2,1,'phone','varchar','callback_phone','src',1,'2',NULL,NULL),(3,1,'client_id','int','callback_phone','src',1,'2',NULL,NULL),(4,1,'BookID','int','book','trgt',1,'2',NULL,NULL),(5,1,'Title','varchar','book','trgt',1,'2',NULL,NULL),(6,1,'Description','varchar','book','trgt',1,'2',NULL,NULL),(7,1,'PagesNum','int','book','trgt',1,'2',NULL,NULL),(8,1,'ReleasedDate','date','book','trgt',1,'2',NULL,NULL),(9,1,'Price','float','book','trgt',1,'2',NULL,NULL),(10,1,'AuthorID','int','book','trgt',1,'2',NULL,NULL),(11,1,'CategoryID','int','book','trgt',1,'2',NULL,NULL),(12,1,'approved','int','book','trgt',1,'2',NULL,NULL),(13,1,'bookType','int','book','trgt',1,'2',NULL,NULL),(14,1,'mymo_id','int','client','src',1,'2',NULL,NULL),(15,1,'pin','text','client','src',1,'2',NULL,NULL),(16,1,'creation_date','datetime','client','src',1,'2',NULL,NULL),(17,1,'right_id','int','client','src',1,'2',NULL,NULL),(18,1,'left_id','int','client','src',1,'2',NULL,NULL),(19,1,'pin_status','int','client','src',1,'2',NULL,NULL),(20,1,'printed','int','client','src',1,'2',NULL,NULL),(21,1,'is_active','enum','client','src',1,'2',NULL,NULL),(22,1,'firstname','varchar','client','src',1,'2',NULL,NULL),(23,1,'fathername','varchar','client','src',1,'2',NULL,NULL),(24,1,'middlename','varchar','client','src',1,'2',NULL,NULL),(25,1,'familyname','varchar','client','src',1,'2',NULL,NULL),(26,1,'slug','varchar','client','src',1,'2',NULL,NULL),(27,1,'birth_date','date','client','src',1,'2',NULL,NULL),(28,1,'national_id','bigint','client','src',1,'2',NULL,NULL),(29,1,'language','varchar','client','src',1,'2',NULL,NULL),(30,1,'companyname','varchar','client','src',1,'2',NULL,NULL),(31,1,'mit','varchar','client','src',1,'2',NULL,NULL),(32,1,'authorized','varchar','client','src',1,'2',NULL,NULL),(33,1,'co_type','varchar','client','src',1,'2',NULL,NULL),(34,1,'co_address','varchar','client','src',1,'2',NULL,NULL),(35,1,'short_code','int','client','src',1,'2',NULL,NULL),(36,1,'user_type','int','client','src',1,'2',NULL,NULL),(37,1,'fees','int','client','src',1,'2',NULL,NULL),(38,1,'receivelimit','float','client','src',1,'2',NULL,NULL),(39,1,'created_by','int','client','src',1,'2',NULL,NULL),(40,1,'gender','enum','client','src',1,'2',NULL,NULL),(41,1,'updated_by','int','client','src',1,'2',NULL,NULL),(42,1,'view_name','varchar','client','src',1,'2',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_privilege`
--

LOCK TABLES `core_privilege` WRITE;
/*!40000 ALTER TABLE `core_privilege` DISABLE KEYS */;
INSERT INTO `core_privilege` VALUES (1,'add','Create new client','client','client'),(2,'delete','Delete a client','client','client'),(3,'edit','Edit a client','client','client'),(4,'list','View the list of clients','client','client'),(5,'add','Add new client','ad','client'),(6,'delete','Delete client','ad','client'),(7,'edit','Edit client information','ad','client'),(8,'list','View the list of clients','ad','client'),(9,'add','Create new zone','ad','zone'),(10,'delete','Delete a zone','ad','zone'),(11,'edit','Edit a zone','ad','zone'),(12,'list','View the list of zones','ad','zone'),(13,'add','Create new category','category','category'),(14,'delete','Delete a category','category','category'),(15,'edit','Edit a category','category','category'),(16,'list','View the list of categories','category','category'),(17,'order','Order categories','category','category'),(18,'activate','Activate comment','comment','comment'),(19,'add','Add/Reply comment','comment','comment'),(20,'delete','Delete comment','comment','comment'),(21,'edit','Edit comment','comment','comment'),(22,'list','View the list of comments','comment','comment'),(23,'thread','View the list comments in thread','comment','comment'),(24,'clear','Clear all cached data','core','cache'),(25,'config','Configure cache','core','cache'),(26,'delete','Delete cached item','core','cache'),(27,'list','View the list of cached items by id','core','cache'),(28,'app','Configure application\'s settings','core','config'),(29,'add','Add setting','core','config'),(30,'delete','Delete settings','core','config'),(31,'edit','Edit setting','core','config'),(32,'list','View the list of settings','core','config'),(33,'update','Update setting','core','config'),(34,'index','Administrator Dashboard','core','dashboard'),(35,'config','Config hook','core','hook'),(36,'install','Install hook','core','hook'),(37,'list','View the list of hooks','core','hook'),(38,'uninstall','Uninstall hook','core','hook'),(39,'upload','Upload new hook','core','hook'),(40,'add','Add item to language file','core','language'),(41,'delete','Delete item from language file','core','language'),(42,'edit','Edit language file','core','language'),(43,'list','View the list of language files for module/widget','core','language'),(44,'new','Create new language file','core','language'),(45,'update','Update item in language file','core','language'),(46,'upload','Upload new language package','core','language'),(47,'config','Configure localization settings','core','locale'),(48,'delete','Delete error','core','log'),(49,'list','List errors','core','log'),(50,'install','Install module','core','module'),(51,'list','View the list of modules','core','module'),(52,'uninstall','Uninstall module','core','module'),(53,'upload','Upload new module','core','module'),(54,'add','Create new page','core','page'),(55,'edit','Edit page','core','page'),(56,'layout','View layout of page','core','page'),(57,'savelayout','Update layout of page','core','page'),(58,'list','View the list of pages','core','page'),(59,'ordering','Update order of pages','core','page'),(60,'index','Manage permalinks','core','permalink'),(61,'config','Config plugin','core','plugin'),(62,'install','Install plugin','core','plugin'),(63,'list','View the list of plugins','core','plugin'),(64,'ordering','Update order of plugins','core','plugin'),(65,'uninstall','Uninstall plugin','core','plugin'),(66,'upload','Upload new plugin','core','plugin'),(67,'add','Add action','core','privilege'),(68,'delete','Delete action','core','privilege'),(69,'list','View the list of actions','core','privilege'),(70,'add','Add resource','core','resource'),(71,'delete','Delete resource','core','resource'),(72,'add','Add role','core','role'),(73,'delete','Delete role','core','role'),(74,'list','View the list of roles','core','role'),(75,'lock','Lock/unlock role','core','role'),(76,'role','Set rules for role','core','rule'),(77,'user','Set rules for user','core','rule'),(78,'add','Apply hook for target','core','target'),(79,'list','View the list of targets','core','target'),(80,'remove','Remove hook from target','core','target'),(81,'activate','Activate template','core','template'),(82,'editskin','Edit skin of template','core','template'),(83,'list','View the list of templates','core','template'),(84,'skin','Set skin for current template','core','template'),(85,'activate','Activate/deactivate an user','core','user'),(86,'add','Add user','core','user'),(87,'changepass','Update password','core','user'),(88,'edit','Update user information','core','user'),(89,'list','View the list of users','core','user'),(90,'install','Install widget','core','widget'),(91,'list','View the list of widgets','core','widget'),(92,'uninstall','Uninstall widget','core','widget'),(93,'upload','Upload new widget','core','widget'),(94,'server','Config mail server','mail','config'),(95,'add','Add new mail template','mail','template'),(96,'delete','Delete the mail template','mail','template'),(97,'edit','Edit the mail template','mail','template'),(98,'list','View the list of templates','mail','template'),(99,'list','View the list of mails','mail','mail'),(100,'send','Send mails','mail','mail'),(101,'build','Build new menu','menu','menu'),(102,'delete','Delete a menu','menu','menu'),(103,'edit','Edit a menu','menu','menu'),(104,'list','View the list of menus','menu','menu'),(105,'activate','Activate a file','multimedia','file'),(106,'add','Create new file','multimedia','file'),(107,'delete','Delete a file','multimedia','file'),(108,'edit','Edit given file','multimedia','file'),(109,'editor','Image editor','multimedia','file'),(110,'activate','Activate a note','multimedia','note'),(111,'delete','Delete a note','multimedia','note'),(112,'edit','Edit given note','multimedia','note'),(113,'list','View list of notes','multimedia','note'),(114,'upload','Upload new photo','multimedia','photo'),(115,'activate','Activate a set','multimedia','set'),(116,'add','Create new set','multimedia','set'),(117,'delete','Delete a set','multimedia','set'),(118,'edit','Edit given set','multimedia','set'),(119,'activate','Activate article','news','article'),(120,'add','Add new article','news','article'),(121,'delete','Delete article','news','article'),(122,'edit','Edit article','news','article'),(123,'emptytrash','Empty the trash','news','article'),(124,'hot','Manage hot articles','news','article'),(125,'list','View the list of articles','news','article'),(126,'preview','Preview article','news','article'),(127,'add','Add new revision','news','revision'),(128,'delete','Delete revision','news','revision'),(129,'list','View the list of article revisions','news','revision'),(130,'restore','Restore revision','news','revision'),(131,'add','Add new page','page','page'),(132,'delete','Delete page','page','page'),(133,'edit','Edit page','page','page'),(134,'list','List pages','page','page'),(135,'order','Order pages','page','page'),(136,'activate','Activate a poll','poll','question'),(137,'add','Create new poll','poll','question'),(138,'delete','Delete a poll','poll','question'),(139,'edit','Update a poll','poll','question'),(140,'list','View the list of polls','poll','question'),(141,'index','View reports','seo','ganalytic'),(142,'add','Add site','seo','gwebmaster'),(143,'addsitemap','Add sitemap','seo','gwebmaster'),(144,'delete','Delete site','seo','gwebmaster'),(145,'deletesitemap','Delete sitemap','seo','gwebmaster'),(146,'details','View site details','seo','gwebmaster'),(147,'list','List of sites','seo','gwebmaster'),(148,'verify','Verify site','seo','gwebmaster'),(149,'add','Add new link to sitemap','seo','sitemap'),(150,'delete','Remove link from sitemap','seo','sitemap'),(151,'index','View sitemap details','seo','sitemap'),(152,'index','Get backlinks, indexed pages, rank','seo','toolkit'),(153,'add','Create new tag','tag','tag'),(154,'delete','Delete a tag','tag','tag'),(155,'list','View the list of tags','tag','tag'),(156,'browse','Browse uploaded files','upload','file'),(157,'upload','Upload file to server','upload','file'),(158,'resetpin','Reset PIN number','client','client'),(159,'activate','Activate / Deactivate client','client','client'),(167,'add','Create new promote','promote','promote'),(168,'delete','Delete a promote','promote','promote'),(169,'edit','Edit a promote','promote','promote'),(170,'list','View the list of promote','promote','promote'),(171,'list','View the list of Extra Sim','extrasim','extrasim'),(172,'edit','Edit an Extra Sim','extrasim','extrasim'),(173,'delete','Delete an Extra Sim','extrasim','extrasim'),(174,'add','Create new Extra Sim','extrasim','extrasim'),(175,'add','Create new Extra Sim','iso','iso'),(176,'delete','Delete an Extra Sim','iso','iso'),(177,'edit','Edit an Extra Sim','iso','iso'),(178,'list','View the list of Iso fields','iso','iso'),(181,'list','View the list of Setting','setting','setting'),(182,'edit','Edit a Setting','setting','setting'),(183,'delete','Delete a Setting','setting','setting'),(184,'add','Create new Setting','setting','setting'),(185,'delete','Delete error','core','log'),(186,'list','List errors','core','log'),(187,'add','Create new Prompts','prompt','prompt'),(188,'delete','Delete a Prompts','prompt','prompt'),(189,'edit','Edit a Prompt','prompt','prompt'),(190,'list','View the list of Prompts','prompt','prompt'),(191,'activate','Active prompt','prompt','prompt'),(192,'list','View the list of Integration','integration','integration'),(193,'edit','Edit a Integration','integration','integration'),(194,'delete','Delete a Integration','integration','integration'),(195,'add','Create new Integration','integration','integration'),(196,'activate','activate','integration','integration'),(197,'underapproval','Mobile Phone Approval','client','client'),(198,'pdf','Export to PDF','client','client');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
INSERT INTO `core_role` VALUES (1,'admin','Administrator',0),(2,'Employees','Employees',0),(3,'Test','test',0);
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
INSERT INTO `core_session` VALUES ('5uqbbnia5jtmu10t32e27sqer4l8ufta','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"37a7aaafd2bc31e03cb2bc8a7b38b0c1\";}filters|a:1:{s:7:\"filters\";N;}',1400754916,36000),('8g6cuolprai81d7coko3qdl68vr6bo90','',1401198432,36000),('ntgr07a0a9uvi3ig8m0vdlo87hcpol97','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:9:\"alaaduksi\";s:8:\"password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:9:\"full_name\";s:4:\"Alaa\";s:5:\"email\";s:21:\"aduksi@barmajeyat.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";s:19:\"2012-07-19 12:43:03\";s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"2\";s:9:\"role_name\";s:9:\"Employees\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"f2d8721b15c415923a5d709898fcf265\";}filters|a:1:{s:7:\"filters\";N;}',1400754931,36000),('q8ldl38gl2ssi3tfiblfb5oufkov3sis','Zend_Auth|a:1:{s:7:\"storage\";O:16:\"Core_Models_User\":1:{s:14:\"\0*\0_properties\";a:11:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"password\";s:32:\"6152afbe654c37ad257492ea71cde69a\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:22:\"alaa_bmw11@hotmail.com\";s:9:\"is_active\";s:1:\"1\";s:12:\"created_date\";N;s:14:\"logged_in_date\";N;s:9:\"is_online\";s:1:\"0\";s:7:\"role_id\";s:1:\"1\";s:9:\"role_name\";s:5:\"admin\";}}}Mymo_Controller_Action_Helper_Csrfsaltcsrf|a:1:{s:5:\"token\";s:32:\"5241008bef984dd59908135fa27ece5d\";}',1401182469,36000),('sdpjt74frf14et54uhfb9cuvg32tv734','',1401363455,36000);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_translation`
--

LOCK TABLES `core_translation` WRITE;
/*!40000 ALTER TABLE `core_translation` DISABLE KEYS */;
INSERT INTO `core_translation` VALUES (74,1,'Client_Models_Client',1,'en',NULL),(75,2,'Client_Models_Client',2,'en',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iso`
--

LOCK TABLES `iso` WRITE;
/*!40000 ALTER TABLE `iso` DISABLE KEYS */;
INSERT INTO `iso` VALUES (1,'account_sender',19,'account_sender','1',1,2,''),(2,'processing_code',6,'','0',3,4,''),(3,'amount_transaction',12,'amount_sender','1',5,6,''),(4,'transaction_date_time',10,'date_time','1',11,12,''),(5,'system_trace_audit_number',6,'','0',17,18,''),(6,'time',6,'time','1',19,20,''),(7,'date',4,'date','1',21,22,''),(8,'identification_code',11,'','0',37,38,''),(9,'response_code',2,'','0',39,40,''),(11,'additional_data_private',9,'','0',41,42,''),(12,'currecncy_code',3,'currency','1',43,44,''),(13,'country_code',3,'country','1',45,46,''),(14,'original_data_elements',42,'','0',47,48,''),(15,'mymo_sender',10,'mymo_sender','1',49,50,''),(16,'mymo_receiver',10,'mymo_receiver','1',51,52,''),(17,'amount_receiver',12,'amount_receiver','1',53,54,''),(18,'mymo_comm',12,'mymo_comm','1',55,56,''),(19,'bank_comm',12,'bank_comm','1',57,58,''),(20,'merchant_comm',12,'merchant_comm','1',59,60,''),(21,'settlement_amount',12,'','0',7,8,NULL),(22,'cardholder_billing',12,'','0',9,10,NULL),(23,'settlement_conversion_rate',8,'','0',13,14,NULL),(24,'cardholder_billing_conversion_rate',8,'','0',15,16,NULL),(25,'expiration date',4,'','0',23,24,NULL),(26,'merchants_type',4,'','0',25,26,NULL),(27,'point_of_service_entry_mode',3,'','0',27,28,NULL),(28,'acquiring_institution id_code',11,'','0',29,30,NULL),(29,'track_2_data',37,'','0',31,32,NULL),(30,'retrieval_reference_number',12,'','0',33,34,NULL),(31,'card_acceptor_terminal_id',8,'','0',35,36,NULL),(32,'cdr_id',10,'cdr_id','1',61,62,NULL),(33,'account_receiver',19,'account_receiver','1',63,64,NULL),(34,'account_mymo',19,'mymo_banking_account','1',65,66,NULL),(35,'trx_method',5,'trx_method','1',67,68,NULL);
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
  `account_sender` tinyint NOT NULL,
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
  `extra_data` tinyint NOT NULL,
  `account_receiver` tinyint NOT NULL,
  `mymo_banking_account` tinyint NOT NULL,
  `trx_method` tinyint NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (2,1,'HSM URL','hsm_url','http://192.168.15.248/hsm/index.php','text',1,2,'1',1),(3,2,'ISO Message URL','iso_url','http://192.168.15.248/oracle/oracle.php','text',3,4,'1',1),(4,1,'LMK','lmk','MjY1Mjfb0a+pm5elmKTQybKj26zHlqvK2ZubrJ+tpMeZqpra0s3y167VztjU3g==','text',5,6,'1',1),(8,6,'Retries Call Back','set_8','2','text',13,14,'1',1),(9,21,'Trigger Path','tigger_path','http://192.168.15.248/trigger','text',45,46,'1',1),(25,6,'Retry Time','time','15','text',13,14,'1',1),(26,6,'Wait Time','waittime','30','text',13,14,'1',1),(27,6,'Channel','channel','','text',13,14,'1',1),(28,7,'bank_ip','bank_ip','192.168.15.248','text',15,16,'1',1),(29,22,'mymo_banking_account','mymo_banking_account','11/22/52/6558428/98','text',17,18,'1',1),(30,23,'ivr_ip','ivr_ip','http://192.168.15.246','text',19,20,'1',1),(31,24,'iso_waiting','iso_waiting','5','text',21,22,'1',1),(32,25,'sms_ip','sms_ip','192.168.15.244','text',23,24,'1',1),(33,6,'Channel Name','channel_name','SIP','text',27,28,'1',1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `sms_body` text NOT NULL,
  `sms_id` varchar(55) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` VALUES (1,2,'hello bbbb','1',1,'2014-02-09 12:02:41'),(2,2,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو','1',1,'2014-02-09 12:02:03'),(3,2,'اهلا و سهلا','1',1,'2014-02-09 13:02:47'),(4,32,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 14:02:28'),(5,2,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 14:02:00'),(6,2,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:19'),(7,2,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:31'),(8,1,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(9,2,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(10,3,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(11,4,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(12,5,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(13,6,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(14,8,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(15,9,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(16,15,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(17,32,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:20'),(18,37,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(19,38,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(20,39,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(21,41,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(22,42,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(23,46,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(24,49,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(25,51,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(26,55,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(27,56,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:53'),(28,57,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(29,58,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(30,59,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(31,60,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(32,61,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(33,62,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(34,64,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(35,65,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(36,66,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(37,67,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-09 16:02:10'),(38,8,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 12:02:49'),(39,8,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 12:02:07'),(40,7,'عميلنا العزيز: يرجى العلم أنه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 12:02:20'),(41,11,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:50'),(42,12,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:28'),(43,13,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:28'),(44,16,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:28'),(45,33,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:28'),(46,34,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:28'),(47,36,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:28'),(48,53,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:59'),(49,54,'عميلنا العزيز: يرجى العلم انه تم تفعيل خدمة مايمو على هاتفك الخلوي وسيتم ارسال بطاقتك ورقمك السري قريبا من خلال صندوق توفير البريد.\r\nاهلا بكم في مايمو.','1',1,'2014-02-10 15:02:59');
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_method`
--

LOCK TABLES `transaction_method` WRITE;
/*!40000 ALTER TABLE `transaction_method` DISABLE KEYS */;
INSERT INTO `transaction_method` VALUES (1,'Individual User'),(2,'Corporate User'),(3,'Bills'),(4,'Mall'),(5,'Lost pin number'),(6,'Lost Phone'),(7,'Change Limit'),(8,'Change PIN'),(9,'Change Password'),(10,'Lost call back number'),(11,'Credit'),(14,'Donations');
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
/*!50013 DEFINER=`mymo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `iso_content` AS select `cdr`.`id` AS `cdr_id`,`cl`.`client_id` AS `client_id`,`cdr`.`account_sender` AS `account_sender`,`cdr`.`amount` AS `amount`,`cc`.`amount_sender` AS `amount_sender`,`cc`.`amount_receiver` AS `amount_receiver`,`cc`.`mymo_comm` AS `mymo_comm`,`cc`.`bank_comm` AS `bank_comm`,`cc`.`merchant_comm` AS `merchant_comm`,`cdr`.`country_id` AS `country`,`cdr`.`src_mymoid` AS `mymo_sender`,`cdr`.`dst_mymoid` AS `mymo_receiver`,date_format(`cdr`.`end`,'%m%d%H%i%s') AS `date_time`,date_format(`cdr`.`end`,'%H%i%s') AS `time`,date_format(`cdr`.`end`,'%m%d') AS `date`,`cdr`.`currency` AS `currency`,`cdr`.`extra_data` AS `extra_data`,`cdr`.`account_receiver` AS `account_receiver`,`se`.`value` AS `mymo_banking_account`,`cdr`.`trx_method` AS `trx_method` from (((`cdr` join `cdr_commission` `cc`) left join `setting` `se` on((`se`.`key` = 'mymo_banking_account'))) join `client` `cl`) where ((`cdr`.`id` = `cc`.`cdr_id`) and ((`cl`.`mymo_id` = `cdr`.`src_mymoid`) or (`cl`.`mymo_id` = `cdr`.`dst_mymoid`))) group by `cc`.`cdr_id` */;
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

-- Dump completed on 2014-08-25 14:53:12
