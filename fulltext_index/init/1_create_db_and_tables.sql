-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: traktors
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `positions_models`
--

DROP TABLE IF EXISTS `positions_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions_models` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ppi_id` int(11) DEFAULT NULL,
  `mod_name` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`mod_id`),
  KEY `mod_ppi_id` (`mod_ppi_id`),
  FULLTEXT KEY `mod_name` (`mod_name`),
  CONSTRAINT `positions_models_ibfk_1` FOREIGN KEY (`mod_ppi_id`) REFERENCES `ppi_position_import` (`ppi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ppi_position_import`
--

DROP TABLE IF EXISTS `ppi_position_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ppi_position_import` (
  `ppi_id` int(11) NOT NULL AUTO_INCREMENT,
  `ppi_name` varchar(1024) NOT NULL,
  `ppi_category` int(11) DEFAULT NULL,
  `ppi_description` mediumtext,
  `ppi_linked_positions_name` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`ppi_id`),
  FULLTEXT KEY `ppi_name` (`ppi_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6067 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `technical_details`
--

DROP TABLE IF EXISTS `technical_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technical_details` (
  `tch_id` int(11) NOT NULL AUTO_INCREMENT,
  `tch_mod_id` int(11) DEFAULT NULL,
  `tch_property_id` int(11) DEFAULT NULL,
  `tch_property_value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`tch_id`),
  KEY `tch_mod_id` (`tch_mod_id`),
  KEY `tch_property_id` (`tch_property_id`),
  CONSTRAINT `technical_details_ibfk_1` FOREIGN KEY (`tch_mod_id`) REFERENCES `positions_models` (`mod_id`),
  CONSTRAINT `technical_details_ibfk_2` FOREIGN KEY (`tch_property_id`) REFERENCES `technical_details_fields` (`tdf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=463887 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `technical_details_fields`
--

DROP TABLE IF EXISTS `technical_details_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technical_details_fields` (
  `tdf_id` int(11) NOT NULL AUTO_INCREMENT,
  `tdf_name` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`tdf_id`),
  KEY `tdf_name` (`tdf_name`(255)),
  FULLTEXT KEY `tdf_name_2` (`tdf_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-28 10:41:18
