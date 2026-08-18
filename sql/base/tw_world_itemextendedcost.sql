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

DROP TABLE IF EXISTS `itemextendedcost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemextendedcost` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `costHonour` int(10) unsigned NOT NULL DEFAULT 0,
  `costArena` int(10) unsigned NOT NULL DEFAULT 0,
  `unknown1` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItem1` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItem2` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItem3` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItem4` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItem5` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItemCount1` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItemCount2` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItemCount3` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItemCount4` int(10) unsigned NOT NULL DEFAULT 0,
  `requiredItemCount5` int(10) unsigned NOT NULL DEFAULT 0,
  `personalRating` int(10) unsigned NOT NULL DEFAULT 0,
  `purchaseGroup` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `itemextendedcost` WRITE;
/*!40000 ALTER TABLE `itemextendedcost` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemextendedcost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
