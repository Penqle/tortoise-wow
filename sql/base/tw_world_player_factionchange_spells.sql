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
-- Table structure for player_factionchange_spells
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_spells`;
CREATE TABLE `player_factionchange_spells`  (
  `alliance_id` int(11) NOT NULL,
  `horde_id` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`alliance_id`, `horde_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_factionchange_spells
-- ----------------------------
INSERT INTO `player_factionchange_spells` VALUES (458, 6654, 'Brown Horse - Brown Wolf');
INSERT INTO `player_factionchange_spells` VALUES (472, 580, 'Pinto Horse - Large Timber Wolf');
INSERT INTO `player_factionchange_spells` VALUES (3561, 3567, 'Teleport: Stormwind - Teleport: Orgrimmar');
INSERT INTO `player_factionchange_spells` VALUES (3562, 3563, 'Teleport: Ironforge - Teleport: Undercity');
INSERT INTO `player_factionchange_spells` VALUES (3565, 3566, 'Teleport: Darnassus - Teleport: Thunder Bluff');
INSERT INTO `player_factionchange_spells` VALUES (6648, 6653, 'Chestnut Mare - Dire Wolf');
INSERT INTO `player_factionchange_spells` VALUES (6777, 8395, 'Gray Ram - Emerald Raptor');
INSERT INTO `player_factionchange_spells` VALUES (6898, 10796, 'White Ram - Turquoise Raptor');
INSERT INTO `player_factionchange_spells` VALUES (6899, 10799, 'Brown Ram - Violet Raptor');
INSERT INTO `player_factionchange_spells` VALUES (10059, 11417, 'Portal: Stormwind - Portal: Orgrimmar');
INSERT INTO `player_factionchange_spells` VALUES (10789, 17464, 'Spotted Frostsaber - Brown Skeletal Horse');
INSERT INTO `player_factionchange_spells` VALUES (10793, 17463, 'Striped Nightsaber - Blue Skeletal Horse');
INSERT INTO `player_factionchange_spells` VALUES (10969, 18990, 'Blue Mechanostrider - Brown Kodo');
INSERT INTO `player_factionchange_spells` VALUES (11416, 11418, 'Portal: Ironforge - Portal: Undercity');
INSERT INTO `player_factionchange_spells` VALUES (11419, 11420, 'Portal: Darnassus - Portal: Thunder Bluff');
INSERT INTO `player_factionchange_spells` VALUES (15779, 18992, 'White Mechanostrider - Teal Kodo');
INSERT INTO `player_factionchange_spells` VALUES (16082, 16080, 'Palomino Stallion - Red Wolf');
INSERT INTO `player_factionchange_spells` VALUES (16083, 16081, 'White Stallion - Arctic Wolf');
INSERT INTO `player_factionchange_spells` VALUES (17453, 18989, 'Green Mechanostrider - Gray Kodo');
INSERT INTO `player_factionchange_spells` VALUES (17459, 18991, 'Icy Blue Mechanostrider - Green Kodo');
INSERT INTO `player_factionchange_spells` VALUES (17460, 17450, 'Frost Ram - Ivory Raptor');
INSERT INTO `player_factionchange_spells` VALUES (17461, 16084, 'Black Ram - Mottled Red Raptor');
INSERT INTO `player_factionchange_spells` VALUES (22717, 22724, 'Black War Steed - Black War Wolf');
INSERT INTO `player_factionchange_spells` VALUES (22719, 22718, 'Black Battlestrider - Black War Kodo');
INSERT INTO `player_factionchange_spells` VALUES (22720, 22721, 'Black War Ram - Black War Raptor');
INSERT INTO `player_factionchange_spells` VALUES (22723, 22722, 'Black War Tiger - Red Skeletal Warhorse');
INSERT INTO `player_factionchange_spells` VALUES (23219, 23246, 'Swift Mistsaber - Purple Skeletal Warhorse');
INSERT INTO `player_factionchange_spells` VALUES (23222, 23247, 'Swift Yellow Mechanostrider - Great White Kodo');
INSERT INTO `player_factionchange_spells` VALUES (23225, 23249, 'Swift Green Mechanostrider - Great Brown Kodo');
INSERT INTO `player_factionchange_spells` VALUES (23227, 23251, 'Swift Palomino - Swift Timber Wolf');
INSERT INTO `player_factionchange_spells` VALUES (23228, 23252, 'Swift White Steed - Swift Gray Wolf');
INSERT INTO `player_factionchange_spells` VALUES (23229, 23250, 'Swift Brown Steed - Swift Brown Wolf');
INSERT INTO `player_factionchange_spells` VALUES (23238, 23243, 'Swift Brown Ram - Swift Orange Raptor');
INSERT INTO `player_factionchange_spells` VALUES (23239, 23241, 'Swift Gray Ram - Swift Blue Raptor');
INSERT INTO `player_factionchange_spells` VALUES (23240, 23242, 'Swift White Ram - Swift Olive Raptor');
INSERT INTO `player_factionchange_spells` VALUES (23338, 17465, 'Swift Stormsaber - Green Skeletal Warhorse');
INSERT INTO `player_factionchange_spells` VALUES (23510, 23509, 'Stormpike Battle Charger - Frostwolf Howler');


SET FOREIGN_KEY_CHECKS = 1;
