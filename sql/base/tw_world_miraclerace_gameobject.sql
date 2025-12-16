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
-- Table structure for miraclerace_gameobject
-- ----------------------------
DROP TABLE IF EXISTS `miraclerace_gameobject`;
CREATE TABLE `miraclerace_gameobject`  (
  `raceid` int(10) UNSIGNED NOT NULL,
  `entry` int(10) UNSIGNED NOT NULL,
  `chance` int(10) UNSIGNED NOT NULL,
  `positionx` float NOT NULL,
  `positiony` float NOT NULL,
  `positionz` float NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of miraclerace_gameobject
-- ----------------------------
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 71, -6138.99, -3902.99, -59.8894);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 39, -6033.26, -3867.92, -60.3826);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 62, -5986.01, -3846.16, -60.641);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 93, -5800.41, -3782.72, -61.4215);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 90, -5716.76, -3800.1, -60.7028);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 71, -5647.85, -4058.74, -61.1982);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 76, -5651.06, -3945.75, -61.2005);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 67, -5712.37, -4170.39, -60.8076);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 94, -5819, -4196.16, -61.7695);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 82, -5980.63, -4199.89, -62.2826);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 27, -6181.22, -4191.54, -61.6828);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 58, -6295.57, -4214.81, -61.376);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 20, -6433.23, -4051.22, -63.2977);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 98, -6415.71, -3941.8, -62.6632);
INSERT INTO `miraclerace_gameobject` VALUES (1, 1000051, 57, -6292.88, -3899.84, -62.8398);
INSERT INTO `miraclerace_gameobject` VALUES (2, 1000051, 70, -6177.14, -4014.28, -58.7497);
INSERT INTO `miraclerace_gameobject` VALUES (2, 1000051, 81, -6069.95, -4014.93, -58.7497);
INSERT INTO `miraclerace_gameobject` VALUES (2, 1000051, 96, -5998.69, -4016.71, -58.7497);
INSERT INTO `miraclerace_gameobject` VALUES (2, 1000051, 46, -5940.98, -4018.31, -58.7497);
INSERT INTO `miraclerace_gameobject` VALUES (2, 1000051, 20, -5903.8, -4018.31, -58.7497);
INSERT INTO `miraclerace_gameobject` VALUES (2, 1000051, 45, -5832.07, -4018.69, -58.7497);


SET FOREIGN_KEY_CHECKS = 1;
