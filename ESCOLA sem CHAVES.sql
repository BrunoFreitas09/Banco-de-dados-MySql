CREATE DATABASE  IF NOT EXISTS `escola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `escola`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.18

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

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `NOME` char(50) NOT NULL,
  `RG` char(12) NOT NULL,
  `CPF` char(14) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `ENDERECO` char(50) NOT NULL,
  `NUMERO` smallint(6) NOT NULL,
  `COMPLEMENTO` varchar(50) DEFAULT NULL,
  `BAIRRO` char(40) NOT NULL,
  `CIDADE` char(15) NOT NULL,
  `CEP` char(10) NOT NULL,
  `TELEFONE1` char(12) NOT NULL,
  `TELEFONE2` char(12) NOT NULL,
  `PAI` char(50) NOT NULL,
  `MAE` char(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Gabriela da Silva','17.973.898-3','147.520.609-61','1979-03-26','Rua Angelo Zugliani',33,'Casa','Jardim Maria Luiza','Rio Bonito','10.584-471','29-8615-4558','29-8775-2452','Professor Josué','Anabela Fernandes Prado'),(2,'Nacib Saad','22.184.159-9','275.213.650-63','1961-04-14','Rua Major Ascanio',247,'Apto.','Vila Brasil','Nova Iguaçu','20.125-144','10-1718-5110','10-8078-2951','Rômulo Vieira','Dona Arminda'),(3,'Mundinho Falcão','15.486.669-3','221.593.349-78','1981-03-20','Rua Francisco Glicério',1807,'Fundos','Vila Buscariolo','Brasília','18.391-120','22-1897-4072','22-8649-6869','Chico Moleza','Maria Lupicínia'),(4,'Manoel da Onças','26.230.647-2','356.115.460-86','1931-04-02','Rua Visconde Rio Branco',984,'Casa','Centro','Ubá','13.133-763','13-5006-1895','13-9529-3164','João Fulgêncio','Miquelina'),(5,'Coronel Coriolano','13.281.822-9','290.724.003-96','1933-01-27','Avenida do Café',488,'3º Andar, Nº 52','Vila Maria Cristina','Guaragi','28.719-415','28-7366-0612','28-8931-1282','Coronel Ribeirinho','Florzinha Reis'),(6,'Maria Machadão','18.519.133-2','312.467.859-64','1972-05-27','Rua Rangel Pestana',700,'Bloco II','Vila Nova','Juazeiro','14.227-991','23-8564-6322','23-9012-8224','Coronel Amâncio Leal','Marinalva Tavares'),(7,'Zarolha','28.180.997-2','223.168.731.94','1969-11-06','Rua Dr. Quinzinho',511,'Casa','Chacara Peccioli','Rosário do Sul','22.192-012','10-4211-8537','10-9128-3283','Negro Fagundes','Quinquina dos Reis'),(8,'Coronel Ramiro Bastos','29.226.206-6','206.558.702-80','1949-04-18','Avenida Gustavo Chiozzi',405,'Subsolo','Jardim Netinho Prado','Rio de Janeiro','11.235-877','19-8340-8276','19-9651-4781','Alfredo Bastos','Conceição Bastos'),(9,'Tonico Bastos','16.170.745-4','220.178.979-44','1967-02-10','Rua Santa Barbara',165,'A','Vila Vicente','Rio de Janeiro','26.740-878','25-2533-2285','25-9979-4499','Coronel Ramiro Bastos','Gerusa Bastos'),(10,'Doroteia','29.510.610-5','102.566.825-44','1927-09-13','Rua Aristides Lobo Sobrinho',101,'Apto.','Chacara Braz Miraglia','São Paulo','13.474-853','12-4511-6110','12-8145-0515','Dr. Osmundo Pimentel','Olga Bastos');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletins`
--

DROP TABLE IF EXISTS `boletins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boletins` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ALUNO` char(50) DEFAULT NULL,
  `DISCIPLINA` char(25) DEFAULT NULL,
  `DATA` date DEFAULT NULL,
  `NOTA` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletins`
