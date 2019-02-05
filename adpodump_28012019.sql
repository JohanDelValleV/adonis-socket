-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: adpo
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_data`
--

DROP TABLE IF EXISTS `academic_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `academic_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_career` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academic_data_id_user_foreign` (`id_user`),
  KEY `academic_data_id_career_foreign` (`id_career`),
  CONSTRAINT `academic_data_id_career_foreign` FOREIGN KEY (`id_career`) REFERENCES `careers` (`id`),
  CONSTRAINT `academic_data_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_data`
--

LOCK TABLES `academic_data` WRITE;
/*!40000 ALTER TABLE `academic_data` DISABLE KEYS */;
INSERT INTO `academic_data` VALUES (1,1,1,'2018-12-04 22:01:05','2018-12-04 22:01:05'),(2,2,1,'2018-12-04 22:07:10','2018-12-04 22:07:10'),(3,3,1,'2018-12-05 08:19:17','2018-12-05 08:19:17'),(5,5,1,'2018-12-06 08:31:27','2018-12-06 08:31:27'),(6,6,1,'2018-12-06 22:45:17','2018-12-06 22:45:17'),(7,7,1,'2019-01-21 20:02:53','2019-01-21 20:02:53');
/*!40000 ALTER TABLE `academic_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `careers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Ingenieria en Desarrollo de Software','IDS',NULL,NULL),(2,'Ingeniería Petrolera','1',NULL,NULL),(3,'Ingeniería en Tecnologías de Manufactura','2',NULL,NULL),(4,'Ingeniería en Energía','3',NULL,NULL),(5,'Ingeniería Biomédica','4',NULL,NULL),(6,'Ingeniería en Tecnología Ambiental','5',NULL,NULL),(7,'Ingeniería Agroindustrial','6',NULL,NULL),(8,'Ingeniería Mecatrónica','7',NULL,NULL);
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (23,'(2)2018_10_11_161508_create_careers_table',1),(24,'(2)2018_10_11_174105_create_users_data_table',1),(25,'(3)2018_10_11_173754_create_projects_table',1),(26,'2014_10_12_000000_create_users_table',1),(27,'2014_10_12_100000_create_password_resets_table',1),(28,'2018_10_11_160353_create_academic_data_table',1),(29,'2018_10_11_174501_create_requested_careers_table',1),(30,'2018_10_11_174551_create_personal_data_table',1),(31,'2018_11_08_003349_test',1),(32,'2018_11_13_040030_create_teams',1),(33,'2018_11_21_140109_create_requests',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_data`
--

