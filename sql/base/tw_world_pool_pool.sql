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
-- Table structure for pool_pool
-- ----------------------------
DROP TABLE IF EXISTS `pool_pool`;
CREATE TABLE `pool_pool`  (
  `pool_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mother_pool` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `chance` float NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FLAG_SPAWN_ENABLE_IF_WORLD_POP_OVER_BLIZZLIKE = 1',
  PRIMARY KEY (`pool_id`) USING BTREE,
  INDEX `pool_idx`(`mother_pool`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_pool
-- ----------------------------
INSERT INTO `pool_pool` VALUES (42907, 42906, 50, 'BRD : Warder Stilgiss', 0);
INSERT INTO `pool_pool` VALUES (42908, 42906, 50, 'BRD : 3 Guards instead of Warder Stilgiss', 0);
INSERT INTO `pool_pool` VALUES (4295, 4294, 20, 'DM North : First Pack v1', 0);
INSERT INTO `pool_pool` VALUES (4296, 4294, 16, 'DM North : First Pack v2', 0);
INSERT INTO `pool_pool` VALUES (4297, 4294, 16, 'DM North : First Pack v3', 0);
INSERT INTO `pool_pool` VALUES (4298, 4294, 16, 'DM North : First Pack v4', 0);
INSERT INTO `pool_pool` VALUES (4299, 4294, 16, 'DM North : First Pack v5', 0);
INSERT INTO `pool_pool` VALUES (4300, 4294, 16, 'DM North : First Pack v6', 0);
INSERT INTO `pool_pool` VALUES (21401, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #1', 0);
INSERT INTO `pool_pool` VALUES (21402, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #2', 0);
INSERT INTO `pool_pool` VALUES (21403, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #3', 0);
INSERT INTO `pool_pool` VALUES (21404, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #4', 0);
INSERT INTO `pool_pool` VALUES (21405, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #5', 0);
INSERT INTO `pool_pool` VALUES (21406, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #6', 0);
INSERT INTO `pool_pool` VALUES (21407, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #7', 0);
INSERT INTO `pool_pool` VALUES (21408, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #8', 0);
INSERT INTO `pool_pool` VALUES (21409, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #9', 0);
INSERT INTO `pool_pool` VALUES (21410, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #10', 0);
INSERT INTO `pool_pool` VALUES (21411, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #11', 0);
INSERT INTO `pool_pool` VALUES (21412, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #12', 0);
INSERT INTO `pool_pool` VALUES (21413, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #13', 0);
INSERT INTO `pool_pool` VALUES (21414, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #14', 0);
INSERT INTO `pool_pool` VALUES (21415, 21400, 0, 'Dun Morogh - Food Crate (3719) / Water Barrel (3658) - #15', 0);
INSERT INTO `pool_pool` VALUES (21451, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #1', 0);
INSERT INTO `pool_pool` VALUES (21452, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #2', 0);
INSERT INTO `pool_pool` VALUES (21453, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #3', 0);
INSERT INTO `pool_pool` VALUES (21454, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #4', 0);
INSERT INTO `pool_pool` VALUES (21455, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #5', 0);
INSERT INTO `pool_pool` VALUES (21456, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #6', 0);
INSERT INTO `pool_pool` VALUES (21457, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #7', 0);
INSERT INTO `pool_pool` VALUES (21458, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #8', 0);
INSERT INTO `pool_pool` VALUES (21459, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #9', 0);
INSERT INTO `pool_pool` VALUES (21460, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #10', 0);
INSERT INTO `pool_pool` VALUES (21461, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #11', 0);
INSERT INTO `pool_pool` VALUES (21462, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #12', 0);
INSERT INTO `pool_pool` VALUES (21463, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #13', 0);
INSERT INTO `pool_pool` VALUES (21464, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #14', 0);
INSERT INTO `pool_pool` VALUES (21465, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #15', 0);
INSERT INTO `pool_pool` VALUES (21466, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #16', 0);
INSERT INTO `pool_pool` VALUES (21467, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #17', 0);
INSERT INTO `pool_pool` VALUES (21468, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #18', 0);
INSERT INTO `pool_pool` VALUES (21469, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #19', 0);
INSERT INTO `pool_pool` VALUES (21470, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #20', 0);
INSERT INTO `pool_pool` VALUES (21471, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #21', 0);
INSERT INTO `pool_pool` VALUES (21472, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #22', 0);
INSERT INTO `pool_pool` VALUES (21473, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #23', 0);
INSERT INTO `pool_pool` VALUES (21474, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #24', 0);
INSERT INTO `pool_pool` VALUES (21475, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #25', 0);
INSERT INTO `pool_pool` VALUES (21476, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #26', 0);
INSERT INTO `pool_pool` VALUES (21477, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #27', 0);
INSERT INTO `pool_pool` VALUES (21478, 21450, 0, 'Elwynn Forest - Food Crate (3719) / Water Barrel (3658) - #28', 0);
INSERT INTO `pool_pool` VALUES (21501, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #1', 0);
INSERT INTO `pool_pool` VALUES (21502, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #2', 0);
INSERT INTO `pool_pool` VALUES (21503, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #3', 0);
INSERT INTO `pool_pool` VALUES (21504, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #4', 0);
INSERT INTO `pool_pool` VALUES (21505, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #5', 0);
INSERT INTO `pool_pool` VALUES (21506, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #6', 0);
INSERT INTO `pool_pool` VALUES (21507, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #7', 0);
INSERT INTO `pool_pool` VALUES (21508, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #8', 0);
INSERT INTO `pool_pool` VALUES (21509, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #9', 0);
INSERT INTO `pool_pool` VALUES (21510, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #10', 0);
INSERT INTO `pool_pool` VALUES (21511, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #11', 0);
INSERT INTO `pool_pool` VALUES (21512, 21500, 0, 'Teldrassil - Food Crate (3719) / Water Barrel (3658) - #12', 0);
INSERT INTO `pool_pool` VALUES (21551, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #1', 0);
INSERT INTO `pool_pool` VALUES (21552, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #2', 0);
INSERT INTO `pool_pool` VALUES (21553, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #3', 0);
INSERT INTO `pool_pool` VALUES (21554, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #4', 0);
INSERT INTO `pool_pool` VALUES (21555, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #5', 0);
INSERT INTO `pool_pool` VALUES (21556, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #6', 0);
INSERT INTO `pool_pool` VALUES (21557, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #7', 0);
INSERT INTO `pool_pool` VALUES (21558, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #8', 0);
INSERT INTO `pool_pool` VALUES (21559, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #9', 0);
INSERT INTO `pool_pool` VALUES (21560, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #10', 0);
INSERT INTO `pool_pool` VALUES (21561, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #11', 0);
INSERT INTO `pool_pool` VALUES (21562, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #12', 0);
INSERT INTO `pool_pool` VALUES (21563, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #13', 0);
INSERT INTO `pool_pool` VALUES (21564, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #14', 0);
INSERT INTO `pool_pool` VALUES (21565, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #15', 0);
INSERT INTO `pool_pool` VALUES (21566, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #16', 0);
INSERT INTO `pool_pool` VALUES (21567, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #17', 0);
INSERT INTO `pool_pool` VALUES (21568, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #18', 0);
INSERT INTO `pool_pool` VALUES (21569, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #19', 0);
INSERT INTO `pool_pool` VALUES (21570, 21550, 0, 'Durotar - Food Crate (3719) / Water Barrel (3658) - #20', 0);
INSERT INTO `pool_pool` VALUES (21601, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #1', 0);
INSERT INTO `pool_pool` VALUES (21602, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #2', 0);
INSERT INTO `pool_pool` VALUES (21603, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #3', 0);
INSERT INTO `pool_pool` VALUES (21604, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #4', 0);
INSERT INTO `pool_pool` VALUES (21605, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #5', 0);
INSERT INTO `pool_pool` VALUES (21606, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #6', 0);
INSERT INTO `pool_pool` VALUES (21607, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #7', 0);
INSERT INTO `pool_pool` VALUES (21608, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #8', 0);
INSERT INTO `pool_pool` VALUES (21609, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #9', 0);
INSERT INTO `pool_pool` VALUES (21610, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #10', 0);
INSERT INTO `pool_pool` VALUES (21611, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #11', 0);
INSERT INTO `pool_pool` VALUES (21612, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #12', 0);
INSERT INTO `pool_pool` VALUES (21613, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #13', 0);
INSERT INTO `pool_pool` VALUES (21614, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #14', 0);
INSERT INTO `pool_pool` VALUES (21615, 21600, 0, 'Mulgore - Food Crate (3719) / Water Barrel (3658) - #15', 0);
INSERT INTO `pool_pool` VALUES (21651, 21650, 0, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #1', 0);
INSERT INTO `pool_pool` VALUES (21652, 21650, 0, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #2', 0);
INSERT INTO `pool_pool` VALUES (21653, 21650, 0, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #3', 0);
INSERT INTO `pool_pool` VALUES (21654, 21650, 0, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #4', 0);
INSERT INTO `pool_pool` VALUES (21655, 21650, 0, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #5', 0);
INSERT INTO `pool_pool` VALUES (21656, 21650, 0, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #6', 0);
INSERT INTO `pool_pool` VALUES (21657, 21650, 0, 'Tirisfal Glades - Food Crate (3719) / Water Barrel (3658) - #7', 0);
INSERT INTO `pool_pool` VALUES (39801, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #1', 0);
INSERT INTO `pool_pool` VALUES (39802, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #2', 0);
INSERT INTO `pool_pool` VALUES (39803, 39934, 0, 'Western Plaguelands - Large Solid Chest (153463) / Large Mithril Bound Chest (153468) - #3', 0);


SET FOREIGN_KEY_CHECKS = 1;
