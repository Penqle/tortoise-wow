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
-- Table structure for quest_cast_objective
-- ----------------------------
DROP TABLE IF EXISTS `quest_cast_objective`;
CREATE TABLE `quest_cast_objective`  (
  `entry` mediumint(8) UNSIGNED NOT NULL COMMENT 'quest id',
  `idx` tinyint(3) UNSIGNED NOT NULL COMMENT 'objective index (0 to 3)',
  `spell_id` int(10) UNSIGNED NOT NULL,
  `player_guid` int(11) NOT NULL COMMENT 'low guid, 0 for any player, -1 for gm',
  `player_class` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for any class',
  `objective_text` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`entry`, `idx`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quest_cast_objective
-- ----------------------------
INSERT INTO `quest_cast_objective` VALUES (50319, 0, 21343, 0, 9, 'Throw snowball at Warlock');
INSERT INTO `quest_cast_objective` VALUES (50319, 1, 21343, 0, 5, 'Throw snowball at Priest');
INSERT INTO `quest_cast_objective` VALUES (50319, 2, 21343, 0, 8, 'Throw snowball at Mage');
INSERT INTO `quest_cast_objective` VALUES (50319, 3, 21343, 0, 1, 'Throw snowball at Warrior');
INSERT INTO `quest_cast_objective` VALUES (50320, 0, 21343, 0, 11, 'Throw snowball at Druid');
INSERT INTO `quest_cast_objective` VALUES (50320, 1, 21343, 0, 2, 'Throw snowball at Paladin');
INSERT INTO `quest_cast_objective` VALUES (50320, 2, 21343, 0, 3, 'Throw snowball at Hunter');
INSERT INTO `quest_cast_objective` VALUES (50320, 3, 21343, 0, 7, 'Throw snowball at Shaman');
INSERT INTO `quest_cast_objective` VALUES (50321, 0, 21343, 688152, 0, 'Throw snowball at Akalix');
INSERT INTO `quest_cast_objective` VALUES (50321, 1, 21343, 605121, 0, 'Throw snowball at Shockwarden');
INSERT INTO `quest_cast_objective` VALUES (50321, 3, 21343, 391543, 0, 'Throw snowball at Vrograg');
INSERT INTO `quest_cast_objective` VALUES (80606, 0, 21343, -1, 0, 'Hit a Game Master with a Snowball');


SET FOREIGN_KEY_CHECKS = 1;
