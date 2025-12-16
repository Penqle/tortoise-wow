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
-- Table structure for player_factionchange_reputations
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_reputations`;
CREATE TABLE `player_factionchange_reputations`  (
  `alliance_id` int(11) NOT NULL,
  `horde_id` int(11) NOT NULL,
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of player_factionchange_reputations
-- ----------------------------
INSERT INTO `player_factionchange_reputations` VALUES (47, 530);
INSERT INTO `player_factionchange_reputations` VALUES (54, 81);
INSERT INTO `player_factionchange_reputations` VALUES (69, 68);
INSERT INTO `player_factionchange_reputations` VALUES (72, 76);
INSERT INTO `player_factionchange_reputations` VALUES (269, 893);
INSERT INTO `player_factionchange_reputations` VALUES (509, 510);
INSERT INTO `player_factionchange_reputations` VALUES (730, 729);
INSERT INTO `player_factionchange_reputations` VALUES (890, 889);
INSERT INTO `player_factionchange_reputations` VALUES (1001, 471);


SET FOREIGN_KEY_CHECKS = 1;