--

LOCK TABLES `boletins` WRITE;
/*!40000 ALTER TABLE `boletins` DISABLE KEYS */;
INSERT INTO `boletins` VALUES (1,'Zarolha','OSA','2012-08-01',5.0),(2,'Mundinho Falcão','Lógica de Programação','2012-06-01',7.1),(3,'Mundinho Falcão','OSA','2012-03-14',3.7),(4,'Maria Machadão','IMC','2012-08-20',4.1),(5,'Maria Machadão','Lógica de Programação','2012-10-30',5.0),(6,'Mundinho Falcão','TLBD-I','2012-08-20',3.5),(7,'Tonico Bastos','OSA','2012-10-14',4.0),(8,'Tonico Bastos','Organização Empresarial','2012-07-24',7.0),(9,'Zarolha','Organização Empresarial','2012-05-06',9.8),(10,'Tonico Bastos','TLBD-I','2012-11-11',2.3),(11,'Maria Machadão','OSA','2012-06-29',6.2),(12,'Zarolha','OSA','2012-09-01',8.6),(13,'Gabriela da Silva','GSO-I','2012-07-11',5.9),(14,'Mundinho Falcão','GSO-I','2012-11-27',3.8),(15,'Tonico Bastos','OSA','2012-08-27',3.4),(16,'Mundinho Falcão','IMC','2012-09-25',8.6),(17,'Zarolha','TLBD-I','2012-07-28',7.2),(18,'Coronel Ramiro Bastos','IMC','2012-10-01',1.1),(19,'Zarolha','IMC','2012-07-23',3.5),(20,'Coronel Ramiro Bastos','Organização Empresarial','2012-02-09',1.3),(21,'Manoel da Onças','Organização Empresarial','2012-08-05',9.3),(22,'Tonico Bastos','OSA','2012-01-05',8.2),(23,'Tonico Bastos','Organização Empresarial','2012-03-01',3.9),(24,'Nacib Saad','TLBD-I','2012-07-09',9.0),(25,'Nacib Saad','GSO-I','2012-06-03',7.5),(26,'Tonico Bastos','TLBD-I','2012-12-10',5.5),(27,'Coronel Ramiro Bastos','GSO-I','2012-05-02',1.8),(28,'Tonico Bastos','GSO-I','2012-06-15',7.4),(29,'Mundinho Falcão','Organização Empresarial','2012-07-09',7.9),(30,'Dorotéia','TLBD-I','2012-07-29',7.9),(31,'Tonico Bastos','OSA','2012-07-23',6.6),(32,'Zarolha','Lógica de Programação','2012-07-07',5.0),(33,'Tonico Bastos','OSA','2012-05-28',3.7),(34,'Coronel Ramiro Bastos','TLBD-I','2012-02-19',9.9),(35,'Manoel da Onças','GSO-I','2012-05-28',3.6),(36,'Coronel Coriolano','GSO-I','2012-07-29',6.1),(37,'Coronel Ramiro Bastos','Lógica de Programação','2012-06-13',8.5),(38,'Mundinho Falcão','OSA','2012-06-26',2.5),(39,'Gabriela da Silva','OSA','2012-09-14',3.4),(40,'Maria Machadão','Organização Empresarial','2012-03-05',5.4),(41,'Maria Machadão','Organização Empresarial','2012-02-24',3.3),(42,'Gabriela da Silva','TLBD-I','2012-02-09',9.3),(43,'Mundinho Falcão','GSO-I','2012-10-28',9.0),(44,'Dorotéia','OSA','2012-06-17',1.2),(45,'Dorotéia','TLBD-I','2012-01-17',7.1),(46,'Dorotéia','Lógica de Programação','2012-10-22',3.8),(47,'Coronel Coriolano','Lógica de Programação','2012-12-15',8.2),(48,'Dorotéia','TLBD-I','2012-01-11',3.1),(49,'Coronel Coriolano','IMC','2012-06-29',2.1),(50,'Maria Machadão','IMC','2012-04-24',5.5),(51,'Maria Machadão','Lógica de Programação','2012-04-15',3.6),(52,'Maria Machadão','GSO-I','2012-08-23',8.0),(53,'Nacib Saad','TLBD-I','2012-04-06',3.8),(54,'Nacib Saad','TLBD-I','2012-06-28',6.6),(55,'Zarolha','Organização Empresarial','2012-08-15',1.4),(56,'Zarolha','TLBD-I','2012-01-23',7.2),(57,'Coronel Coriolano','TLBD-I','2012-02-03',2.7),(58,'Tonico Bastos','OSA','2012-04-25',4.8),(59,'Coronel Coriolano','OSA','2012-05-21',5.1),(60,'Mundinho Falcão','GSO-I','2012-11-04',6.9),(61,'Maria Machadão','GSO-I','2012-09-27',6.2),(62,'Zarolha','Lógica de Programação','2012-07-08',7.8),(63,'Coronel Ramiro Bastos','OSA','2012-07-30',6.0),(64,'Tonico Bastos','Lógica de Programação','2012-08-06',3.2),(65,'Tonico Bastos','Lógica de Programação','2012-12-30',5.1),(66,'Tonico Bastos','Lógica de Programação','2012-04-08',5.1),(67,'Maria Machadão','Lógica de Programação','2012-09-20',9.9),(68,'Coronel Coriolano','OSA','2012-09-12',7.9),(69,'Zarolha','Lógica de Programação','2012-01-21',5.3),(70,'Gabriela da Silva','Organização Empresarial','2012-07-09',5.2),(71,'Mundinho Falcão','TLBD-I','2012-07-06',5.6),(72,'Maria Machadão','TLBD-I','2012-03-13',2.1),(73,'Maria Machadão','Lógica de Programação','2012-11-23',2.7),(74,'Dorotéia','TLBD-I','2012-11-10',2.2),(75,'Nacib Saad','TLBD-I','2012-05-15',8.4),(76,'Dorotéia','Lógica de Programação','2012-08-30',7.7),(77,'Gabriela da Silva','IMC','2012-11-18',8.3),(78,'Nacib Saad','OSA','2012-04-29',4.0),(79,'Maria Machadão','TLBD-I','2012-01-29',6.2),(80,'Zarolha','IMC','2012-04-29',6.6),(81,'Mundinho Falcão','OSA','2012-06-21',8.1),(82,'Mundinho Falcão','OSA','2012-10-30',7.6),(83,'Gabriela da Silva','OSA','2012-06-23',9.5),(84,'Zarolha','Lógica de Programação','2012-08-03',2.4),(85,'Dorotéia','IMC','2012-05-10',9.4),(86,'Nacib Saad','OSA','2012-10-16',8.8),(87,'Coronel Ramiro Bastos','Lógica de Programação','2012-12-29',7.9),(88,'Dorotéia','Lógica de Programação','2012-07-21',2.4),(89,'Coronel Coriolano','TLBD-I','2012-07-05',7.4),(90,'Zarolha','OSA','2012-09-25',8.6),(91,'Maria Machadão','OSA','2012-12-30',1.7),(92,'Mundinho Falcão','TLBD-I','2012-11-30',2.8),(93,'Maria Machadão','OSA','2012-05-20',9.2),(94,'Mundinho Falcão','OSA','2012-06-17',7.7),(95,'Zarolha','Organização Empresarial','2012-09-25',3.0),(96,'Coronel Ramiro Bastos','GSO-I','2012-11-30',5.2),(97,'Manoel da Onças','IMC','2012-06-22',4.9);
/*!40000 ALTER TABLE `boletins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `NOME` char(50) NOT NULL,
  `UF` char(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Brasília','DF'),(2,'Guaragi','PR'),(3,'Juazeiro','BA'),(4,'Nova Iguaçu','RJ'),(5,'Rio Bonito','RJ'),(6,'Rio de Janeiro','RJ'),(7,'Rosário do Sul','RS'),(8,'São Paulo','SP'),(9,'Ubá','MG');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;

UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-05 16:20:02