DROP TABLE IF EXISTS `personal_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personal_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `father_lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personal_data_id_user_foreign` (`id_user`),
  CONSTRAINT `personal_data_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_data`
--

LOCK TABLES `personal_data` WRITE;
/*!40000 ALTER TABLE `personal_data` DISABLE KEYS */;
INSERT INTO `personal_data` VALUES (1,'Del Valle','Vargas','Johan','1234567890','Masculino',1,'2018-12-04 22:01:05','2018-12-04 22:01:05'),(2,'Rodriguez','prueba','Edgar','1234567890','Masculino',2,'2018-12-04 22:07:10','2018-12-06 22:34:56'),(3,'pica','papas','pepito','1234567890','Masculino',3,'2018-12-05 08:19:16','2018-12-05 08:19:16'),(5,'la del','barrio','paquita','1234567890','Femenino',5,'2018-12-06 08:31:27','2018-12-06 08:31:27'),(6,'Prueba','prueba','Usuario','1234567890','Masculino',6,'2018-12-06 22:45:17','2018-12-06 22:45:17'),(7,'Del Valle','Vargas','Johan','1234567890','MALE',7,'2019-01-21 20:02:52','2019-01-21 20:02:52');
/*!40000 ALTER TABLE `personal_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_size` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_owner` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_id_owner_foreign` (`id_owner`),
  CONSTRAINT `projects_id_owner_foreign` FOREIGN KEY (`id_owner`) REFERENCES `users_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'adpo','adpo es una herramienta de administrador de proyectos',4,'En Progreso','Conocimientos de Vue',1,'2018-12-04 22:05:57','2018-12-06 07:55:39'),(4,'Brazo mecánico','Realizar el prototipo de un brazo mecánico',4,'En Progreso','-Electrónica',5,'2018-12-06 08:33:46','2018-12-06 22:11:40'),(5,'tu.voto','Es una plataforma para votar electrónicamente.',6,'Pausado','-Programación orientada a objetos',1,'2018-12-06 20:32:06','2018-12-06 22:12:47'),(6,'Bioreactor','Crear un bioreactor',3,'En Progreso','Saber quimica',1,'2018-12-06 22:39:28','2018-12-06 22:39:28');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requested_careers`
--

DROP TABLE IF EXISTS `requested_careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requested_careers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_career` int(10) unsigned NOT NULL,
  `id_project` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requested_careers_id_career_foreign` (`id_career`),
  KEY `requested_careers_id_project_foreign` (`id_project`),
  CONSTRAINT `requested_careers_id_career_foreign` FOREIGN KEY (`id_career`) REFERENCES `careers` (`id`),
  CONSTRAINT `requested_careers_id_project_foreign` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requested_careers`
--

LOCK TABLES `requested_careers` WRITE;
/*!40000 ALTER TABLE `requested_careers` DISABLE KEYS */;
INSERT INTO `requested_careers` VALUES (7,1,4,'2018-12-06 22:11:40','2018-12-06 22:11:40'),(12,5,5,'2018-12-06 22:12:47','2018-12-06 22:12:47'),(13,8,5,'2018-12-06 22:12:47','2018-12-06 22:12:47'),(14,3,6,'2018-12-06 22:39:28','2018-12-06 22:39:28');
/*!40000 ALTER TABLE `requested_careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `id_owner` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `id_project` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requests_id_owner_foreign` (`id_owner`),
  KEY `requests_id_user_foreign` (`id_user`),
  KEY `requests_id_project_foreign` (`id_project`),
  CONSTRAINT `requests_id_owner_foreign` FOREIGN KEY (`id_owner`) REFERENCES `users_data` (`id`),
  CONSTRAINT `requests_id_project_foreign` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`),
  CONSTRAINT `requests_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (38,1,5,1,4,'2018-12-06 22:40:56','2018-12-06 22:40:56'),(43,1,1,1,1,'2019-01-14 07:22:01','2019-01-14 07:22:01'),(44,1,1,1,1,'2019-01-14 07:45:26','2019-01-14 07:45:26'),(45,1,1,1,1,'2019-01-14 07:48:27','2019-01-14 07:48:27');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL,
  `id_project` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_id_user_foreign` (`id_user`),
  KEY `teams_id_project_foreign` (`id_project`),
  CONSTRAINT `teams_id_project_foreign` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`),
  CONSTRAINT `teams_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (25,5,1,'2018-12-06 12:14:13','2018-12-06 12:14:13'),(27,2,1,'2018-12-06 13:38:56','2018-12-06 13:38:56'),(29,5,5,'2018-12-06 22:46:34','2018-12-06 22:46:34'),(31,2,1,'2019-01-14 08:01:58','2019-01-14 08:01:58');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'TestMan','test@test.com',NULL,'$2y$10$ytDqngJ4vQDAuv0YhmRFf..TzfrtFzltbUJdXR.pmYMlEBro3lzky',NULL,'2019-01-17 19:46:19','2019-01-17 19:46:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_data`
--

DROP TABLE IF EXISTS `users_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_data`
--

LOCK TABLES `users_data` WRITE;
/*!40000 ALTER TABLE `users_data` DISABLE KEYS */;
INSERT INTO `users_data` VALUES (1,'test@test.com','12345678','2018-12-04 22:01:05','2018-12-04 22:01:05'),(2,'test2@test.com','12345678','2018-12-04 22:07:09','2018-12-04 22:07:09'),(3,'test3@test.com','12345678','2018-12-05 08:19:16','2018-12-05 08:19:16'),(5,'test5@test.com','12345678','2018-12-06 08:31:27','2018-12-06 08:31:27'),(6,'test6@test.com','12345678','2018-12-06 22:45:16','2018-12-06 22:45:16'),(7,'johantest@test.com','$2y$10$VW7JnI4TQ6K/dvvJ2L6eduRf4lqAJBgMcrPKYM.iSHEH0Mex0RSUG','2019-01-21 20:02:52','2019-01-21 20:02:52');
/*!40000 ALTER TABLE `users_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05  9:47:50
