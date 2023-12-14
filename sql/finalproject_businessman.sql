CREATE DATABASE  IF NOT EXISTS `finalproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finalproject`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: finalproject-sist0615.crsfihj2wlpy.ap-northeast-2.rds.amazonaws.com    Database: finalproject
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `businessman`
--

DROP TABLE IF EXISTS `businessman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businessman` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `business_id` varchar(20) NOT NULL,
  `business_pass` varchar(50) NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `business_company` varchar(100) NOT NULL,
  `business_hp` varchar(50) NOT NULL,
  `business_email` varchar(100) NOT NULL,
  `business_approval` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`business_id`),
  UNIQUE KEY `idx_UNIQUE` (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessman`
--

LOCK TABLES `businessman` WRITE;
/*!40000 ALTER TABLE `businessman` DISABLE KEYS */;
INSERT INTO `businessman` VALUES (1,'0104621198','!Wlsvud123','최진평','(주)푱이네펜션','010-4621-1989','wlsvud5789@naver.com',1),(10,'1004040932','12341234aA!','김수정','(주)심라호텔','010-7777-7777','jus@hanmail.net',0),(5,'1212121212','123123qQ@','테스트','테스트상호','010-3461-31613','adhg223@naver.com',1),(8,'1234123412','123123qQ@','최성현','성현취업','010-9773-7503','tjdgus@naver.com',1),(3,'2016202410','12341234aA!','홍성경','(주)경성','010-9064-0571','sgyeong@gmail.com',1),(4,'7070100615','Tjdtls123!','이성신','(주)서울숙박조합','010-8507-6929','ssung2sin@naver.com',1);
/*!40000 ALTER TABLE `businessman` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 17:48:47
