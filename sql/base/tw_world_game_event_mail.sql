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
-- Table structure for game_event_mail
-- ----------------------------
DROP TABLE IF EXISTS `game_event_mail`;
CREATE TABLE `game_event_mail`  (
  `event` smallint(6) NOT NULL DEFAULT 0 COMMENT 'Negatives value to send at event stop, positive value for send at event start.',
  `raceMask` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `quest` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mailTemplateId` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `senderEntry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`event`, `raceMask`, `quest`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Game event system' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of game_event_mail
-- ----------------------------


SET FOREIGN_KEY_CHECKS = 1;
