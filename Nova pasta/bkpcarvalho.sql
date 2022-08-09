CREATE DATABASE  IF NOT EXISTS `carvalho` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `carvalho`;
-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: carvalho
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

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
-- Table structure for table `alocacao`
--

DROP TABLE IF EXISTS `alocacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alocacao` (
  `IDUSUARIO` int(11) DEFAULT NULL,
  `IDRECURSOS` int(11) DEFAULT NULL,
  `IDESPACO` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRIORIDADE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DATAINICIO` date DEFAULT NULL,
  `DATAFIM` date DEFAULT NULL,
  `HORAINICIO` time DEFAULT NULL,
  `HORAFIM` time DEFAULT NULL,
  `ASSUNTO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EQUIPAMENTO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SALAREUNIAO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDUSUARIO` (`IDUSUARIO`),
  KEY `IDRECURSOS` (`IDRECURSOS`),
  KEY `IDESPACO` (`IDESPACO`),
  CONSTRAINT `alocacao_ibfk_1` FOREIGN KEY (`IDUSUARIO`) REFERENCES `usuarios` (`IDUSUARIO`),
  CONSTRAINT `alocacao_ibfk_2` FOREIGN KEY (`IDRECURSOS`) REFERENCES `recursos` (`IDRECURSOS`),
  CONSTRAINT `alocacao_ibfk_3` FOREIGN KEY (`IDESPACO`) REFERENCES `espaco` (`IDESPACO`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alocacao`
--

LOCK TABLES `alocacao` WRITE;
/*!40000 ALTER TABLE `alocacao` DISABLE KEYS */;
INSERT INTO `alocacao` VALUES (1,NULL,NULL,125,NULL,'Alta','2021-09-25',NULL,'12:00:00','13:00:00','dadasd','Notebook','6° Andar'),(1,NULL,NULL,126,'MARCOS','Alta','2021-09-25',NULL,'13:00:00','15:00:00','u','Notebook','2° Andar'),(1,NULL,NULL,127,NULL,'Alta','2021-09-25',NULL,'08:00:00','17:00:00','k','Sem necessidade','Auditorio'),(1,NULL,NULL,128,NULL,'Alta','2021-09-25',NULL,'18:00:00','20:00:00','ug','Sem necessidade','Auditorio'),(1,NULL,NULL,129,NULL,'Media','2020-11-10',NULL,'11:00:00','12:00:00','yt7ui','Notebook','6° Andar'),(1,NULL,NULL,130,NULL,'Alta','2021-10-10',NULL,'10:00:00','14:00:00','saddd','Notebook','6° Andar'),(1,NULL,NULL,131,NULL,'Alta','2021-09-30',NULL,'12:00:00','13:00:00','asdasd','Notebook','6° Andar'),(1,NULL,NULL,132,NULL,'Alta','2022-01-22',NULL,'10:00:00','12:00:00','adsadad','Notebook','2° Andar'),(11,NULL,NULL,133,NULL,'Alta','2023-03-23',NULL,'12:00:00','13:00:00','adsdad','Notebook','6° Andar'),(1,NULL,NULL,134,NULL,'Alta','2020-05-23',NULL,'10:00:00','11:00:00','adasdad','Notebook','6° Andar'),(1,NULL,NULL,135,NULL,'Alta','2020-02-20',NULL,'11:00:00','12:00:00','asdsadsa','Notebook','6° Andar'),(11,NULL,NULL,136,NULL,'Alta','1999-02-20',NULL,'11:00:00','12:00:00','asasdasd','Notebook','6° Andar'),(11,NULL,NULL,137,NULL,'Alta','2023-09-20',NULL,'13:00:00','14:00:00','asdsadad','Notebook','6° Andar'),(11,NULL,NULL,138,NULL,'Alta','2021-09-20',NULL,'13:30:00','16:00:00','asdasd','Sem necessidade','6° Andar'),(11,NULL,NULL,139,NULL,'Alta','2020-09-20',NULL,'13:20:00','13:00:00','asdd','Sem necessidade','6° Andar');
/*!40000 ALTER TABLE `alocacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espaco`
--

DROP TABLE IF EXISTS `espaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `espaco` (
  `IDESPACO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LOCALIZACAO` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IDESPACO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espaco`
--

LOCK TABLES `espaco` WRITE;
/*!40000 ALTER TABLE `espaco` DISABLE KEYS */;
/*!40000 ALTER TABLE `espaco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recursos`
--

DROP TABLE IF EXISTS `recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recursos` (
  `IDRECURSOS` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARCA` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IDRECURSOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recursos`
--

LOCK TABLES `recursos` WRITE;
/*!40000 ALTER TABLE `recursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SENHA` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SETOR` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FUNCAO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `administrador` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'MARCOS','802592212','4534','54546','S'),(5,'admin','admin','CPD','Trocha','N'),(11,'GIOVANNI','36417431','36417431','GERENTE DE TI','S'),(21,'administrador','12345','CPD','KKK','S');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'carvalho'
--

--
-- Dumping routines for database 'carvalho'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-04 10:07:46
