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
-- Table structure for map_template
-- ----------------------------
DROP TABLE IF EXISTS `map_template`;
CREATE TABLE `map_template`  (
  `entry` smallint(5) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `map_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `linked_zone` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `player_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reset_delay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time_offset` int(11) NOT NULL DEFAULT 0 COMMENT 'seconds',
  `ghost_entrance_map` smallint(6) NOT NULL DEFAULT -1,
  `ghost_entrance_x` float NOT NULL DEFAULT 0,
  `ghost_entrance_y` float NOT NULL DEFAULT 0,
  `map_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `script_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of map_template
-- ----------------------------
INSERT INTO `map_template` VALUES (0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Eastern Kingdoms', '');
INSERT INTO `map_template` VALUES (1, 0, 0, 0, 0, 0, 43200, -1, 0, 0, 'Kalimdor', '');
INSERT INTO `map_template` VALUES (13, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Testing', '');
INSERT INTO `map_template` VALUES (25, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Scott Test', '');
INSERT INTO `map_template` VALUES (29, 0, 1, 0, 0, 0, 0, -1, 0, 0, 'CashTest', '');
INSERT INTO `map_template` VALUES (30, 0, 3, 0, 40, 0, 0, -1, 0, 0, 'Alterac Valley', '');
INSERT INTO `map_template` VALUES (33, 0, 1, 0, 10, 0, 0, 0, -230.989, 1571.57, 'Shadowfang Keep', 'instance_shadowfang_keep');
INSERT INTO `map_template` VALUES (34, 0, 1, 717, 10, 0, 0, 0, -8762.38, 848.01, 'Stormwind Stockade', '');
INSERT INTO `map_template` VALUES (35, 0, 1, 5087, 5, 0, 0, 0, 0, 0, 'Stormwind Vault', 'instance_stormwind_vault');
INSERT INTO `map_template` VALUES (36, 0, 1, 0, 10, 0, 0, 0, -11207.8, 1681.15, 'Deadmines', 'instance_deadmines');
INSERT INTO `map_template` VALUES (37, 0, 0, 0, 30, 0, 0, -1, 0, 0, 'Azshara Crater', '');
INSERT INTO `map_template` VALUES (42, 0, 0, 0, 1, 0, 0, -1, 0, 0, 'Collin\'s Test', '');
INSERT INTO `map_template` VALUES (43, 0, 1, 718, 10, 0, 0, 1, -751.131, -2209.24, 'Wailing Caverns', 'instance_wailing_caverns');
INSERT INTO `map_template` VALUES (47, 0, 1, 0, 10, 0, 0, 1, -4459.45, -1660.21, 'Razorfen Kraul', 'instance_razorfen_kraul');
INSERT INTO `map_template` VALUES (48, 0, 1, 719, 10, 0, 0, 1, 4249.12, 748.387, 'Blackfathom Deeps', 'instance_blackfathom_deeps');
INSERT INTO `map_template` VALUES (70, 0, 1, 1337, 10, 0, 0, 0, -6060.18, -2955, 'Uldaman', 'instance_uldaman');
INSERT INTO `map_template` VALUES (90, 0, 1, 721, 10, 0, 0, 0, -5162.66, 931.599, 'Gnomeregan', 'instance_gnomeregan');
INSERT INTO `map_template` VALUES (109, 0, 1, 1477, 10, 0, 0, 0, -10170.1, -3995.97, 'Sunken Temple', 'instance_sunken_temple');
INSERT INTO `map_template` VALUES (129, 0, 1, 0, 10, 0, 0, 1, -4662.88, -2535.87, 'Razorfen Downs', 'instance_razorfen_downs');
INSERT INTO `map_template` VALUES (169, 0, 0, 0, 40, 0, 0, -1, 0, 0, 'Emerald Dream', '');
INSERT INTO `map_template` VALUES (189, 0, 1, 0, 10, 0, 0, 0, 2892.24, -811.264, 'Scarlet Monastery', 'instance_scarlet_monastery');
INSERT INTO `map_template` VALUES (209, 0, 1, 0, 10, 0, 0, 1, -6790.58, -2891.28, 'Zul\'Farrak', 'instance_zulfarrak');
INSERT INTO `map_template` VALUES (229, 0, 1, 1583, 10, 0, 0, 0, -7522.53, -1233.04, 'Blackrock Spire', 'instance_blackrock_spire');
INSERT INTO `map_template` VALUES (230, 0, 1, 1584, 10, 0, 0, 0, -7178.1, -928.639, 'Blackrock Depths', 'instance_blackrock_depths');
INSERT INTO `map_template` VALUES (249, 0, 2, 2159, 40, 5, 0, 1, -4753.31, -3752.42, 'Onyxia\'s Lair', 'instance_onyxia_lair');
INSERT INTO `map_template` VALUES (269, 0, 1, 0, 5, 0, 0, 1, -8332.56, -4056.01, 'Black Morass', 'instance_black_morass');
INSERT INTO `map_template` VALUES (289, 0, 1, 0, 10, 0, 0, 0, 1274.78, -2552.56, 'Scholomance', 'instance_scholomance');
INSERT INTO `map_template` VALUES (309, 0, 2, 1977, 20, 3, 0, 0, -11916.1, -1224.58, 'Zul\'Gurub', 'instance_zulgurub');
INSERT INTO `map_template` VALUES (329, 0, 1, 0, 10, 0, 0, 0, 3392.32, -3378.48, 'Stratholme', 'instance_stratholme');
INSERT INTO `map_template` VALUES (349, 0, 1, 2100, 10, 0, 0, 1, -1432.7, 2924.98, 'Maraudon', 'instance_maraudon');
INSERT INTO `map_template` VALUES (369, 0, 0, 2257, 0, 0, 0, -1, 0, 0, 'Deeprun Tram', '');
INSERT INTO `map_template` VALUES (389, 0, 1, 2437, 10, 0, 0, 1, 1816.76, -4423.37, 'Ragefire Chasm', '');
INSERT INTO `map_template` VALUES (409, 0, 2, 2717, 40, 7, 0, 0, -7510.56, -1036.7, 'Molten Core', 'instance_molten_core');
INSERT INTO `map_template` VALUES (429, 0, 1, 2557, 10, 0, 0, 1, -3908.03, 1130, 'Dire Maul', 'instance_dire_maul');
INSERT INTO `map_template` VALUES (449, 0, 0, 2918, 0, 0, 0, -1, 0, 0, 'Champions\' Hall', '');
INSERT INTO `map_template` VALUES (450, 0, 0, 2917, 0, 0, 0, -1, 0, 0, 'Hall of Legends', '');
INSERT INTO `map_template` VALUES (451, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Development Land', '');
INSERT INTO `map_template` VALUES (469, 0, 2, 2677, 40, 7, 0, 0, -7663.41, -1218.67, 'Blackwing Lair', 'instance_blackwing_lair');
INSERT INTO `map_template` VALUES (489, 0, 3, 3277, 10, 0, 0, -1, 0, 0, 'Warsong Gulch', '');
INSERT INTO `map_template` VALUES (509, 0, 2, 3429, 20, 3, 0, 1, -8114.46, 1526.37, 'Ruins of Ahn\'Qiraj', 'instance_ruins_of_ahnqiraj');
INSERT INTO `map_template` VALUES (529, 0, 3, 3358, 15, 0, 0, -1, 0, 0, 'Arathi Basin', '');
INSERT INTO `map_template` VALUES (531, 0, 2, 3428, 40, 7, 0, 1, -8111.72, 1526.79, 'Ahn\'Qiraj Temple', 'instance_temple_of_ahnqiraj');
INSERT INTO `map_template` VALUES (533, 0, 2, 3456, 40, 7, 0, -1, 0, 0, 'Naxxramas', 'instance_naxxramas');
INSERT INTO `map_template` VALUES (532, 0, 2, 3457, 10, 5, 0, 0, -11104.3, -1999.42, 'Karazhan', 'instance_lower_karazhan_halls');
INSERT INTO `map_template` VALUES (150, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Tamamo Map', '');
INSERT INTO `map_template` VALUES (26, 0, 3, 0, 0, 0, 0, -1, 0, 0, 'Blood Ring', '');
INSERT INTO `map_template` VALUES (49, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Quel\'Thalas Cut Scene', '');
INSERT INTO `map_template` VALUES (50, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Silvermoon City Raid', '');
INSERT INTO `map_template` VALUES (27, 0, 3, 0, 10, 0, 0, -1, 0, 0, 'Sunnyglade Valley', '');
INSERT INTO `map_template` VALUES (801, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Secret Cow Level', '');
INSERT INTO `map_template` VALUES (800, 0, 1, 5086, 5, 0, 0, 0, -11068.4, -1811.69, 'Karazhan Crypt', 'instance_karazhan_crypt');
INSERT INTO `map_template` VALUES (802, 0, 1, 802, 5, 0, 0, 1, 1722, -1272.6, 'Crescent Grove', 'instance_crescent_grove');
INSERT INTO `map_template` VALUES (31, 0, 0, 31, 0, 0, 0, -1, 0, 0, 'PVPZone01OG', '');
INSERT INTO `map_template` VALUES (804, 0, 0, 804, 0, 0, 0, -1, 0, 0, 'Eldrethalas', '');
INSERT INTO `map_template` VALUES (806, 0, 1, 0, 5, 0, 0, -1, 0, 0, 'Frostmane Retreat', '');
INSERT INTO `map_template` VALUES (807, 0, 2, 0, 40, 7, 0, -1, 0, 0, 'Emerald Sanctum', 'instance_emerald_sanctum');
INSERT INTO `map_template` VALUES (45, 0, 2, 0, 40, 7, 0, -1, 0, 0, 'Scarlet Citadel', 'instance_scarlet_citadel');
INSERT INTO `map_template` VALUES (808, 0, 1, 5103, 5, 0, 0, 0, -8173, -3114.57, 'Hateforge', '');
INSERT INTO `map_template` VALUES (809, 0, 0, 0, 0, 0, 0, -1, 0, 0, 'Gnomeshrink', '');
INSERT INTO `map_template` VALUES (44, 0, 2, 0, 40, 7, 0, -1, 0, 0, 'Old Scarlet Citadel', '');
INSERT INTO `map_template` VALUES (813, 0, 0, 5130, 0, 0, 0, -1, 0, 0, 'Winter Veil Vale', '');
INSERT INTO `map_template` VALUES (815, 0, 1, 5179, 10, 0, 0, 0, -1765.49, 1607.01, 'Gilneas City', 'instance_gilneas_city');
INSERT INTO `map_template` VALUES (816, 0, 0, 0, 40, 0, 0, -1, 0, 0, 'TamoTest1', '');
INSERT INTO `map_template` VALUES (817, 0, 0, 0, 40, 0, 0, -1, 0, 0, 'Tamotest2', '');


SET FOREIGN_KEY_CHECKS = 1;
