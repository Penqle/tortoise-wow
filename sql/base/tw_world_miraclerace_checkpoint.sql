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
-- Table structure for miraclerace_checkpoint
-- ----------------------------
DROP TABLE IF EXISTS `miraclerace_checkpoint`;
CREATE TABLE `miraclerace_checkpoint`  (
  `id` int(10) UNSIGNED NOT NULL,
  `raceid` int(10) UNSIGNED NOT NULL,
  `positionx` float NOT NULL,
  `positiony` float NOT NULL,
  `positionz` float NOT NULL,
  `cameraposx` float NOT NULL,
  `cameraposy` float NOT NULL,
  `cameraposz` float NOT NULL,
  `cameraposorientation` float NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of miraclerace_checkpoint
-- ----------------------------
INSERT INTO `miraclerace_checkpoint` VALUES (1, 1, -6206.02, -3901.59, -60.3667, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (2, 1, -6349.51, -3901.63, -62.3682, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (3, 1, -6423.49, -3959.21, -62.8255, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (4, 1, -6431.67, -4072.98, -63.5004, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (5, 1, -6399.11, -4167.99, -63.0013, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (6, 1, -6304.85, -4215.72, -61.3152, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (7, 1, -6202.22, -4193.91, -61.6354, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (8, 1, -6065.1, -4190.8, -62.4438, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (9, 1, -5896.48, -4199.06, -62.8799, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (10, 1, -5754.72, -4184.97, -61.4735, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (11, 1, -5656.34, -4105.89, -61.4934, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (12, 1, -5649.65, -3994.44, -61.156, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (13, 1, -5663.82, -3871.84, -62.0788, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (14, 1, -5735.98, -3791.8, -60.9051, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (15, 1, -5848.82, -3783.54, -60.7899, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (16, 1, -5956.71, -3834.48, -60.7552, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (17, 1, -6076.11, -3887.01, -60.1409, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (18, 1, -6143.04, -3901.29, -59.8818, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (19, 1, -6192.59, -3901.66, -60.1642, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (1, 2, -6252.26, -4011.71, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (2, 2, -6210.75, -4013.92, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (3, 2, -6159.15, -4014.44, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (4, 2, -6086.55, -4014.02, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (5, 2, -6022.28, -4015.71, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (6, 2, -5949.27, -4018.5, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (7, 2, -5895.45, -4018.76, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (8, 2, -5833.77, -4017.99, -58.749, 0, 0, 0, 0);
INSERT INTO `miraclerace_checkpoint` VALUES (9, 2, -5786.09, -4017.94, -58.7796, 0, 0, 0, 0);


SET FOREIGN_KEY_CHECKS = 1;
