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
-- Table structure for gameobject_requirement
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_requirement`;
CREATE TABLE `gameobject_requirement`  (
  `guid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `reqType` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier',
  `reqGuid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Gameobject Identifier',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 397162 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Gameobject System' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of gameobject_requirement
-- ----------------------------
INSERT INTO `gameobject_requirement` VALUES (43121, 1, 15536);
INSERT INTO `gameobject_requirement` VALUES (43126, 1, 35801);
INSERT INTO `gameobject_requirement` VALUES (361752, 0, 44319);
INSERT INTO `gameobject_requirement` VALUES (43127, 1, 15365);
INSERT INTO `gameobject_requirement` VALUES (43128, 1, 15364);
INSERT INTO `gameobject_requirement` VALUES (43135, 1, 15363);
INSERT INTO `gameobject_requirement` VALUES (43123, 1, 39924);
INSERT INTO `gameobject_requirement` VALUES (362149, 1, 43094);
INSERT INTO `gameobject_requirement` VALUES (43137, 1, 43094);
INSERT INTO `gameobject_requirement` VALUES (43134, 1, 15646);
INSERT INTO `gameobject_requirement` VALUES (43120, 1, 17904);
INSERT INTO `gameobject_requirement` VALUES (43136, 1, 15329);
INSERT INTO `gameobject_requirement` VALUES (43129, 1, 15330);
INSERT INTO `gameobject_requirement` VALUES (43124, 1, 15331);
INSERT INTO `gameobject_requirement` VALUES (43122, 1, 15306);
INSERT INTO `gameobject_requirement` VALUES (43125, 1, 35864);
INSERT INTO `gameobject_requirement` VALUES (349151, 0, 43469);
INSERT INTO `gameobject_requirement` VALUES (43219, 1, 43178);
INSERT INTO `gameobject_requirement` VALUES (27871, 0, 52161);
INSERT INTO `gameobject_requirement` VALUES (27888, 0, 53693);


SET FOREIGN_KEY_CHECKS = 1;
