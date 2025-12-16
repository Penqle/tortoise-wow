/*
 Navicat MySQL Data Transfer

 Source Server         : _localhost
 Source Server Type    : MariaDB
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : tw_world

 Target Server Type    : MariaDB
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 11/01/2024 13:18:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gameobject_scripts
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_scripts`;
CREATE TABLE `gameobject_scripts`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `delay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `command` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `datalong` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `datalong2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `datalong3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `datalong4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_param1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_param2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `target_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data_flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dataint` int(11) NOT NULL DEFAULT 0,
  `dataint2` int(11) NOT NULL DEFAULT 0,
  `dataint3` int(11) NOT NULL DEFAULT 0,
  `dataint4` int(11) NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `o` float NOT NULL DEFAULT 0,
  `condition_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gameobject_scripts
-- ----------------------------
INSERT INTO `gameobject_scripts` VALUES (34006, 0, 0, 11, 33219, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Grille Ombrecroc cellule ashcrombe');
INSERT INTO `gameobject_scripts` VALUES (11894, 0, 0, 11, 11876, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Mona secrete');
INSERT INTO `gameobject_scripts` VALUES (32444, 0, 0, 11, 32446, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Grille Ombrecroc cellule vide');
INSERT INTO `gameobject_scripts` VALUES (32443, 0, 0, 11, 20835, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Ombrecroc cour');
INSERT INTO `gameobject_scripts` VALUES (32378, 0, 0, 11, 32373, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Gnomeregan atelier');
INSERT INTO `gameobject_scripts` VALUES (12148, 0, 0, 11, 30084, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Loch Modan');
INSERT INTO `gameobject_scripts` VALUES (26197, 0, 0, 11, 26185, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte DM lourde');
INSERT INTO `gameobject_scripts` VALUES (26192, 0, 0, 11, 26182, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte DM lourde autre');
INSERT INTO `gameobject_scripts` VALUES (26188, 0, 0, 11, 30533, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte DM Usine');
INSERT INTO `gameobject_scripts` VALUES (32442, 0, 0, 11, 32445, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Grille Ombrecroc cellule adamant');
INSERT INTO `gameobject_scripts` VALUES (32260, 0, 0, 11, 32250, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Mona Herode');
INSERT INTO `gameobject_scripts` VALUES (26206, 0, 0, 11, 30534, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte DM ornee de fer');
INSERT INTO `gameobject_scripts` VALUES (11881, 0, 0, 11, 11875, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Mona Chapelle');
INSERT INTO `gameobject_scripts` VALUES (32480, 0, 0, 11, 33241, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Ombrecroc taniere arugal');
INSERT INTO `gameobject_scripts` VALUES (44809, 0, 0, 11, 15012, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Mona cathedrale');
INSERT INTO `gameobject_scripts` VALUES (15351, 0, 0, 11, 15640, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte BRD');
INSERT INTO `gameobject_scripts` VALUES (15351, 20, 0, 12, 15576, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte BRD');
INSERT INTO `gameobject_scripts` VALUES (15351, 0, 0, 11, 15639, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte BRD');
INSERT INTO `gameobject_scripts` VALUES (43177, 0, 0, 11, 43178, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Grille Scholo acces vieux coffre au tresor');
INSERT INTO `gameobject_scripts` VALUES (15351, 20, 0, 11, 15352, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte BRD');
INSERT INTO `gameobject_scripts` VALUES (44811, 0, 0, 11, 15013, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Mona armurerie');
INSERT INTO `gameobject_scripts` VALUES (35848, 2, 0, 10, 11142, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3644.62, -3168.25, 128.52, 5.93, 0, '');
INSERT INTO `gameobject_scripts` VALUES (35848, 2, 0, 10, 11142, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3656.82, -3160.63, 129.03, 4.84, 0, '');
INSERT INTO `gameobject_scripts` VALUES (35848, 2, 0, 10, 11142, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3664.55, -3176.47, 126.42, 2.2, 0, '');
INSERT INTO `gameobject_scripts` VALUES (12609, 2, 0, 10, 12369, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 251.381, 2962.47, 2.76527, 0.860446, 0, '');
INSERT INTO `gameobject_scripts` VALUES (45625, 0, 0, 11, 45626, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Strat baron entree de service');
INSERT INTO `gameobject_scripts` VALUES (42959, 0, 0, 10, 11121, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3816.41, -3691.12, 114.387, 0.87, 0, '');
INSERT INTO `gameobject_scripts` VALUES (42888, 2, 0, 10, 11120, 300000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 3586.99, -2994.21, 125.072, 0.87, 0, '');
INSERT INTO `gameobject_scripts` VALUES (12297, 0, 0, 17, 18605, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject_scripts` VALUES (49958, 0, 0, 11, 49943, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte HT Est');
INSERT INTO `gameobject_scripts` VALUES (361967, 0, 0, 11, 232296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ouverture porte Chromaggus');
INSERT INTO `gameobject_scripts` VALUES (45428, 0, 0, 11, 45427, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Scholo');
INSERT INTO `gameobject_scripts` VALUES (49962, 0, 0, 11, 49948, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte HT Nord');
INSERT INTO `gameobject_scripts` VALUES (21610, 3, 0, 10, 987800, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Madness Trigger (Eclair)');
INSERT INTO `gameobject_scripts` VALUES (21609, 3, 0, 10, 987800, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Madness Trigger (Eclair)');
INSERT INTO `gameobject_scripts` VALUES (21608, 3, 0, 10, 987800, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Madness Trigger (Eclair)');
INSERT INTO `gameobject_scripts` VALUES (28704, 3, 0, 10, 987800, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Madness Trigger (Eclair)');
INSERT INTO `gameobject_scripts` VALUES (21610, 5, 0, 9, 396315, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire portal despwn 17 sec');
INSERT INTO `gameobject_scripts` VALUES (21610, 15, 0, 10, 15085, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Wushoolay');
INSERT INTO `gameobject_scripts` VALUES (21609, 5, 0, 9, 396315, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire portal despwn 17 sec');
INSERT INTO `gameobject_scripts` VALUES (21609, 15, 0, 10, 15084, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Renataki');
INSERT INTO `gameobject_scripts` VALUES (21608, 5, 0, 9, 396315, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire portal despwn 17 sec');
INSERT INTO `gameobject_scripts` VALUES (21608, 15, 0, 10, 15083, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Hazzarah');
INSERT INTO `gameobject_scripts` VALUES (28704, 5, 0, 9, 396315, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fire portal despwn 17 sec');
INSERT INTO `gameobject_scripts` VALUES (28704, 15, 0, 10, 15082, 900000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, -11901.3, -1906.52, 65.36, 0.9, 0, 'Pop Grilek');
INSERT INTO `gameobject_scripts` VALUES (6944, 0, 0, 11, 6943, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte Searing/Loch Modan');
INSERT INTO `gameobject_scripts` VALUES (49960, 0, 0, 11, 49945, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte HT Ouest');
INSERT INTO `gameobject_scripts` VALUES (49967, 0, 0, 11, 49956, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ouverture Porte HT Est (passage secret)');
INSERT INTO `gameobject_scripts` VALUES (45332, 2, 0, 10, 10936, 3000, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3, 1165, -1719, 57, 2, 0, 'A Strange Historian: Joseph Redpath\'s Monument - Summon Joseph Redpath');
INSERT INTO `gameobject_scripts` VALUES (45332, 4, 0, 0, 4, 0, 0, 0, 10936, 50, 8, 2, 6274, 0, 0, 0, 0, 0, 0, 0, 0, 'A Strange Historian: Joseph Redpath - Whisper Text');
INSERT INTO `gameobject_scripts` VALUES (40694, 1, 0, 10, 7091, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 24.745, 413.288, -44.823, 3, 0, 'Shadowforge Cache - Summon Shadowforge Ambusher 1');
INSERT INTO `gameobject_scripts` VALUES (40694, 1, 0, 10, 7091, 120000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 22.386, 410.042, -44.606, 2.3, 0, 'Shadowforge Cache - Summon Shadowforge Ambusher 2');
INSERT INTO `gameobject_scripts` VALUES (30899, 900, 0, 82, 30899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (30899, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (30899, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (32567, 900, 0, 82, 32567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (32567, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (32567, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (32568, 900, 0, 82, 32568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (32568, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (32568, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (32570, 900, 0, 82, 32570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (32570, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (32570, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (32571, 900, 0, 82, 32571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (32571, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (32571, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (32572, 900, 0, 82, 32572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (32572, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (32572, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (32661, 900, 0, 82, 32661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (32661, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (32661, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (32663, 900, 0, 82, 32663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Load to Map');
INSERT INTO `gameobject_scripts` VALUES (32663, 2, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Delete Self on Use');
INSERT INTO `gameobject_scripts` VALUES (32663, 0, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');
INSERT INTO `gameobject_scripts` VALUES (16778, 5, 0, 10, 10882, 30000, 1, 30, 0, 0, 0, 0, 8, 0, -1, 1, -5002.89, -2103.46, 83.81, 1.365, 0, 'Sacred Fire of Life - Summon Arikara');
INSERT INTO `gameobject_scripts` VALUES (46076, 0, 0, 77, 0, 0, 0, 0, 92997, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sharpbeak - Disable Flying');
INSERT INTO `gameobject_scripts` VALUES (46076, 1, 0, 2, 138, 0, 0, 0, 92997, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 8023, 'Sharpbeak\'s Cage - Set Unit Field Bytes 1 (0) (Creature 8023)');
INSERT INTO `gameobject_scripts` VALUES (46076, 2, 0, 60, 3, 0, 0, 1, 92997, 0, 9, 2, 8023, 0, 0, 0, 0, 0, 0, 0, 8023, 'Sharpbeak\'s Cage - On Script - Start Waypoints (Creature 8023)');
INSERT INTO `gameobject_scripts` VALUES (47561, 0, 0, 39, 850220, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8503, 'Avatar of Hakkar Fight: Eternal Flame - Start Script');
INSERT INTO `gameobject_scripts` VALUES (47562, 0, 0, 39, 850220, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8503, 'Avatar of Hakkar Fight: Eternal Flame - Start Script');
INSERT INTO `gameobject_scripts` VALUES (47563, 0, 0, 39, 850220, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8503, 'Avatar of Hakkar Fight: Eternal Flame - Start Script');
INSERT INTO `gameobject_scripts` VALUES (47564, 0, 0, 39, 850220, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8503, 'Avatar of Hakkar Fight: Eternal Flame - Start Script');
INSERT INTO `gameobject_scripts` VALUES (6851, 0, 0, 20, 2, 0, 0, 0, 10435, 50, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Service Entrance Gate - Start Waypoints on Magistrate Barthilas');
INSERT INTO `gameobject_scripts` VALUES (45315, 0, 0, 9, 99885, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Command Tent - Respawn Scarlet Crusade Forward Camp');
INSERT INTO `gameobject_scripts` VALUES (8658, 0, 0, 15, 24831, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Elwynn) - Cast Spell Cannon Prep (Teleport)');
INSERT INTO `gameobject_scripts` VALUES (8658, 0, 0, 15, 24754, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Elwynn) - Cast Spell Cannon Prep (Stun)');
INSERT INTO `gameobject_scripts` VALUES (7705, 0, 0, 15, 24730, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Mulgore) - Cast Spell Cannon Prep (Teleport)');
INSERT INTO `gameobject_scripts` VALUES (7705, 0, 0, 15, 24754, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blastenheimer 5000 Ultra Cannon (Mulgore) - Cast Spell Cannon Prep (Stun)');
INSERT INTO `gameobject_scripts` VALUES (48995, 0, 0, 39, 175891, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Highborne Relic Fragment - Start Script');
INSERT INTO `gameobject_scripts` VALUES (48999, 0, 0, 39, 175891, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Highborne Relic Fragment - Start Script');
INSERT INTO `gameobject_scripts` VALUES (48993, 0, 0, 39, 175891, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Highborne Relic Fragment - Start Script');
INSERT INTO `gameobject_scripts` VALUES (48998, 0, 0, 39, 175891, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Highborne Relic Fragment - Start Script');
INSERT INTO `gameobject_scripts` VALUES (49376, 0, 0, 10, 13301, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Hive\'Ashi Pod - Summon Creature Hive\'Ashi Ambusher');


SET FOREIGN_KEY_CHECKS = 1;
