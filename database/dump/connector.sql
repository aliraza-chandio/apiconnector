-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: connector
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_04_07_195133_create_posts_table',1),(6,'2016_06_01_000001_create_oauth_auth_codes_table',2),(7,'2016_06_01_000002_create_oauth_access_tokens_table',2),(8,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(9,'2016_06_01_000004_create_oauth_clients_table',2),(10,'2016_06_01_000005_create_oauth_personal_access_clients_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('25599aca6a7d3fb6d7245a02a62311e808dcd42f53807102d7edec15be0f5941fa72e5dbfe5f4aba',1,1,'LaravelAuthApp','[]',0,'2022-04-08 03:24:27','2022-04-08 03:24:27','2023-04-08 08:24:27'),('35f6320db428726f74acb179b9be248736c51c901186a6e048f52c6435a2b4db3dd06c8d2dcb3344',1,1,'LaravelAuthApp','[]',0,'2022-04-08 03:25:23','2022-04-08 03:25:23','2023-04-08 08:25:23');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','9SbefrQvDduABi7fCj7RNZ7DURGaApLshEowbjwE',NULL,'http://localhost',1,0,0,'2022-04-08 03:15:12','2022-04-08 03:15:12'),(2,NULL,'Laravel Password Grant Client','Ewy7qpI52CTlVjOPdwzPiwi9Nw5AnFpRF8Z3DxDw','users','http://localhost',0,1,0,'2022-04-08 03:15:12','2022-04-08 03:15:12');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-04-08 03:15:12','2022-04-08 03:15:12');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(2,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(3,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(4,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(5,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(6,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(7,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(8,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(9,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(10,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(11,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(12,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(13,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(14,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(15,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(16,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(17,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(18,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(19,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(20,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(21,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(22,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(23,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(24,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(25,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(26,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(27,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(28,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(29,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(30,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(31,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(32,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(33,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(34,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(35,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(36,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(37,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(38,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(39,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(40,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(41,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(42,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(43,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(44,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(45,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(46,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(47,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(48,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(49,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(50,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(51,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(52,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(53,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(54,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(55,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(56,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(57,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(58,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(59,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(60,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(61,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(62,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(63,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(64,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(65,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(66,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(67,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(68,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(69,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(70,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(71,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(72,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(73,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(74,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(75,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(76,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(77,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(78,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(79,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(80,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(81,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(82,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(83,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(84,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(85,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(86,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(87,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(88,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(89,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(90,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(91,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(92,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(93,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(94,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(95,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(96,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(97,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(98,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(99,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(100,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(101,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(102,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(103,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(104,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(105,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(106,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(107,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(108,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(109,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(110,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(111,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(112,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(113,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(114,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(115,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(116,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(117,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(118,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(119,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(120,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(121,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(122,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(123,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(124,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(125,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(126,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(127,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(128,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(129,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(130,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(131,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(132,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(133,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(134,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(135,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(136,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(137,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(138,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(139,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(140,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(141,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(142,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(143,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(144,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(145,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(146,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(147,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(148,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(149,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(150,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(151,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(152,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(153,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(154,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(155,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(156,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(157,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(158,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(159,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(160,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(161,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(162,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(163,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(164,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(165,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(166,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(167,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(168,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(169,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(170,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(171,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(172,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(173,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(174,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(175,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(176,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(177,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(178,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(179,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(180,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(181,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(182,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(183,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(184,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(185,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(186,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(187,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(188,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(189,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(190,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(191,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(192,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(193,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(194,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(195,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(196,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(197,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(198,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(199,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(200,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(201,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(202,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(203,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(204,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(205,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(206,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(207,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(208,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(209,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(210,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(211,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(212,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(213,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(214,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(215,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(216,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(217,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(218,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(219,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(220,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(221,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(222,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(223,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(224,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(225,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(226,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(227,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(228,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(229,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(230,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(231,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(232,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(233,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(234,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(235,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(236,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(237,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(238,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(239,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(240,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(241,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(242,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(243,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(244,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(245,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(246,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(247,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(248,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(249,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(250,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(251,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(252,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(253,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(254,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(255,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(256,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(257,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(258,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(259,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(260,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(261,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(262,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(263,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(264,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(265,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(266,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(267,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(268,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(269,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(270,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(271,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(272,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(273,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(274,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(275,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(276,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(277,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(278,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(279,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(280,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(281,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(282,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(283,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(284,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(285,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(286,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(287,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(288,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(289,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(290,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(291,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(292,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(293,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(294,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(295,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(296,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(297,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(298,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(299,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(300,'title','description',NULL,'2022-04-07 08:11:08','2022-04-07 08:11:08'),(301,'this is the title','this is the description',1,'2022-04-08 03:27:38','2022-04-08 03:27:38');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `users` VALUES (1,'Ali Raza','aliraza@gmail.com',NULL,'$2y$10$Qv6dlaHbj0O8.vRsHw1LJe8.S56stbqCubrqcssH0O2tIUsIwmDEa',NULL,'2022-04-08 03:24:27','2022-04-08 03:24:27');
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

-- Dump completed on 2022-04-08 14:25:46
