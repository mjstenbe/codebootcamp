CREATE DATABASE  IF NOT EXISTS `yritys` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `yritys`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: localhost    Database: yritys
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `osasto`
--

DROP TABLE IF EXISTS `osasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osasto` (
  `ostun` smallint(6) NOT NULL,
  `osnimi` varchar(15) NOT NULL,
  `koodi` varchar(30) default NULL,
  PRIMARY KEY  (`ostun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osasto`
--

LOCK TABLES `osasto` WRITE;
/*!40000 ALTER TABLE `osasto` DISABLE KEYS */;
INSERT INTO `osasto` VALUES (1,'Tietohallinto','THa'),(2,'Talousosasto','TaO'),(3,'Tuotanto','Tuo'),(4,'Markkinointi','Mar');
/*!40000 ALTER TABLE `osasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekti`
--

DROP TABLE IF EXISTS `projekti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekti` (
  `ptun` varchar(4) NOT NULL,
  `pnimi` varchar(30) NOT NULL,
  `priorit` smallint(6) default NULL,
  `sijainti` varchar(15) default NULL,
  PRIMARY KEY  (`ptun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekti`
--

LOCK TABLES `projekti` WRITE;
/*!40000 ALTER TABLE `projekti` DISABLE KEYS */;
INSERT INTO `projekti` VALUES ('P1','Sähköinen laskutus',2,'Turku'),('P2','Raportoinnin parannus',1,'Kerava'),('P3','Tilastointi',NULL,NULL),('P4','Henkilöstön koulutus',2,'Turku'),('P5','Asiakaspalvelu',3,'Joensuu'),('P6','SAP-käyttöönotto',1,'Kerava');
/*!40000 ALTER TABLE `projekti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proj_henk`
--

DROP TABLE IF EXISTS `proj_henk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proj_henk` (
  `ptun` char(4) NOT NULL,
  `htun` char(4) NOT NULL,
  `tunnit` smallint(6) default NULL,
  `tunnit_suun` smallint(6) default NULL,
  PRIMARY KEY  (`ptun`,`htun`),
  KEY `prhe_henk` (`htun`),
  CONSTRAINT `prhe_henk` FOREIGN KEY (`htun`) REFERENCES `henkilo` (`htun`),
  CONSTRAINT `prhe_proj` FOREIGN KEY (`ptun`) REFERENCES `projekti` (`ptun`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proj_henk`
--

LOCK TABLES `proj_henk` WRITE;
/*!40000 ALTER TABLE `proj_henk` DISABLE KEYS */;
INSERT INTO `proj_henk` VALUES ('P1','2222',300,300),('P1','2233',150,200),('P1','2333',200,200),('P1','2345',100,100),('P2','2222',0,100),('P4','2333',150,NULL),('P4','2345',200,250),('P4','3567',300,200),('P5','2233',500,600),('P5','3567',200,200);
/*!40000 ALTER TABLE `proj_henk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `henkilo`
--

DROP TABLE IF EXISTS `henkilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `henkilo` (
  `htun` char(4) NOT NULL,
  `enimi` varchar(10) default NULL,
  `snimi` varchar(10) default NULL,
  `kunta` varchar(8) default NULL,
  `tutk` char(6) default NULL,
  `palkka` decimal(7,2) default NULL,
  `veropr` decimal(3,1) default NULL,
  `pvm` datetime default NULL,
  `ostun` smallint(6) default NULL,
  PRIMARY KEY  (`htun`),
  KEY `henk_os_fk` (`ostun`),
  CONSTRAINT `henk_os_fk` FOREIGN KEY (`ostun`) REFERENCES `osasto` (`ostun`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `henkilo`
--

LOCK TABLES `henkilo` WRITE;
/*!40000 ALTER TABLE `henkilo` DISABLE KEYS */;
INSERT INTO `henkilo` VALUES ('2222','Saku','Koivu','Turku','Yo','2900.00','24.0','2005-03-01 00:00:00',3),('2233','Hannu','Virta','Turku','FM','3100.00','32.0','1995-10-10 00:00:00',1),('2234','Liisa','Lehtipuu','Kerava','FK','2200.00','18.0','1999-12-01 00:00:00',4),('2333','Katja','Kataja','Turku',NULL,'2300.00','19.0','2005-05-01 00:00:00',3),('2345','Keijo','Kuusi','Kerava','Trad.','2580.00','24.0','2000-08-12 00:00:00',NULL),('3567','Kari','Mänty','Helsinki','Yo','2650.00','22.0','1997-09-15 00:00:00',1),('3568','Hannu','Haapanen','Helsinki','DI','3400.00','37.0','1993-05-10 00:00:00',3);
/*!40000 ALTER TABLE `henkilo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-03-18  8:48:53
