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
-- Table structure for player_factionchange_mounts
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_mounts`;
CREATE TABLE `player_factionchange_mounts`  (
  `RaceId` int(11) NOT NULL,
  `MountNum` int(11) NOT NULL,
  `ItemEntry` int(11) NOT NULL,
  `Comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`RaceId`, `MountNum`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_mounts
-- ----------------------------
INSERT INTO `player_factionchange_mounts` VALUES (1, 0, 2414, 'Pinto');
INSERT INTO `player_factionchange_mounts` VALUES (1, 1, 5655, 'Chestnut Mare');
INSERT INTO `player_factionchange_mounts` VALUES (1, 2, 5656, 'Brown Horse');
INSERT INTO `player_factionchange_mounts` VALUES (1, 3, 2411, 'Black Stallion');
INSERT INTO `player_factionchange_mounts` VALUES (1, 4, 18777, 'Swift Brown Steed');
INSERT INTO `player_factionchange_mounts` VALUES (1, 5, 18778, 'Swift White Steed');
INSERT INTO `player_factionchange_mounts` VALUES (1, 6, 18776, 'Swift Palomino');
INSERT INTO `player_factionchange_mounts` VALUES (1, 7, 12354, 'Palomino');
INSERT INTO `player_factionchange_mounts` VALUES (1, 8, 12353, 'White Stallion');
INSERT INTO `player_factionchange_mounts` VALUES (1, 11, 18241, 'Black War Steed');
INSERT INTO `player_factionchange_mounts` VALUES (2, 0, 1132, 'Timber Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 1, 5665, 'Dire Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 2, 5668, 'Brown Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 4, 18796, 'Swift Brown Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 5, 18798, 'Swift Gray Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 6, 18797, 'Swift Timber Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 7, 2679, 'Red Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 8, 12351, 'Winter Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (2, 11, 18245, 'Black War Wolf');
INSERT INTO `player_factionchange_mounts` VALUES (3, 0, 5864, 'Gray Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 1, 5873, 'White Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 2, 5872, 'Brown Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 4, 18787, 'Swift Gray Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 5, 18785, 'Swift White Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 6, 18786, 'Swift Brown Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 7, 13328, 'Black Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 8, 13329, 'Frost Ram');
INSERT INTO `player_factionchange_mounts` VALUES (3, 11, 18244, 'Black War Ram');
INSERT INTO `player_factionchange_mounts` VALUES (4, 0, 8631, 'Striped Frostsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 1, 8632, 'Spotted Frostsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 2, 8629, 'Striped Nightsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 4, 18902, 'Swift Stormsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 5, 18767, 'Swift Mistsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 6, 18766, 'Swift Frostsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 7, 12302, 'Ancient Frostsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 8, 12303, 'Black Nightsaber');
INSERT INTO `player_factionchange_mounts` VALUES (4, 11, 18242, 'Black War Tiger');
INSERT INTO `player_factionchange_mounts` VALUES (5, 1, 13333, 'Brown Skeletal Horse');
INSERT INTO `player_factionchange_mounts` VALUES (5, 2, 13332, 'Blue Skeletal Horse');
INSERT INTO `player_factionchange_mounts` VALUES (5, 3, 13331, 'Red Skeletal Horse');
INSERT INTO `player_factionchange_mounts` VALUES (5, 4, 13334, 'Green Skeletal Warhorse');
INSERT INTO `player_factionchange_mounts` VALUES (5, 5, 18791, 'Purple Skeletal Warhorse');
INSERT INTO `player_factionchange_mounts` VALUES (5, 11, 18248, 'Red Skeletal Warhorse');
INSERT INTO `player_factionchange_mounts` VALUES (6, 0, 15290, 'Brown Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (6, 1, 15277, 'Gray Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (6, 4, 18794, 'Great Brown Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (6, 5, 18795, 'Great Gray Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (6, 6, 18793, 'Great White Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (6, 7, 15292, 'Green Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (6, 8, 15293, 'Teal Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (6, 11, 18247, 'Black War Kodo');
INSERT INTO `player_factionchange_mounts` VALUES (7, 0, 8595, 'Blue Mechanostrider');
INSERT INTO `player_factionchange_mounts` VALUES (7, 1, 13321, 'Green Mechanostrider');
INSERT INTO `player_factionchange_mounts` VALUES (7, 2, 8563, 'Red Mechanostrider');
INSERT INTO `player_factionchange_mounts` VALUES (7, 3, 13322, 'Unpainted Mechanostrider');
INSERT INTO `player_factionchange_mounts` VALUES (7, 4, 18772, 'Swift Green Mechanostrider');
INSERT INTO `player_factionchange_mounts` VALUES (7, 5, 18773, 'Swift White Mechanostrider');
INSERT INTO `player_factionchange_mounts` VALUES (7, 6, 18774, 'Swift Yellow Mechanostrider');
INSERT INTO `player_factionchange_mounts` VALUES (7, 7, 13327, 'Icy Blue Mechanostrider Mod A');
INSERT INTO `player_factionchange_mounts` VALUES (7, 8, 13326, 'White Mechanostrider Mod B');
INSERT INTO `player_factionchange_mounts` VALUES (7, 11, 18243, 'Black Battlestrider');
INSERT INTO `player_factionchange_mounts` VALUES (8, 0, 8588, 'Emerald Raptor');
INSERT INTO `player_factionchange_mounts` VALUES (8, 1, 8591, 'Turquoise Raptor');
INSERT INTO `player_factionchange_mounts` VALUES (8, 2, 8592, 'Violet Raptor');
INSERT INTO `player_factionchange_mounts` VALUES (8, 4, 18788, 'Swift Blue Raptor');
INSERT INTO `player_factionchange_mounts` VALUES (8, 5, 18789, 'Swift Olive Raptor');
INSERT INTO `player_factionchange_mounts` VALUES (8, 6, 18790, 'Swift Orange Raptor');
INSERT INTO `player_factionchange_mounts` VALUES (8, 11, 18246, 'Black War Raptor');


SET FOREIGN_KEY_CHECKS = 1;
