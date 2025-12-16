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
-- Table structure for script_escort_data
-- ----------------------------
DROP TABLE IF EXISTS `script_escort_data`;
CREATE TABLE `script_escort_data`  (
  `creature_id` int(11) NULL DEFAULT NULL,
  `quest` int(11) NULL DEFAULT NULL,
  `escort_faction` int(11) NULL DEFAULT NULL,
  UNIQUE INDEX `creature_id`(`creature_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of script_escort_data
-- ----------------------------
INSERT INTO `script_escort_data` VALUES (9023, 4322, 11);


SET FOREIGN_KEY_CHECKS = 1;
