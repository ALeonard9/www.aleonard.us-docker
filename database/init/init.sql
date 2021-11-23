--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `googleid` varchar(254) DEFAULT NULL,
  `poster_url` varchar(254) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `country_code` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_code_UNIQUE` (`country_code`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crytpo`
--

DROP TABLE IF EXISTS `crytpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crytpo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(254) NOT NULL,
  `amount` float NOT NULL,
  `cost` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `g_user_books`
--

DROP TABLE IF EXISTS `g_user_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_user_books` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `books_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `notes` text,
  `g_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `g_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `g_first` timestamp NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `unique_index` (`user_id`,`books_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `g_user_countries`
--

DROP TABLE IF EXISTS `g_user_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_user_countries` (
  `countries_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `notes` text,
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `g_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `g_first` timestamp NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `unique_index` (`user_id`,`countries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `g_user_movies`
--

DROP TABLE IF EXISTS `g_user_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_user_movies` (
  `movies_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `notes` text,
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `g_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `g_first` timestamp NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `unique_index` (`user_id`,`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1095 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `g_user_tv`
--

DROP TABLE IF EXISTS `g_user_tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_user_tv` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `tv_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` varchar(254) DEFAULT NULL,
  `g_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `g_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `freeze` int(11) DEFAULT '0',
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `unique_index` (`user_id`,`tv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `g_user_tvepisodes`
--

DROP TABLE IF EXISTS `g_user_tvepisodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_user_tvepisodes` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `tvepisode_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `watched` int(11) DEFAULT NULL,
  `g_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `g_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `g_first` timestamp NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `unique_index` (`user_id`,`tvepisode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21288 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `orion`.`g_user_tvepisodes_AFTER_INSERT` AFTER INSERT ON `g_user_tvepisodes` FOR EACH ROW
BEGIN
  DECLARE vtv_id int DEFAULT (SELECT e.tv_id FROM orion.g_user_tvepisodes g, orion.tvepisodes e WHERE g.tvepisode_id = e.id AND g.g_id = NEW.g_id LIMIT 1 );
  DECLARE vwatched int DEFAULT (SELECT COUNT(*) FROM orion.g_user_tvepisodes g, orion.tvepisodes e WHERE g.tvepisode_id = e.id AND tv_id = vtv_id AND user_id = NEW.user_id AND watched = 1);
  DECLARE vtotal int DEFAULT (SELECT COUNT(*) FROM orion.g_user_tvepisodes g, orion.tvepisodes e WHERE g.tvepisode_id = e.id AND tv_id = vtv_id AND user_id = NEW.user_id AND e.airdate <= CURDATE() LIMIT 1);
  DECLARE vstatus varchar(16) DEFAULT (SELECT status FROM orion.tv WHERE id = vtv_id LIMIT 1);
  IF vwatched <> vtotal THEN 
   UPDATE `orion`.`g_user_tv` SET `status`='Behind' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
  ELSE
    IF vstatus = 'Running' THEN 
     UPDATE `orion`.`g_user_tv` SET `status`='Up to Date' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
	ELSEIF vstatus = 'To Be Determined' THEN
	 UPDATE `orion`.`g_user_tv` SET `status`='Up to Date' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
    ELSEIF vstatus = 'Ended' THEN
     UPDATE `orion`.`g_user_tv` SET `status`='Complete' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
    END IF;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `orion`.`g_user_tvepisodes_AFTER_UPDATE` AFTER UPDATE ON `g_user_tvepisodes` FOR EACH ROW
BEGIN
  DECLARE vtv_id int DEFAULT (SELECT e.tv_id FROM orion.g_user_tvepisodes g, orion.tvepisodes e WHERE g.tvepisode_id = e.id AND g.g_id = NEW.g_id LIMIT 1 );
  DECLARE vwatched int DEFAULT (SELECT COUNT(*) FROM orion.g_user_tvepisodes g, orion.tvepisodes e WHERE g.tvepisode_id = e.id AND tv_id = vtv_id AND user_id = NEW.user_id AND watched = 1);
  DECLARE vtotal int DEFAULT (SELECT COUNT(*) FROM orion.g_user_tvepisodes g, orion.tvepisodes e WHERE g.tvepisode_id = e.id AND tv_id = vtv_id AND user_id = NEW.user_id AND e.airdate <= CURDATE() LIMIT 1);
  DECLARE vstatus varchar(16) DEFAULT (SELECT status FROM orion.tv WHERE id = vtv_id LIMIT 1);
  IF vwatched <> vtotal THEN 
   UPDATE `orion`.`g_user_tv` SET `status`='Behind' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
  ELSE
    IF vstatus = 'Running' THEN 
     UPDATE `orion`.`g_user_tv` SET `status`='Up to Date' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
	ELSEIF vstatus = 'To Be Determined' THEN
	 UPDATE `orion`.`g_user_tv` SET `status`='Up to Date' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
    ELSEIF vstatus = 'Ended' THEN
     UPDATE `orion`.`g_user_tv` SET `status`='Complete' WHERE `tv_id` = vtv_id AND `user_id` = NEW.user_id;
    END IF;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `g_user_videogames`
--

DROP TABLE IF EXISTS `g_user_videogames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_user_videogames` (
  `videogames_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `notes` longtext,
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `g_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `g_first` timestamp NULL,
  `user_id` int(11) DEFAULT NULL,
  `100_percent` tinyint DEFAULT 0,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `unique_index` (`user_id`,`videogames_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `title` varchar(255) DEFAULT NULL,
  `imdb` varchar(40) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `release_date` datetime NULL,
  `rating_imdb` float NULL,
  `runtime` int NULL,
  `language` varchar(40) NULL,
  `rated` varchar(11) NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `poster_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imdb_UNIQUE` (`imdb`)
) ENGINE=InnoDB AUTO_INCREMENT=1066 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tv`
--

DROP TABLE IF EXISTS `tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `imdb` varchar(254) DEFAULT NULL,
  `tvmaze` int(11) DEFAULT NULL,
  `status` varchar(254) DEFAULT NULL,
  `poster_url` varchar(254) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imdb_UNIQUE` (`imdb`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tvepisodes`
--

DROP TABLE IF EXISTS `tvepisodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tvepisodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `tvmaze` int(11) DEFAULT NULL,
  `tv_id` int(11) DEFAULT NULL,
  `airdate` date DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `season_number` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tvmaze_UNIQUE` (`tvmaze`)
) ENGINE=InnoDB AUTO_INCREMENT=27947 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) DEFAULT NULL,
  `display_name` varchar(254) DEFAULT NULL,
  `user_group` varchar(254) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `videogames`
--

DROP TABLE IF EXISTS `videogames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videogames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `igdb` int(11) DEFAULT NULL,
  `poster_url` varchar(100) DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `time_to_beat` int(11) DEFAULT NULL,
  `igdb_last_update` timestamp DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `igdb_UNIQUE` (`igdb`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
