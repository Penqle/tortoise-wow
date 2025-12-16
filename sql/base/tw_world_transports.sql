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
-- Table structure for transports
-- ----------------------------
DROP TABLE IF EXISTS `transports`;
CREATE TABLE `transports`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `period` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Transports' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transports
-- ----------------------------
INSERT INTO `transports` VALUES (1, 20808, 'Ratchet and Booty Bay', 350818);
INSERT INTO `transports` VALUES (2, 176244, 'Teldrassil and Auberdine', 316251);
INSERT INTO `transports` VALUES (3, 176231, 'Menethil Harbor and Theramore Isle', 329313);
INSERT INTO `transports` VALUES (9, 181646, 'Stormwind and Auberdine', 350818);
INSERT INTO `transports` VALUES (5, 177233, 'Forgotton Coast and Feathermoon Stronghold', 317038);
INSERT INTO `transports` VALUES (6, 164871, 'Orgrimmar and Undercity', 356284);
INSERT INTO `transports` VALUES (7, 175080, 'Grom\'Gol Base Camp and Orgrimmar', 303463);
INSERT INTO `transports` VALUES (8, 176495, 'Grom\'Gol Base Camp and Undercity', 333044);
INSERT INTO `transports` VALUES (10, 190549, 'Orgrimmar and Thunder Bluff', 350818);
INSERT INTO `transports` VALUES (11, 190550, 'Sparkwater Port and Revantusk Village', 150818);
INSERT INTO `transports` VALUES (12, 190552, 'Orgrimmar and Kargath', 150818);
INSERT INTO `transports` VALUES (13, 176250, 'Alah\'Thalas and Auberdine', 199313);


SET FOREIGN_KEY_CHECKS = 1;
