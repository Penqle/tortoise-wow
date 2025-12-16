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
-- Table structure for variables
-- ----------------------------
DROP TABLE IF EXISTS `variables`;
CREATE TABLE `variables`  (
  `index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of variables
-- ----------------------------
INSERT INTO `variables` VALUES (12, 1618618081);
INSERT INTO `variables` VALUES (13, 1618618081);
INSERT INTO `variables` VALUES (10, 139);
INSERT INTO `variables` VALUES (11, 440);
INSERT INTO `variables` VALUES (14, 4);
INSERT INTO `variables` VALUES (15, 0);
INSERT INTO `variables` VALUES (16, 0);
INSERT INTO `variables` VALUES (17, 0);
INSERT INTO `variables` VALUES (18, 0);
INSERT INTO `variables` VALUES (19, 0);
INSERT INTO `variables` VALUES (20, 0);
INSERT INTO `variables` VALUES (21, 0);
INSERT INTO `variables` VALUES (22, 0);
INSERT INTO `variables` VALUES (23, 0);
INSERT INTO `variables` VALUES (30002, 1697135773);
INSERT INTO `variables` VALUES (30054, 1603586531);
INSERT INTO `variables` VALUES (30050, 5);
INSERT INTO `variables` VALUES (30016, 1697186410);
INSERT INTO `variables` VALUES (30017, 0);
INSERT INTO `variables` VALUES (30012, 0);
INSERT INTO `variables` VALUES (30008, 5);
INSERT INTO `variables` VALUES (30020, 0);
INSERT INTO `variables` VALUES (30015, 0);
INSERT INTO `variables` VALUES (30011, 5);
INSERT INTO `variables` VALUES (30019, 0);
INSERT INTO `variables` VALUES (30014, 0);
INSERT INTO `variables` VALUES (30010, 5);
INSERT INTO `variables` VALUES (30018, 0);
INSERT INTO `variables` VALUES (30013, 0);
INSERT INTO `variables` VALUES (30009, 5);
INSERT INTO `variables` VALUES (2318, 30000);
INSERT INTO `variables` VALUES (30032, 100000);
INSERT INTO `variables` VALUES (1251, 100000);
INSERT INTO `variables` VALUES (6450, 100000);
INSERT INTO `variables` VALUES (3575, 14000);
INSERT INTO `variables` VALUES (2447, 12000);
INSERT INTO `variables` VALUES (30027, 4340);
INSERT INTO `variables` VALUES (13935, 2500);
INSERT INTO `variables` VALUES (2319, 27500);
INSERT INTO `variables` VALUES (30028, 13340);
INSERT INTO `variables` VALUES (12359, 12000);
INSERT INTO `variables` VALUES (8836, 10000);
INSERT INTO `variables` VALUES (30033, 100000);
INSERT INTO `variables` VALUES (3820, 5500);
INSERT INTO `variables` VALUES (30026, 4340);
INSERT INTO `variables` VALUES (30029, 13340);
INSERT INTO `variables` VALUES (8544, 41680);
INSERT INTO `variables` VALUES (30024, 15000);
INSERT INTO `variables` VALUES (3576, 5500);
INSERT INTO `variables` VALUES (3860, 9000);
INSERT INTO `variables` VALUES (8170, 15000);
INSERT INTO `variables` VALUES (3530, 41680);
INSERT INTO `variables` VALUES (5095, 2340);
INSERT INTO `variables` VALUES (12210, 5000);
INSERT INTO `variables` VALUES (30030, 5680);
INSERT INTO `variables` VALUES (1, 0);
INSERT INTO `variables` VALUES (0, 0);
INSERT INTO `variables` VALUES (30025, 15000);
INSERT INTO `variables` VALUES (4234, 15000);
INSERT INTO `variables` VALUES (4625, 4760);
INSERT INTO `variables` VALUES (30031, 5680);
INSERT INTO `variables` VALUES (12209, 1680);
INSERT INTO `variables` VALUES (30022, 0);
INSERT INTO `variables` VALUES (30023, 1);
INSERT INTO `variables` VALUES (30021, 1696771352);
INSERT INTO `variables` VALUES (2313, 26);
INSERT INTO `variables` VALUES (2314, 1);
INSERT INTO `variables` VALUES (2317, 200);
INSERT INTO `variables` VALUES (30051, 1603912309);
INSERT INTO `variables` VALUES (30053, 1);
INSERT INTO `variables` VALUES (30052, 1604007207);
INSERT INTO `variables` VALUES (30055, 5);
INSERT INTO `variables` VALUES (2200, 0);
INSERT INTO `variables` VALUES (2204, 0);
INSERT INTO `variables` VALUES (2201, 0);
INSERT INTO `variables` VALUES (2206, 0);
INSERT INTO `variables` VALUES (2203, 0);
INSERT INTO `variables` VALUES (2205, 0);
INSERT INTO `variables` VALUES (2207, 62);
INSERT INTO `variables` VALUES (2202, 0);
INSERT INTO `variables` VALUES (30001, 300);
INSERT INTO `variables` VALUES (30004, 14888);
INSERT INTO `variables` VALUES (30005, 14890);
INSERT INTO `variables` VALUES (30006, 14887);
INSERT INTO `variables` VALUES (30007, 14889);


SET FOREIGN_KEY_CHECKS = 1;
