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
-- Table structure for areatrigger_tavern
-- ----------------------------
DROP TABLE IF EXISTS `areatrigger_tavern`;
CREATE TABLE `areatrigger_tavern`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Identifier',
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Trigger System' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areatrigger_tavern
-- ----------------------------
INSERT INTO `areatrigger_tavern` VALUES (71, 'Westfall - Sentinel Hill Inn');
INSERT INTO `areatrigger_tavern` VALUES (562, 'Elwynn Forest - Goldshire - Lion\'s Pride Inn');
INSERT INTO `areatrigger_tavern` VALUES (682, 'Redridge Mountains - Lakeshire Inn');
INSERT INTO `areatrigger_tavern` VALUES (707, 'Duskwood - Darkshire - Scarlet Raven Inn');
INSERT INTO `areatrigger_tavern` VALUES (708, 'Hillsbrad Foothills - Southshore Inn');
INSERT INTO `areatrigger_tavern` VALUES (709, 'Dustwallow Marsh - Theramore Isle');
INSERT INTO `areatrigger_tavern` VALUES (710, 'Dun Morogh - Kharanos - Thunderbrew Distillery');
INSERT INTO `areatrigger_tavern` VALUES (712, 'Loch Modan - Thelsamar - Stoutlager Inn');
INSERT INTO `areatrigger_tavern` VALUES (713, 'Wetlands - Menethil Harbor - Deepwater Tavern');
INSERT INTO `areatrigger_tavern` VALUES (715, 'Teldrassil - Dolanaar');
INSERT INTO `areatrigger_tavern` VALUES (716, 'Darkshore - Auberdine');
INSERT INTO `areatrigger_tavern` VALUES (717, 'Ashenvale - Astranaar');
INSERT INTO `areatrigger_tavern` VALUES (719, 'Tirisfal Glades - Brill - Gallows\' End Tavern');
INSERT INTO `areatrigger_tavern` VALUES (720, 'Silverpine Forest ');
INSERT INTO `areatrigger_tavern` VALUES (721, 'Hillsbrad Foothills ');
INSERT INTO `areatrigger_tavern` VALUES (722, 'Mulgore ');
INSERT INTO `areatrigger_tavern` VALUES (742, 'The Barrens ');
INSERT INTO `areatrigger_tavern` VALUES (743, 'The Barrens ');
INSERT INTO `areatrigger_tavern` VALUES (843, 'Durotar ');
INSERT INTO `areatrigger_tavern` VALUES (844, 'Swamp of Sorrows ');
INSERT INTO `areatrigger_tavern` VALUES (862, 'Stranglethorn Vale ');
INSERT INTO `areatrigger_tavern` VALUES (982, 'The Barrens ');
INSERT INTO `areatrigger_tavern` VALUES (1022, 'Stonetalon Mountains ');
INSERT INTO `areatrigger_tavern` VALUES (1023, 'Tanaris ');
INSERT INTO `areatrigger_tavern` VALUES (1024, 'Feralas ');
INSERT INTO `areatrigger_tavern` VALUES (1025, 'Feralas ');
INSERT INTO `areatrigger_tavern` VALUES (1606, 'Badlands ');
INSERT INTO `areatrigger_tavern` VALUES (1646, 'Arathi Highlands ');
INSERT INTO `areatrigger_tavern` VALUES (2266, 'Desolace ');
INSERT INTO `areatrigger_tavern` VALUES (2267, 'Desolace ');
INSERT INTO `areatrigger_tavern` VALUES (2286, 'Thousand Needles ');
INSERT INTO `areatrigger_tavern` VALUES (2287, 'Winterspring ');
INSERT INTO `areatrigger_tavern` VALUES (2610, 'Ashenvale ');
INSERT INTO `areatrigger_tavern` VALUES (2786, 'Stormwind backup rest');
INSERT INTO `areatrigger_tavern` VALUES (178, 'Strahnbrad');
INSERT INTO `areatrigger_tavern` VALUES (1042, 'Wildhammer Keep');
INSERT INTO `areatrigger_tavern` VALUES (3690, 'Revantusk Village');
INSERT INTO `areatrigger_tavern` VALUES (3886, 'Grom\'gol Base Camp');
INSERT INTO `areatrigger_tavern` VALUES (4058, 'Light\'s Hope Chapel');
INSERT INTO `areatrigger_tavern` VALUES (3985, 'Cenarion Hold');
INSERT INTO `areatrigger_tavern` VALUES (4090, 'Stonetalon Peak');
INSERT INTO `areatrigger_tavern` VALUES (3547, 'The Undercity');
INSERT INTO `areatrigger_tavern` VALUES (206, 'Dustwallow Marsh - Mudsprocket');
INSERT INTO `areatrigger_tavern` VALUES (210, 'Durotar - Sparkwater Port');
INSERT INTO `areatrigger_tavern` VALUES (1, 'Wetlands - Hawk\'s Vigil');
INSERT INTO `areatrigger_tavern` VALUES (2, 'Tirisfal Uplands - Glenshire');
INSERT INTO `areatrigger_tavern` VALUES (3, 'Quel\'Thalas - Alah\'Thalas');
INSERT INTO `areatrigger_tavern` VALUES (4, 'Lapidis Isle - Caelan\'s Rest');
INSERT INTO `areatrigger_tavern` VALUES (5, 'Gillijim\'s Isle - Maul\'ogg Refuge');
INSERT INTO `areatrigger_tavern` VALUES (6, 'Burning Steppes - Karfang Hold');
INSERT INTO `areatrigger_tavern` VALUES (204, 'Stonetalon Mountains - Bael Hardul Inn');
INSERT INTO `areatrigger_tavern` VALUES (4306, 'Stonetalon Mountains - Powder Town Inn');
INSERT INTO `areatrigger_tavern` VALUES (4310, 'Tel\'Abim - Tel Co. Basecamp');
INSERT INTO `areatrigger_tavern` VALUES (5336, 'Tirisfal Glades - Steepcliff Port');
INSERT INTO `areatrigger_tavern` VALUES (5020, 'Blackstone Island - Rustgate Inn');
INSERT INTO `areatrigger_tavern` VALUES (2708, 'Thalassian Highlands - Brinthilien Inn');


SET FOREIGN_KEY_CHECKS = 1;
