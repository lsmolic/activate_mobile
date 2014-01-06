-- MySQL dump 10.13  Distrib 5.5.8, for osx10.6 (i386)
--
-- Host: localhost    Database: carlsjr_production
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'jessica.rudzewicz@72andsunny.com','jessica.rudzewicz@72andsunny.com','610580336b43e81416c8dc308540133170bba4e09603b68ba4d825a51caf979b98a2d9a151c347bf095bfea7a7a5b3c0338e1ef97f5b426542255f6cfc7675de','TM7F8jVbc3jt65bVprri','d37c6f1682b08135ac55b148d974ab8270805615acc6a35765d7eb77df51a83df4f54b806178ccb748c4dee32a8484381f3f567285e89c9a16b019e9792c88cd','2010-09-30 16:48:18','2010-10-01 20:36:21','Jessica','Rudzewicz',1),(6,'justin.gonzaga@72andsunny.com','justin.gonzaga@72andsunny.com','a7468c3121c3842ce488dc8ffe5eba4c8bf423d009841e78061dbc34a8f81e19b142374b683572cb9b3f56f22ad7de88ec6c0bd0ea7aacb2f810504340790031','kDhmaEV3LENZF5A3c7rB','f3b5be5c9f7de435946458284fdaf0bf6abdc056830de143117c54937a06e39d9e6f330ae109018eee593d36456cb125d9feb9e4303cc2416c0e03cb9aed2955','2010-09-30 16:48:40','2010-09-30 16:48:40','Justin','Gonzaga',1),(7,'oscar.leung@72andsunny.com','oscar.leung@72andsunny.com','6197c27566b104eba77da00d24d9b89f4b6f5d380f49b992849b255650006c63f11293c2be85b3e1797b201dda2bbc3e8c31c3fc7a43564e5ac2c4727583c634','Nuya6WMVbpNP0PWJC59X','03bbfe2c7403f82c4be89773ec5d83ae365b8a39f7918769c0ed16fae80132bb72565e27b94cd552e917d5d15c3ab9be406626da2bf3ea96cd6618ee95995800','2010-09-30 16:49:18','2010-09-30 16:49:18','Oscar','Leung',1),(8,'jason.paul@72andsunny.com','jason.paul@72andsunny.com','d73bb2a423e9b294ee54218d7fd9a9a803ca41f688554f5ba54eef8c91dfd9a84b750841c53e4eadeb2f4a297feaf7fab85a081e6b293940a78c0a0c106a7309','I1lEDFou2DClXkv5KfNv','551a00c34f23eef3a29355151db454844bcab55d29d6a03b1bddf2d5ad1c44148f2fffec1dc55b307742f32011486c15aaa726fdc8b96bccd49185692ac2bd7f','2010-09-30 16:49:38','2010-09-30 16:49:38','Jason','Paul',1),(9,'brosenberg@ckr.com','brosenberg@ckr.com','c64ce5b61864bfa2891a02acccd08803d168c15603059fdfc2b3b0e8ca899b457a01d7b22603977be8e8411fbb40336cbe785876217c48f69ae172c22b5d3e70','QWc0L4rgfdduoDiRbkAq','c961432e5cd468b8e3e9a787566fd5b08bacca2dd2ffb6ae012a76076b475968b25772e859832b1c75d87ae371dc7514e4a3e7186cdab870d57cc9502e076a6b','2010-10-09 01:06:15','2010-10-12 18:53:51','Brad','Rosenberg',1),(10,'bmansfield@ckr.com','bmansfield@ckr.com','0545206b09fdd1fd75bd8cbd0e95071bcd7886e046a55da8cd6dd410b861cd63768c1a061be16057b2605d603edb76813842562c45df1edda3523c7fc3a0b1c9','w3qI7W5OAq2lV65ucXQX','4b27008bed33fa0ef9a1f3752f77f1d928277f4e484bea4cdaf1e6587656313fb959b2367a23460cba6a8eed87e3e3d9c89a71b5374172a3321a660622a55de1','2010-10-19 17:57:43','2010-10-19 17:57:43','Beth','Mansfield',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-13 11:28:13
