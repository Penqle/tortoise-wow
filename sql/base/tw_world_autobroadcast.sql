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
-- Table structure for autobroadcast
-- ----------------------------
DROP TABLE IF EXISTS `autobroadcast`;
CREATE TABLE `autobroadcast`  (
  `string_id` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of autobroadcast
-- ----------------------------
INSERT INTO `autobroadcast` VALUES (50006);
INSERT INTO `autobroadcast` VALUES (50005);
INSERT INTO `autobroadcast` VALUES (50004);
INSERT INTO `autobroadcast` VALUES (50003);
INSERT INTO `autobroadcast` VALUES (50002);
INSERT INTO `autobroadcast` VALUES (50001);
INSERT INTO `autobroadcast` VALUES (50000);


SET FOREIGN_KEY_CHECKS = 1;
