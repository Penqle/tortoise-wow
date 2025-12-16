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
-- Table structure for item_required_target
-- ----------------------------
DROP TABLE IF EXISTS `item_required_target`;
CREATE TABLE `item_required_target`  (
  `entry` mediumint(8) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `target_entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `entry_type_target`(`entry`, `type`, `target_entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of item_required_target
-- ----------------------------
INSERT INTO `item_required_target` VALUES (3912, 1, 2530);
INSERT INTO `item_required_target` VALUES (8149, 2, 7318);
INSERT INTO `item_required_target` VALUES (9328, 1, 7977);
INSERT INTO `item_required_target` VALUES (9606, 2, 7584);
INSERT INTO `item_required_target` VALUES (9618, 2, 2927);
INSERT INTO `item_required_target` VALUES (9618, 2, 2928);
INSERT INTO `item_required_target` VALUES (9618, 2, 2929);
INSERT INTO `item_required_target` VALUES (9618, 2, 7808);
INSERT INTO `item_required_target` VALUES (9619, 2, 5300);
INSERT INTO `item_required_target` VALUES (9619, 2, 5304);
INSERT INTO `item_required_target` VALUES (9619, 2, 5305);
INSERT INTO `item_required_target` VALUES (9619, 2, 5306);
INSERT INTO `item_required_target` VALUES (9620, 2, 5276);
INSERT INTO `item_required_target` VALUES (9620, 2, 5278);
INSERT INTO `item_required_target` VALUES (9621, 2, 5357);
INSERT INTO `item_required_target` VALUES (9621, 2, 5358);
INSERT INTO `item_required_target` VALUES (9621, 2, 14604);
INSERT INTO `item_required_target` VALUES (9621, 2, 14640);
INSERT INTO `item_required_target` VALUES (12647, 1, 4678);
INSERT INTO `item_required_target` VALUES (12647, 1, 4681);
INSERT INTO `item_required_target` VALUES (12647, 1, 4685);
INSERT INTO `item_required_target` VALUES (15826, 1, 12296);
INSERT INTO `item_required_target` VALUES (15826, 1, 12298);
INSERT INTO `item_required_target` VALUES (15908, 1, 1196);
INSERT INTO `item_required_target` VALUES (15911, 1, 1126);
INSERT INTO `item_required_target` VALUES (15913, 1, 1201);
INSERT INTO `item_required_target` VALUES (15914, 1, 2956);
INSERT INTO `item_required_target` VALUES (15915, 1, 2959);
INSERT INTO `item_required_target` VALUES (15916, 1, 2970);
INSERT INTO `item_required_target` VALUES (15917, 1, 3099);
INSERT INTO `item_required_target` VALUES (15919, 1, 3107);
INSERT INTO `item_required_target` VALUES (15920, 1, 3126);
INSERT INTO `item_required_target` VALUES (15921, 1, 1998);
INSERT INTO `item_required_target` VALUES (15922, 1, 2043);
INSERT INTO `item_required_target` VALUES (15923, 1, 1996);
INSERT INTO `item_required_target` VALUES (22048, 2, 16042);
INSERT INTO `item_required_target` VALUES (22432, 1, 6498);
INSERT INTO `item_required_target` VALUES (22432, 1, 6499);
INSERT INTO `item_required_target` VALUES (22432, 1, 6500);
INSERT INTO `item_required_target` VALUES (41064, 1, 61700);
INSERT INTO `item_required_target` VALUES (41065, 1, 61695);
INSERT INTO `item_required_target` VALUES (41066, 1, 61776);
INSERT INTO `item_required_target` VALUES (50445, 1, 61662);
INSERT INTO `item_required_target` VALUES (50446, 1, 61680);
INSERT INTO `item_required_target` VALUES (50447, 1, 61657);
INSERT INTO `item_required_target` VALUES (60329, 1, 1547);
INSERT INTO `item_required_target` VALUES (60330, 1, 1553);
INSERT INTO `item_required_target` VALUES (60331, 1, 80466);
INSERT INTO `item_required_target` VALUES (61812, 1, 113);
INSERT INTO `item_required_target` VALUES (61813, 1, 118);
INSERT INTO `item_required_target` VALUES (61814, 1, 822);
INSERT INTO `item_required_target` VALUES (91770, 1, 3099);
INSERT INTO `item_required_target` VALUES (91771, 1, 80332);
INSERT INTO `item_required_target` VALUES (91772, 1, 3126);
INSERT INTO `item_required_target` VALUES (91773, 1, 1126);
INSERT INTO `item_required_target` VALUES (91774, 1, 80332);
INSERT INTO `item_required_target` VALUES (91775, 1, 1196);


SET FOREIGN_KEY_CHECKS = 1;
