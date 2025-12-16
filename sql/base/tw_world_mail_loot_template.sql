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
-- Table structure for mail_loot_template
-- ----------------------------
DROP TABLE IF EXISTS `mail_loot_template`;
CREATE TABLE `mail_loot_template`  (
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `item` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `ChanceOrQuestChance` float NOT NULL DEFAULT 100,
  `groupid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT 1,
  `maxcount` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `condition_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`, `item`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Loot System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of mail_loot_template
-- ----------------------------
INSERT INTO `mail_loot_template` VALUES (103, 11422, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (104, 11422, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (99, 11423, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (100, 11423, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (93, 20469, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (94, 20469, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (172, 23008, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (173, 23010, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (174, 23011, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (175, 23012, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (176, 23013, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (177, 23016, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (171, 22723, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (110, 20645, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (135, 21746, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (87, 6529, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (102, 17685, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (118, 17685, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (122, 21216, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (161, 21216, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (108, 17712, 100, 0, 1, 1, 0);
INSERT INTO `mail_loot_template` VALUES (117, 17712, 100, 0, 1, 1, 0);


SET FOREIGN_KEY_CHECKS = 1;
