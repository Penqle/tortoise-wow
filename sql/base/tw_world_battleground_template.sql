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
-- Table structure for battleground_template
-- ----------------------------
DROP TABLE IF EXISTS `battleground_template`;
CREATE TABLE `battleground_template`  (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `min_players_per_team` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `max_players_per_team` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `min_level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `max_level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `alliance_win_spell` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `alliance_lose_spell` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `horde_win_spell` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `horde_lose_spell` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `alliance_start_location` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'WorldSafeLocs.dbc',
  `horde_start_location` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'WorldSafeLocs.dbc',
  `player_loot_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'entry from reference_loot_template',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of battleground_template
-- ----------------------------
INSERT INTO `battleground_template` VALUES (2, 4, 10, 0, 60, 24951, 24950, 24951, 24950, 769, 770, 0);
INSERT INTO `battleground_template` VALUES (1, 15, 40, 51, 60, 24955, 24954, 24955, 24954, 611, 610, 1);
INSERT INTO `battleground_template` VALUES (3, 5, 15, 0, 60, 24953, 24952, 24953, 24952, 890, 889, 0);
INSERT INTO `battleground_template` VALUES (4, 3, 3, 0, 60, 29129, 29128, 29129, 29128, 9000, 9001, 0);
INSERT INTO `battleground_template` VALUES (5, 7, 20, 51, 60, 0, 0, 0, 0, 700, 701, 0);


SET FOREIGN_KEY_CHECKS = 1;
