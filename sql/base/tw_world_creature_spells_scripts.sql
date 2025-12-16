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
-- Table structure for creature_spells_scripts
-- ----------------------------
DROP TABLE IF EXISTS `creature_spells_scripts`;
CREATE TABLE `creature_spells_scripts`  (
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
-- Records of creature_spells_scripts
-- ----------------------------
INSERT INTO `creature_spells_scripts` VALUES (21147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9071, 0, 0, 0, 0, 0, 0, 0, 0, 'Azuregos - Arcane Vacuum - Say Text');
INSERT INTO `creature_spells_scripts` VALUES (7621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6535, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Arugal - Arugal\'s Curse - Arugal Say Text');
INSERT INTO `creature_spells_scripts` VALUES (7803, 1, 0, 3, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 'Archmage Arugal - Thundershock - Move Away from Target');
INSERT INTO `creature_spells_scripts` VALUES (19096, 0, 0, 39, 19096, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 'Nathanos Blightcaller - 50% Chance to Yell Text');
INSERT INTO `creature_spells_scripts` VALUES (3019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7798, 0, 0, 0, 0, 0, 0, 0, 0, 'Blackrock Scout - Say Text on Enrage');
INSERT INTO `creature_spells_scripts` VALUES (26381, 0, 0, 29, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -100, 0, 0, 0, 0, 'Hive\'Zara Sandstalker - Reset Threat');
INSERT INTO `creature_spells_scripts` VALUES (26381, 1, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Zara Sandstalker - Start Attack');
INSERT INTO `creature_spells_scripts` VALUES (17473, 0, 0, 15, 17475, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 1');
INSERT INTO `creature_spells_scripts` VALUES (17473, 0, 0, 15, 17476, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 2');
INSERT INTO `creature_spells_scripts` VALUES (17473, 0, 0, 15, 17477, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 3');
INSERT INTO `creature_spells_scripts` VALUES (17473, 0, 0, 15, 17478, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 4');
INSERT INTO `creature_spells_scripts` VALUES (17473, 0, 0, 15, 17479, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 5');
INSERT INTO `creature_spells_scripts` VALUES (17473, 0, 0, 15, 17480, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Cast Raise Dead 6');
INSERT INTO `creature_spells_scripts` VALUES (17473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6511, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Say Text');
INSERT INTO `creature_spells_scripts` VALUES (17473, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6512, 0, 0, 0, 0, 0, 0, 0, 0, 'Baron Rivendare - Say Text');
INSERT INTO `creature_spells_scripts` VALUES (45303, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100405, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Dark Wizard - Say Text');
INSERT INTO `creature_spells_scripts` VALUES (45303, 5, 0, 14, 23775, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Player - Remove Aura Stun Forever');


SET FOREIGN_KEY_CHECKS = 1;
