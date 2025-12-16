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
-- Table structure for scripted_areatrigger
-- ----------------------------
DROP TABLE IF EXISTS `scripted_areatrigger`;
CREATE TABLE `scripted_areatrigger`  (
  `entry` mediumint(9) NOT NULL,
  `script_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of scripted_areatrigger
-- ----------------------------
INSERT INTO `scripted_areatrigger` VALUES (522, 'at_twiggy_flathead');
INSERT INTO `scripted_areatrigger` VALUES (1526, 'at_ring_of_law');
INSERT INTO `scripted_areatrigger` VALUES (3066, 'at_ravenholdt');
INSERT INTO `scripted_areatrigger` VALUES (4112, 'at_naxxramas');
INSERT INTO `scripted_areatrigger` VALUES (2026, 'at_blackrock_spire');
INSERT INTO `scripted_areatrigger` VALUES (2046, 'at_blackrock_spire');
INSERT INTO `scripted_areatrigger` VALUES (3552, 'at_childrens_week_spot');
INSERT INTO `scripted_areatrigger` VALUES (3550, 'at_childrens_week_spot');
INSERT INTO `scripted_areatrigger` VALUES (3549, 'at_childrens_week_spot');
INSERT INTO `scripted_areatrigger` VALUES (3548, 'at_childrens_week_spot');
INSERT INTO `scripted_areatrigger` VALUES (3547, 'at_childrens_week_spot');
INSERT INTO `scripted_areatrigger` VALUES (3546, 'at_childrens_week_spot');
INSERT INTO `scripted_areatrigger` VALUES (962, 'at_zumrah');
INSERT INTO `scripted_areatrigger` VALUES (3847, 'at_orb_of_command');
INSERT INTO `scripted_areatrigger` VALUES (4016, 'at_shade_of_eranikus');
INSERT INTO `scripted_areatrigger` VALUES (4017, 'at_twilight_grove');
INSERT INTO `scripted_areatrigger` VALUES (1726, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (3626, 'at_enter_vael_room');
INSERT INTO `scripted_areatrigger` VALUES (1966, 'at_murloc_camp');
INSERT INTO `scripted_areatrigger` VALUES (3587, 'at_irontree_wood');
INSERT INTO `scripted_areatrigger` VALUES (4047, 'at_temple_ahnqiraj');
INSERT INTO `scripted_areatrigger` VALUES (4052, 'at_temple_ahnqiraj');
INSERT INTO `scripted_areatrigger` VALUES (1786, 'at_shadowforge_bridge');
INSERT INTO `scripted_areatrigger` VALUES (4033, 'at_temple_ahnqiraj');
INSERT INTO `scripted_areatrigger` VALUES (4034, 'at_temple_ahnqiraj');
INSERT INTO `scripted_areatrigger` VALUES (4036, 'at_temple_ahnqiraj');
INSERT INTO `scripted_areatrigger` VALUES (171, 'at_huldar_miran');
INSERT INTO `scripted_areatrigger` VALUES (1667, 'at_sentry_point');
INSERT INTO `scripted_areatrigger` VALUES (4115, 'at_naxxramas');
INSERT INTO `scripted_areatrigger` VALUES (4156, 'at_naxxramas');
INSERT INTO `scripted_areatrigger` VALUES (4113, 'at_naxxramas');
INSERT INTO `scripted_areatrigger` VALUES (4117, 'at_naxxramas');
INSERT INTO `scripted_areatrigger` VALUES (2066, 'at_ubrs_the_beast');
INSERT INTO `scripted_areatrigger` VALUES (2786, 'at_stormwind_gates');
INSERT INTO `scripted_areatrigger` VALUES (1727, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1728, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1729, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1730, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1731, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1732, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1733, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1734, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1735, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1736, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1737, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1738, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1739, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1740, 'at_scent_larkorwi');
INSERT INTO `scripted_areatrigger` VALUES (1766, 'at_scent_larkorwi');


SET FOREIGN_KEY_CHECKS = 1;
