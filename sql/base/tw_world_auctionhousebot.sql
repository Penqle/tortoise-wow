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
-- Table structure for auctionhousebot
-- ----------------------------
DROP TABLE IF EXISTS `auctionhousebot`;
CREATE TABLE `auctionhousebot`  (
  `item` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `stack` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Stack Size',
  `bid` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Bid Price',
  `buyout` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Buyout Price'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auctionhousebot
-- ----------------------------
INSERT INTO `auctionhousebot` VALUES (4687, 1, 1500, 5000);
INSERT INTO `auctionhousebot` VALUES (2770, 20, 25000, 75000);
INSERT INTO `auctionhousebot` VALUES (2881, 1, 5000, 150000);
INSERT INTO `auctionhousebot` VALUES (2589, 20, 37500, 50000);
INSERT INTO `auctionhousebot` VALUES (2592, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (4306, 20, 37500, 50000);
INSERT INTO `auctionhousebot` VALUES (4338, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (14047, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (2318, 20, 30000, 200000);
INSERT INTO `auctionhousebot` VALUES (2319, 20, 30000, 200000);
INSERT INTO `auctionhousebot` VALUES (4234, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (4304, 20, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (8170, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (2835, 20, 3750, 5000);
INSERT INTO `auctionhousebot` VALUES (2836, 20, 5000, 15000);
INSERT INTO `auctionhousebot` VALUES (2838, 20, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (7912, 20, 10000, 15000);
INSERT INTO `auctionhousebot` VALUES (12365, 20, 10000, 15000);
INSERT INTO `auctionhousebot` VALUES (2770, 20, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (2775, 1, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (2771, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (2776, 1, 37500, 50000);
INSERT INTO `auctionhousebot` VALUES (2772, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (7911, 1, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (3858, 20, 400000, 600000);
INSERT INTO `auctionhousebot` VALUES (10620, 20, 400000, 600000);
INSERT INTO `auctionhousebot` VALUES (765, 20, 10000, 15000);
INSERT INTO `auctionhousebot` VALUES (2447, 20, 20000, 30000);
INSERT INTO `auctionhousebot` VALUES (785, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (2449, 20, 20000, 30000);
INSERT INTO `auctionhousebot` VALUES (2452, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (2450, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (2453, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (3820, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (3355, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (3369, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (3356, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (3357, 20, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (3818, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (3821, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (3358, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (3819, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (8153, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (4625, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (8831, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (8836, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (8838, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (8839, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (8845, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (8846, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (13463, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (13464, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (13465, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (13466, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (13467, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (13468, 1, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (6338, 1, 10000, 15000);
INSERT INTO `auctionhousebot` VALUES (11128, 1, 20000, 30000);
INSERT INTO `auctionhousebot` VALUES (11144, 1, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (16206, 1, 500000, 750000);
INSERT INTO `auctionhousebot` VALUES (10978, 1, 3750, 5000);
INSERT INTO `auctionhousebot` VALUES (11084, 1, 3750, 5000);
INSERT INTO `auctionhousebot` VALUES (11138, 1, 3750, 5000);
INSERT INTO `auctionhousebot` VALUES (11139, 1, 3750, 5000);
INSERT INTO `auctionhousebot` VALUES (11177, 1, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (11178, 1, 100000, 150000);
INSERT INTO `auctionhousebot` VALUES (14343, 1, 10000, 15000);
INSERT INTO `auctionhousebot` VALUES (14344, 1, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (20725, 1, 10000, 15000);
INSERT INTO `auctionhousebot` VALUES (10938, 10, 15000, 25000);
INSERT INTO `auctionhousebot` VALUES (10998, 10, 20000, 30000);
INSERT INTO `auctionhousebot` VALUES (11134, 10, 22500, 35000);
INSERT INTO `auctionhousebot` VALUES (11174, 10, 300000, 450000);
INSERT INTO `auctionhousebot` VALUES (16202, 10, 400000, 600000);
INSERT INTO `auctionhousebot` VALUES (10940, 20, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (11083, 20, 50000, 75000);
INSERT INTO `auctionhousebot` VALUES (11137, 20, 200000, 300000);
INSERT INTO `auctionhousebot` VALUES (11176, 20, 40000, 60000);


SET FOREIGN_KEY_CHECKS = 1;
