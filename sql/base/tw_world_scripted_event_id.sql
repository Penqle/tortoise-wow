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
-- Table structure for scripted_event_id
-- ----------------------------
DROP TABLE IF EXISTS `scripted_event_id`;
CREATE TABLE `scripted_event_id`  (
  `id` mediumint(9) NOT NULL,
  `script_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Script library scripted events' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of scripted_event_id
-- ----------------------------
INSERT INTO `scripted_event_id` VALUES (8420, 'event_dreadsteed_ritual_start');
INSERT INTO `scripted_event_id` VALUES (8428, 'event_dreadsteed_ritual_second_part');
INSERT INTO `scripted_event_id` VALUES (6721, 'event_king_of_the_foulweald');
INSERT INTO `scripted_event_id` VALUES (4777, 'event_banner_destroyed');
INSERT INTO `scripted_event_id` VALUES (9104, 'event_summon_gahzranka');
INSERT INTO `scripted_event_id` VALUES (747, 'event_test_of_endurance');
INSERT INTO `scripted_event_id` VALUES (5246, 'event_the_principle_source');
INSERT INTO `scripted_event_id` VALUES (2228, 'event_awaken_stone_keeper');
INSERT INTO `scripted_event_id` VALUES (2268, 'event_awaken_archaedas');
INSERT INTO `scripted_event_id` VALUES (4884, 'event_free_pyroguard_emberseer');
INSERT INTO `scripted_event_id` VALUES (7216, 'event_rysons_beacon_alliance');
INSERT INTO `scripted_event_id` VALUES (7219, 'event_rysons_beacon_horde');
INSERT INTO `scripted_event_id` VALUES (7218, 'event_rysons_beacon_destroyed');


SET FOREIGN_KEY_CHECKS = 1;
