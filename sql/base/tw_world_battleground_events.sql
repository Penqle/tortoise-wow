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
-- Table structure for battleground_events
-- ----------------------------
DROP TABLE IF EXISTS `battleground_events`;
CREATE TABLE `battleground_events`  (
  `map` smallint(6) NOT NULL,
  `event1` tinyint(3) UNSIGNED NOT NULL,
  `event2` tinyint(3) UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`map`, `event1`, `event2`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of battleground_events
-- ----------------------------
INSERT INTO `battleground_events` VALUES (489, 0, 0, 'Alliance Flag');
INSERT INTO `battleground_events` VALUES (489, 1, 0, 'Horde Flag');
INSERT INTO `battleground_events` VALUES (489, 2, 0, 'Spirit Guides');
INSERT INTO `battleground_events` VALUES (489, 254, 0, 'Doors');
INSERT INTO `battleground_events` VALUES (529, 0, 0, 'Stables - neutral');
INSERT INTO `battleground_events` VALUES (529, 0, 1, 'Stables - alliance contested');
INSERT INTO `battleground_events` VALUES (529, 0, 2, 'Stables - horde contested');
INSERT INTO `battleground_events` VALUES (529, 0, 3, 'Stables - alliance owned');
INSERT INTO `battleground_events` VALUES (529, 0, 4, 'Stables - horde owned');
INSERT INTO `battleground_events` VALUES (529, 1, 0, 'Blacksmith - neutral');
INSERT INTO `battleground_events` VALUES (529, 1, 1, 'Blacksmith - alliance contested');
INSERT INTO `battleground_events` VALUES (529, 1, 2, 'Blacksmith - horde contested');
INSERT INTO `battleground_events` VALUES (529, 1, 3, 'Blacksmith - alliance owned');
INSERT INTO `battleground_events` VALUES (529, 1, 4, 'Blacksmith - horde owned');
INSERT INTO `battleground_events` VALUES (529, 2, 0, 'Farm - neutral');
INSERT INTO `battleground_events` VALUES (529, 2, 1, 'Farm - alliance contested');
INSERT INTO `battleground_events` VALUES (529, 2, 2, 'Farm - horde contested');
INSERT INTO `battleground_events` VALUES (529, 2, 3, 'Farm - alliance owned');
INSERT INTO `battleground_events` VALUES (529, 2, 4, 'Farm - horde owned');
INSERT INTO `battleground_events` VALUES (529, 3, 0, 'Lumber Mill - neutral');
INSERT INTO `battleground_events` VALUES (529, 3, 1, 'Lumber Mill - alliance contested');
INSERT INTO `battleground_events` VALUES (529, 3, 2, 'Lumber Mill - horde contested');
INSERT INTO `battleground_events` VALUES (529, 3, 3, 'Lumber Mill - alliance owned');
INSERT INTO `battleground_events` VALUES (529, 3, 4, 'Lumber Mill - horde owned');
INSERT INTO `battleground_events` VALUES (529, 4, 0, 'Gold Mine - neutral');
INSERT INTO `battleground_events` VALUES (529, 4, 1, 'Gold Mine - alliance contested');
INSERT INTO `battleground_events` VALUES (529, 4, 2, 'Gold Mine - horde contested');
INSERT INTO `battleground_events` VALUES (529, 4, 3, 'Gold Mine - alliance owned');
INSERT INTO `battleground_events` VALUES (529, 4, 4, 'Gold Mine - horde owned');
INSERT INTO `battleground_events` VALUES (529, 254, 0, 'doors');
INSERT INTO `battleground_events` VALUES (30, 254, 0, 'Doors');
INSERT INTO `battleground_events` VALUES (30, 0, 0, 'Firstaid Station - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 0, 1, 'Firstaid Station - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 0, 2, 'Firstaid Station - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 0, 3, 'Firstaid Station - Horde control');
INSERT INTO `battleground_events` VALUES (30, 1, 0, 'Stormpike Grave - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 1, 1, 'Stormpike Grave - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 1, 2, 'Stormpike Grave - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 1, 3, 'Stormpike Grave - Horde control');
INSERT INTO `battleground_events` VALUES (30, 2, 0, 'Stoneheart Grave - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 2, 1, 'Stoneheart Grave - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 2, 2, 'Stoneheart Grave - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 2, 3, 'Stoneheart Grave - Horde control');
INSERT INTO `battleground_events` VALUES (30, 3, 0, 'Snowfall Grave - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 3, 1, 'Snowfall Grave - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 3, 2, 'Snowfall Grave - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 3, 3, 'Snowfall Grave - Horde control');
INSERT INTO `battleground_events` VALUES (30, 3, 5, 'Snowfall Grave - Neutral control');
INSERT INTO `battleground_events` VALUES (30, 4, 0, 'Iceblood Grave - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 4, 1, 'Iceblood Grave - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 4, 2, 'Iceblood Grave - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 4, 3, 'Iceblood Grave - Horde control');
INSERT INTO `battleground_events` VALUES (30, 5, 0, 'Frostwolf Grave - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 5, 1, 'Frostwolf Grave - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 5, 2, 'Frostwolf Grave - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 5, 3, 'Frostwolf Grave - Horde control');
INSERT INTO `battleground_events` VALUES (30, 6, 0, 'Frostwolf Hut - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 6, 1, 'Frostwolf Hut - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 6, 2, 'Frostwolf Hut - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 6, 3, 'Frostwolf Hut - Horde control');
INSERT INTO `battleground_events` VALUES (30, 7, 1, 'Dunbaldar South - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 7, 2, 'Dunbaldar South - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 7, 3, 'Dunbaldar South - Horde control');
INSERT INTO `battleground_events` VALUES (30, 8, 1, 'Dunbaldar North - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 8, 2, 'Dunbaldar North - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 8, 3, 'Dunbaldar North - Horde control');
INSERT INTO `battleground_events` VALUES (30, 9, 1, 'Icewing Bunker - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 9, 2, 'Icewing Bunker - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 9, 3, 'Icewing Bunker - Horde control');
INSERT INTO `battleground_events` VALUES (30, 10, 1, 'Stoneheart Bunker - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 10, 2, 'Stoneheart Bunker - Horde assaulted');
INSERT INTO `battleground_events` VALUES (30, 10, 3, 'Stoneheart Bunker - Horde control');
INSERT INTO `battleground_events` VALUES (30, 11, 0, 'Iceblood Tower - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 11, 1, 'Iceblood Tower - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 11, 3, 'Iceblood Tower - Horde control');
INSERT INTO `battleground_events` VALUES (30, 12, 0, 'Tower Point - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 12, 1, 'Tower Point - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 12, 3, 'Tower Point - Horde control');
INSERT INTO `battleground_events` VALUES (30, 13, 0, 'Frostwolf east Tower - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 13, 1, 'Frostwolf east Tower - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 13, 3, 'Frostwolf east Tower - Horde control');
INSERT INTO `battleground_events` VALUES (30, 14, 0, 'Frostwolf west Tower - Alliance assaulted');
INSERT INTO `battleground_events` VALUES (30, 14, 1, 'Frostwolf west Tower - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 14, 3, 'Frostwolf west Tower - Horde control');
INSERT INTO `battleground_events` VALUES (30, 15, 0, 'Firstaid Station - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 15, 1, 'Firstaid Station - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 15, 2, 'Firstaid Station - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 15, 3, 'Firstaid Station - Alliance Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 15, 4, 'Firstaid Station - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 15, 5, 'Firstaid Station - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 15, 6, 'Firstaid Station - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 15, 7, 'Firstaid Station - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 16, 0, 'Stormpike Grave - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 16, 1, 'Stormpike Grave - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 16, 2, 'Stormpike Grave - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 16, 3, 'Stormpike Grave - Alliance Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 16, 4, 'Stormpike Grave - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 16, 5, 'Stormpike Grave - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 16, 6, 'Stormpike Grave - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 16, 7, 'Stormpike Grave - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 17, 0, 'Stoneheart Grave - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 17, 1, 'Stoneheart Grave - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 17, 2, 'Stoneheart Grave - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 17, 3, 'Stoneheart Grave - Alliance Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 17, 4, 'Stoneheart Grave - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 17, 5, 'Stoneheart Grave - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 17, 6, 'Stoneheart Grave - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 17, 7, 'Stoneheart Grave - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 18, 0, 'Snowfall Grave - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 18, 1, 'Snowfall Grave - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 18, 2, 'Snowfall Grave - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 18, 3, 'Snowfall Grave - Alliance Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 18, 4, 'Snowfall Grave - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 18, 5, 'Snowfall Grave - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 18, 6, 'Snowfall Grave - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 18, 7, 'Snowfall Grave - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 19, 0, 'Iceblood Grave - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 19, 1, 'Iceblood Grave - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 19, 2, 'Iceblood Grave - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 19, 3, 'Iceblood Grave - Alliance Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 19, 4, 'Iceblood Grave - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 19, 5, 'Iceblood Grave - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 19, 6, 'Iceblood Grave - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 19, 7, 'Iceblood Grave - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 20, 0, 'Frostwolf Grave - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 20, 1, 'Frostwolf Grave - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 20, 2, 'Frostwolf Grave - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 20, 3, 'Frostwolf Grave - Alliance Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 20, 4, 'Frostwolf Grave - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 20, 5, 'Frostwolf Grave - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 20, 6, 'Frostwolf Grave - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 20, 7, 'Frostwolf Grave - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 21, 0, 'Frostwolf Hut - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 21, 1, 'Frostwolf Hut - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 21, 2, 'Frostwolf Hut - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 21, 3, 'Frostwolf Hut - Alliance Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 21, 4, 'Frostwolf Hut - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 21, 5, 'Frostwolf Hut - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 21, 6, 'Frostwolf Hut - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 21, 7, 'Frostwolf Hut - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 46, 0, 'North Mine - Alliance Boss');
INSERT INTO `battleground_events` VALUES (30, 46, 1, 'North Mine - Horde Boss');
INSERT INTO `battleground_events` VALUES (30, 46, 2, 'North Mine - Neutral Boss');
INSERT INTO `battleground_events` VALUES (30, 47, 0, 'South Mine - Alliance Boss');
INSERT INTO `battleground_events` VALUES (30, 47, 1, 'South Mine - Horde Boss');
INSERT INTO `battleground_events` VALUES (30, 47, 2, 'South Mine - Neutral Boss');
INSERT INTO `battleground_events` VALUES (30, 48, 0, 'Alliance Captain');
INSERT INTO `battleground_events` VALUES (30, 49, 0, 'Horde Captain');
INSERT INTO `battleground_events` VALUES (30, 50, 0, 'North Mine - Alliance Control');
INSERT INTO `battleground_events` VALUES (30, 50, 1, 'North Mine - Horde Control');
INSERT INTO `battleground_events` VALUES (30, 50, 2, 'North Mine - Neutral Control');
INSERT INTO `battleground_events` VALUES (30, 51, 0, 'South Mine - Alliance Control');
INSERT INTO `battleground_events` VALUES (30, 51, 1, 'South Mine - Horde Control');
INSERT INTO `battleground_events` VALUES (30, 51, 2, 'South Mine - Neutral Control');
INSERT INTO `battleground_events` VALUES (30, 52, 0, 'Alliance Commander Mortimer');
INSERT INTO `battleground_events` VALUES (30, 53, 0, 'Alliance Commander Duffy');
INSERT INTO `battleground_events` VALUES (30, 54, 0, 'Alliance Commander Karl Philips');
INSERT INTO `battleground_events` VALUES (30, 55, 0, 'Alliance Commander Randolph');
INSERT INTO `battleground_events` VALUES (30, 56, 0, 'Horde Commander Dardosh');
INSERT INTO `battleground_events` VALUES (30, 57, 0, 'Horde Commander Louis Philips');
INSERT INTO `battleground_events` VALUES (30, 58, 0, 'Horde Commander Mulfort');
INSERT INTO `battleground_events` VALUES (30, 59, 0, 'Horde Commander Malgor');
INSERT INTO `battleground_events` VALUES (30, 60, 0, 'Herald - that guy who yells all the time ;)');
INSERT INTO `battleground_events` VALUES (30, 61, 0, 'Alliance - Boss');
INSERT INTO `battleground_events` VALUES (30, 62, 0, 'Horde - Boss');
INSERT INTO `battleground_events` VALUES (30, 63, 0, 'Alliance - Captain Dead');
INSERT INTO `battleground_events` VALUES (30, 64, 0, 'Horde - Captain Dead');
INSERT INTO `battleground_events` VALUES (30, 22, 1, 'Dunbaldar South - Alliance Defender');
INSERT INTO `battleground_events` VALUES (30, 23, 1, 'Dunbaldar North - Alliance control');
INSERT INTO `battleground_events` VALUES (30, 24, 1, 'Icewing Bunker - Alliance Defender');
INSERT INTO `battleground_events` VALUES (30, 25, 1, 'Stoneheart Bunker - Alliance Defender');
INSERT INTO `battleground_events` VALUES (30, 26, 3, 'Iceblood Tower - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 27, 3, 'Tower Point - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 28, 3, 'Frostwolf east Tower - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 29, 3, 'Frostwolf west Tower - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 18, 8, 'Snowfall Grave - Neutral Defender');
INSERT INTO `battleground_events` VALUES (30, 22, 3, 'Dunbaldar South - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 23, 3, 'Dunbaldar North - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 24, 3, 'Icewing Bunker - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 25, 3, 'Stoneheart Bunker - Horde Defender');
INSERT INTO `battleground_events` VALUES (30, 26, 1, 'Iceblood Tower - Alliance Defender');
INSERT INTO `battleground_events` VALUES (30, 27, 1, 'Tower Point - Alliance Defender');
INSERT INTO `battleground_events` VALUES (30, 28, 1, 'Frostwolf east Tower - Alliance Defender');
INSERT INTO `battleground_events` VALUES (30, 29, 1, 'Frostwolf west Tower - Alliance Defender');
INSERT INTO `battleground_events` VALUES (0, 0, 0, '30');
INSERT INTO `battleground_events` VALUES (30, 84, 0, '300 armors provided from Alliance');
INSERT INTO `battleground_events` VALUES (30, 86, 0, '400 armors provided from Alliance');
INSERT INTO `battleground_events` VALUES (30, 80, 0, '100 armors provided from Alliance');
INSERT INTO `battleground_events` VALUES (30, 82, 0, '200 armors provided from Alliance');
INSERT INTO `battleground_events` VALUES (30, 80, 2, '100 armors reset from Alliance');
INSERT INTO `battleground_events` VALUES (30, 82, 2, '100 armors reset from Alliance');
INSERT INTO `battleground_events` VALUES (30, 84, 2, '100 armors reset from Alliance');
INSERT INTO `battleground_events` VALUES (30, 86, 2, '100 armors reset from Alliance');
INSERT INTO `battleground_events` VALUES (30, 81, 2, '100 armors reset from Horde');
INSERT INTO `battleground_events` VALUES (30, 83, 2, '100 armors reset from Horde');
INSERT INTO `battleground_events` VALUES (30, 85, 2, '100 armors reset from Horde');
INSERT INTO `battleground_events` VALUES (30, 87, 2, '100 armors reset from Horde');
INSERT INTO `battleground_events` VALUES (30, 81, 0, '100 armors provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 83, 0, '100 armors provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 85, 0, '100 armors provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 87, 0, '100 armors provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 90, 0, '5 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 92, 0, '10 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 94, 0, '15 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 96, 0, '20 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 91, 0, '5 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 91, 2, '5 mount reset from Horde');
INSERT INTO `battleground_events` VALUES (30, 93, 0, '10 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 95, 0, '15 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 97, 0, '20 mount provided from Horde');
INSERT INTO `battleground_events` VALUES (30, 100, 0, 'Alliance landmines');
INSERT INTO `battleground_events` VALUES (30, 101, 0, 'Horde landmines');
INSERT INTO `battleground_events` VALUES (30, 66, 0, 'Alliance - Explosives Expert');
INSERT INTO `battleground_events` VALUES (30, 67, 0, 'Horde - Explosives Expert');
INSERT INTO `battleground_events` VALUES (30, 68, 0, 'Alliance - Lieutenant Dead');
INSERT INTO `battleground_events` VALUES (30, 69, 0, 'Horde - Lieutenant Dead');
INSERT INTO `battleground_events` VALUES (30, 30, 0, 'Dunbaldar South - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 30, 1, 'Dunbaldar South - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 30, 2, 'Dunbaldar South - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 30, 3, 'Dunbaldar South - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 31, 0, 'Dunbaldar North - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 31, 1, 'Dunbaldar North - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 31, 2, 'Dunbaldar North - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 31, 3, 'Dunbaldar North - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 32, 0, 'Icewing Bunker - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 32, 1, 'Icewing Bunker - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 32, 2, 'Icewing Bunker - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 32, 3, 'Icewing Bunker - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 33, 0, 'Stoneheart Bunker - Alliance Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 33, 1, 'Stoneheart Bunker - Alliance Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 33, 2, 'Stoneheart Bunker - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 33, 3, 'Stoneheart Bunker - Alliance Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 34, 4, 'Iceblood Tower - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 34, 5, 'Iceblood Tower - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 34, 6, 'Iceblood Tower - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 34, 7, 'Iceblood Tower - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 35, 4, 'Tower Point - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 35, 5, 'Tower Point - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 35, 6, 'Tower Point - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 35, 7, 'Tower Point - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 36, 4, 'Frostwolf east Tower - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 36, 5, 'Frostwolf east Tower - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 36, 6, 'Frostwolf east Tower - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 36, 7, 'Frostwolf east Tower - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (30, 37, 4, 'Frostwolf west Tower - Horde Defender Quest0');
INSERT INTO `battleground_events` VALUES (30, 37, 5, 'Frostwolf west Tower - Horde Defender Quest1');
INSERT INTO `battleground_events` VALUES (30, 37, 6, 'Frostwolf west Tower - Horde Defender Quest2');
INSERT INTO `battleground_events` VALUES (30, 37, 7, 'Frostwolf west Tower - Horde Defender Quest3');
INSERT INTO `battleground_events` VALUES (26, 254, 0, 'Doors');
INSERT INTO `battleground_events` VALUES (30, 104, 0, 'Ryson\'s Beacon Horde');
INSERT INTO `battleground_events` VALUES (30, 105, 0, 'Ryson\'s Beacon Alliance');


SET FOREIGN_KEY_CHECKS = 1;
