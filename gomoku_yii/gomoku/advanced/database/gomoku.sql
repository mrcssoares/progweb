-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: gomoku
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sexo` char(4) NOT NULL,
  `comentarios` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cigla` varchar(4) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Sistemas de Informação','SI01','Bacharelado em Sistemas de informação'),(2,'Artes','AT01','teste de texto para um curso teste com uma cigla teste e esse testo teste aqui que acho que já falei sobre ele.');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogada`
--

DROP TABLE IF EXISTS `jogada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_partida` int(11) DEFAULT NULL,
  `linha` int(11) NOT NULL,
  `coluna` int(11) NOT NULL,
  `data_hota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_partida` (`id_partida`),
  CONSTRAINT `fk_id_partida` FOREIGN KEY (`id_partida`) REFERENCES `partida` (`id`),
  CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogada`
--

LOCK TABLES `jogada` WRITE;
/*!40000 ALTER TABLE `jogada` DISABLE KEYS */;
INSERT INTO `jogada` VALUES (163,13,22,1,6,NULL),(164,13,22,1,7,NULL),(165,13,22,1,8,NULL),(166,13,22,1,8,NULL),(167,13,22,2,10,NULL),(168,13,22,2,9,NULL),(169,13,22,3,10,NULL),(170,13,22,3,9,NULL),(171,13,22,3,10,NULL),(172,13,22,4,10,NULL),(173,13,22,4,9,NULL),(174,13,22,4,9,NULL),(175,13,22,4,10,NULL),(176,13,22,1,11,NULL),(177,13,22,1,10,NULL),(178,13,22,1,10,NULL),(179,13,22,1,11,NULL),(180,13,22,1,11,NULL),(181,17,23,1,5,NULL),(182,17,23,1,5,NULL),(183,17,23,1,7,NULL),(184,17,23,1,7,NULL),(185,17,23,1,7,NULL),(186,17,23,1,7,NULL),(187,17,23,1,7,NULL),(188,17,23,1,6,NULL),(189,17,23,1,6,NULL),(190,17,23,1,6,NULL),(191,17,23,1,7,NULL),(192,17,23,1,10,NULL),(193,17,23,1,10,NULL),(194,17,23,1,9,NULL),(195,17,23,1,11,NULL),(196,17,23,2,8,NULL),(197,17,23,1,9,NULL),(198,17,23,1,10,NULL),(199,17,23,1,13,NULL),(200,17,23,1,14,NULL),(201,17,23,1,14,NULL),(202,17,23,2,14,NULL),(203,17,23,2,14,NULL),(204,17,23,2,13,NULL),(205,17,23,2,12,NULL),(206,17,23,2,12,NULL),(207,17,23,2,8,NULL),(208,17,23,2,8,NULL),(209,17,23,2,8,NULL),(210,17,23,2,11,NULL),(211,17,23,6,7,NULL),(212,19,24,2,9,NULL),(213,19,24,7,9,NULL),(214,19,24,5,6,NULL),(215,19,24,4,5,NULL),(216,19,24,4,5,NULL),(217,19,24,1,5,NULL),(218,19,24,1,4,NULL),(219,19,24,2,3,NULL),(220,19,24,2,3,NULL),(221,19,24,2,3,NULL);
/*!40000 ALTER TABLE `jogada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1472835454),('m130524_201442_init',1472835459);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_1` int(11) DEFAULT NULL,
  `id_user_2` int(11) DEFAULT NULL,
  `vencedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user_1` (`id_user_1`),
  KEY `id_user_2` (`id_user_2`),
  KEY `vencedor` (`vencedor`),
  CONSTRAINT `fk_user_1` FOREIGN KEY (`id_user_1`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_user_2` FOREIGN KEY (`id_user_2`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_vencedor` FOREIGN KEY (`vencedor`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (19,12,7,NULL),(20,7,NULL,NULL),(21,14,13,NULL),(22,13,15,NULL),(23,17,16,NULL),(24,19,18,NULL),(25,18,19,NULL);
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_curso` int(11) NOT NULL,
  `pontuacao` int(11) DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `fk_id_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'marcos','mss3@icomp.ufam.edu.br',1,NULL,'IIfg2C14cvCNAF-zCa68bX4FvJyjq2rY','$2y$13$fr/nCDRmmBmv5TV.kulDUeL5/xxM7bYgy5JrxAeFHBJgQJfXYmq2W',NULL,10,1473960460,1473960460),(9,'teste','e@mail.com',2,NULL,'S9aoGfLTYp7naHJ0n14KjPjBUHCssANP','$2y$13$uekEZiLneKqxArMHiKyNputQSchnvxRCsduqlYGYaeDI/oQzhKwgW',NULL,10,1473960890,1473960890),(10,'jonas','email@dominio.subdominio',1,NULL,'GlUyz5nimv4llHkeJEh98Up-dsrqNquJ','$2y$13$zm6ma9n6BN0WczFz5PJCvOL0dyyz74uRWWL/kCeEq/TkG1I/xfAcm',NULL,10,1473961217,1473961217),(11,'sovai','vvai@vai.vai',1,NULL,'R2oo5rDMB-dWvsgJoYEzXlNa7_rtWuoX','$2y$13$OGQEj93uRjlWIdQxTrQSZO1F/9cxUcviZVprcoKcIamTWUrrX8KSi',NULL,10,1473961692,1473961692),(12,'gisele','gisele@icomp.ufam.edu.br',1,NULL,'T7vp0VvjU8WVcxj-NF_Oy0aZkN9ERkz4','$2y$13$8YkgI.wOUmt5YjxoRl78U.c0jYWGTwYq1U5lFLtsaGdCT5rlmYz2K',NULL,10,1474406026,1474406026),(13,'jogador1','jogador1@gmail.com',1,NULL,'YqrraN-Oo4iZzAiBTHJn3lyjCw3-13mI','$2y$13$FnAcWERf6z.eC3.6Uq//GOjjLgmxrNcTs4914PEYKjmV1QVwEoqu.',NULL,10,1474502691,1474502691),(14,'jogador2','jogador2@gmail.com',1,NULL,'GF9KG2OcHigP5MDpSpII8cZisdqtYiBF','$2y$13$B1O8LwtsHA8MkMq1hN12FOOL4K92Rnlhg4YR6wHO0ILmhzd83aa8C',NULL,10,1474502725,1474502725),(15,'jogador3','marcos2@icomp.ufam.edu.br',1,NULL,'0y_i4dkSQBBFIXe1PPBnb5CFcMdD74qB','$2y$13$aBRffaILWunrpIkKjOGLOuBr2VMftsnspm/iS0h6CDNExpLeUuh6m',NULL,10,1474508329,1474508329),(16,'jogador4','marcos3@icomp.ufam.edu.br',1,NULL,'xZhnRhvNV0j796IBFB0ECbGvY586_8z8','$2y$13$55Qq77/ZRsji/vCbMNT.i.R0BxYFkzWy/lC36jX3vPKfyx8Aku7m.',NULL,10,1474508409,1474508409),(17,'jogador5','marcos5@icomp.ufam.edu.br',1,NULL,'uPKEJ_Bt7y4puvt883YPvOMSwt4TG-WC','$2y$13$Panu5h0ituwqSGmNqhICueZVEnkbjUbaJ7pCsVXZX8UTq3w47zr6u',NULL,10,1474508466,1474508466),(18,'teste1','teste1@icomp.com',1,NULL,'UciW_xtTfK-1k0c8_oZHlTJFWNcjrR7c','$2y$13$reBKJcmMBIQyRB8egIeIf.jHfSvmD1mVBznddvMil1IejBeCDIES6',NULL,10,1474513543,1474513543),(19,'testetop','teste@icomp.com.br',1,NULL,'hFF0uAvxgJkxgUD79g0ngy43FjiKbP_W','$2y$13$0IEu51a5L92P.ZlZ/gblQuPNmTcv4wEhmoc56HFQ5u5wS0MQZtxOy',NULL,10,1474513596,1474513596);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-21 23:45:29
