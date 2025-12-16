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
-- Table structure for taxi_nodes
-- ----------------------------
DROP TABLE IF EXISTS `taxi_nodes`;
CREATE TABLE `taxi_nodes`  (
  `id` smallint(5) UNSIGNED NOT NULL,
  `map_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `x` float NOT NULL DEFAULT 0,
  `y` float NOT NULL DEFAULT 0,
  `z` float NOT NULL DEFAULT 0,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mount_creature_id1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `mount_creature_id2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taxi_nodes
-- ----------------------------
INSERT INTO `taxi_nodes` VALUES (1, 0, -8888.98, -0.54, 94.39, 'Northshire Abbey', 308, 0);
INSERT INTO `taxi_nodes` VALUES (2, 0, -8840.56, 489.7, 109.61, 'Stormwind, Elwynn', 0, 541);
INSERT INTO `taxi_nodes` VALUES (3, 0, 16391.8, 16341.2, 69.44, 'Programmer Isle', 308, 0);
INSERT INTO `taxi_nodes` VALUES (4, 0, -10628.9, 1036.68, 34.06, 'Sentinel Hill, Westfall', 0, 541);
INSERT INTO `taxi_nodes` VALUES (5, 0, -9429.1, -2231.4, 68.65, 'Lakeshire, Redridge', 0, 541);
INSERT INTO `taxi_nodes` VALUES (6, 0, -4821.78, -1155.44, 502.21, 'Ironforge, Dun Morogh', 0, 541);
INSERT INTO `taxi_nodes` VALUES (7, 0, -3792.26, -783.29, 9.06, 'Menethil Harbor, Wetlands', 0, 541);
INSERT INTO `taxi_nodes` VALUES (8, 0, -5421.91, -2930.01, 347.25, 'Thelsamar, Loch Modan', 0, 541);
INSERT INTO `taxi_nodes` VALUES (9, 0, -14271.8, 299.87, 31.09, 'Booty Bay, Stranglethorn', 541, 0);
INSERT INTO `taxi_nodes` VALUES (10, 0, 478.86, 1536.59, 131.32, 'The Sepulcher, Silverpine Forest', 3574, 0);
INSERT INTO `taxi_nodes` VALUES (11, 0, 1568.62, 267.97, -43.1, 'Undercity, Tirisfal', 3574, 0);
INSERT INTO `taxi_nodes` VALUES (12, 0, -10515.5, -1261.65, 41.34, 'Darkshire, Duskwood', 0, 541);
INSERT INTO `taxi_nodes` VALUES (13, 0, -0.06, -859.91, 58.83, 'Tarren Mill, Hillsbrad', 3574, 0);
INSERT INTO `taxi_nodes` VALUES (14, 0, -711.48, -515.48, 26.11, 'Southshore, Hillsbrad', 0, 541);
INSERT INTO `taxi_nodes` VALUES (15, 0, 2253.4, -5344.9, 83.38, 'Eastern Plaguelands', 541, 0);
INSERT INTO `taxi_nodes` VALUES (16, 0, -1240.53, -2515.11, 22.16, 'Refuge Pointe, Arathi', 0, 541);
INSERT INTO `taxi_nodes` VALUES (17, 0, -916.29, -3496.89, 70.45, 'Hammerfall, Arathi', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (18, 0, -14444.3, 509.62, 26.2, 'Booty Bay, Stranglethorn', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (19, 0, -14473, 464.15, 36.43, 'Booty Bay, Stranglethorn', 0, 541);
INSERT INTO `taxi_nodes` VALUES (20, 0, -12414.2, 146.29, 3.28, 'Grom\'gol, Stranglethorn', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (21, 0, -6633.99, -2180.05, 244.14, 'Kargath, Badlands', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (22, 1, -1197.21, 29.71, 176.95, 'Thunder Bluff, Mulgore', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (23, 1, 1677.59, -4315.71, 61.17, 'Orgrimmar, Durotar', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (24, 0, -6666, -2222.3, 278.6, 'Generic, World target for Zeppelin Paths', 0, 0);
INSERT INTO `taxi_nodes` VALUES (25, 1, -441.8, -2596.08, 96.06, 'Crossroads, The Barrens', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (26, 1, 6341.38, 557.68, 16.29, 'Auberdine, Darkshore', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (27, 1, 8643.59, 841.05, 23.3, 'Rut\'theran Village, Teldrassil', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (28, 1, 2827.34, -289.24, 107.16, 'Astranaar, Ashenvale', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (29, 1, 966.57, 1040.32, 104.27, 'Sun Rock Retreat, Stonetalon Mountains', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (30, 1, -5407.71, -2414.3, 90.32, 'Freewind Post, Thousand Needles', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (31, 1, -4491.88, -775.89, -39.52, 'Thalanaar, Feralas', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (32, 1, -3825.37, -4516.58, 10.44, 'Theramore, Dustwallow Marsh', 0, 541);
INSERT INTO `taxi_nodes` VALUES (33, 1, 2681.13, 1461.68, 232.88, 'Stonetalon Peak, Stonetalon Mountains', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (34, 1, -1965.17, -5824.29, -1.06, 'Transport, Booty Bay - Ratchet', 0, 0);
INSERT INTO `taxi_nodes` VALUES (35, 1, 1320.07, -4649.2, 21.57, 'Transport, Orgrimmar Zepplins', 0, 0);
INSERT INTO `taxi_nodes` VALUES (36, 0, -8644.62, 433.28, 59.46, 'Generic, World target', 15665, 0);
INSERT INTO `taxi_nodes` VALUES (37, 1, 139.24, 1325.82, 193.5, 'Nijel\'s Point, Desolace', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (38, 1, -1767.64, 3263.89, 4.94, 'Shadowprey Village, Desolace', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (39, 1, -7223.97, -3734.59, 8.39, 'Gadgetzan, Tanaris', 0, 541);
INSERT INTO `taxi_nodes` VALUES (40, 1, -7048.89, -3780.36, 10.19, 'Gadgetzan, Tanaris', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (41, 1, -4373.8, 3338.65, 12.27, 'Feathermoon, Feralas', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (42, 1, -4419.86, 199.31, 25.06, 'Camp Mojache, Feralas', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (43, 0, 283.74, -2002.76, 194.74, 'Aerie Peak, The Hinterlands', 0, 541);
INSERT INTO `taxi_nodes` VALUES (44, 1, 3661.52, -4390.38, 113.05, 'Valormok, Azshara', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (45, 0, -11112.2, -3435.74, 79.09, 'Nethergarde Keep, Blasted Lands', 0, 541);
INSERT INTO `taxi_nodes` VALUES (46, 0, -986.43, -547.86, -3.86, 'Southshore Ferry, Hillsbrad', 0, 0);
INSERT INTO `taxi_nodes` VALUES (47, 0, -12418.8, 235.43, 1.12, 'Transport, Grom\'gol - Orgrimmar', 0, 0);
INSERT INTO `taxi_nodes` VALUES (48, 1, 5068.4, -337.22, 367.41, 'Bloodvenom Post, Felwood', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (49, 1, 7458.45, -2487.21, 462.33, 'Moonglade', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (50, 0, 0, 0, 0, 'Transport, Menethil Ships', 0, 0);
INSERT INTO `taxi_nodes` VALUES (51, 0, 0, 0, 0, 'Transport, Rut\'theran - Auberdine', 0, 0);
INSERT INTO `taxi_nodes` VALUES (52, 1, 6799.24, -4742.44, 701.5, 'Everlook, Winterspring', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (53, 1, 6813.06, -4611.12, 710.67, 'Everlook, Winterspring', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (54, 1, -4203.87, 3284, -12.86, 'Transport, Feathermoon - Feralas', 0, 0);
INSERT INTO `taxi_nodes` VALUES (55, 1, -3147.39, -2842.18, 34.61, 'Brackenwall Village, Dustwallow Marsh', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (56, 0, -10457, -3279.25, 21.35, 'Stonard, Swamp of Sorrows', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (57, 1, 8701.51, 991.37, 14.21, 'Fishing Village, Teldrassil', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (58, 1, 3374.71, 996.97, 5.19, 'Zoram\'gar Outpost, Ashenvale', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (59, 30, 574.21, -46.65, 37.61, 'Dun Baldar, Alterac Valley', 0, 541);
INSERT INTO `taxi_nodes` VALUES (60, 30, -1335.44, -319.69, 90.66, 'Frostwolf Keep, Alterac Valley', 3574, 0);
INSERT INTO `taxi_nodes` VALUES (61, 1, 2302.39, -2524.55, 104.4, 'Splintertree Post, Ashenvale', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (62, 1, 7793.61, -2403.47, 489.32, 'Nighthaven, Moonglade', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (63, 1, 7787.72, -2404.1, 489.56, 'Nighthaven, Moonglade', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (64, 1, 2721.99, -3880.64, 100.87, 'Talrendis Point, Azshara', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (65, 1, 6205.88, -1949.63, 571.29, 'Talonbranch Glade, Felwood', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (66, 0, 931.32, -1430.11, 64.67, 'Chillwind Camp, Western Plaguelands', 0, 541);
INSERT INTO `taxi_nodes` VALUES (67, 0, 2271.09, -5340.8, 87.11, 'Light\'s Hope Chapel, Eastern Plaguelands', 0, 541);
INSERT INTO `taxi_nodes` VALUES (68, 0, 2327.41, -5286.89, 81.78, 'Light\'s Hope Chapel, Eastern Plaguelands', 3574, 0);
INSERT INTO `taxi_nodes` VALUES (69, 1, 7470.39, -2123.38, 492.34, 'Moonglade', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (70, 0, -7504.03, -2187.54, 165.53, 'Flame Crest, Burning Steppes', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (71, 0, -8364.61, -2738.35, 185.46, 'Morgan\'s Vigil, Burning Steppes', 0, 541);
INSERT INTO `taxi_nodes` VALUES (72, 1, -6811.39, 836.74, 49.81, 'Cenarion Hold, Silithus', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (73, 1, -6761.83, 772.03, 88.91, 'Cenarion Hold, Silithus', 0, 3837);
INSERT INTO `taxi_nodes` VALUES (74, 0, -6552.59, -1168.27, 309.31, 'Thorium Point, Searing Gorge', 0, 541);
INSERT INTO `taxi_nodes` VALUES (75, 0, -6554.93, -1100.05, 309.57, 'Thorium Point, Searing Gorge', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (76, 0, -635.26, -4720.5, 5.38, 'Revantusk Village, The Hinterlands', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (77, 1, -2380.67, -1882.67, 95.85, 'Camp Taurajo, The Barrens', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (78, 0, 3133.31, -3399.93, 139.53, 'Naxxramas', 0, 0);
INSERT INTO `taxi_nodes` VALUES (79, 1, -6113.82, -1142.7, -187.63, 'Marshal\'s Refuge, Un\'Goro Crater', 2224, 541);
INSERT INTO `taxi_nodes` VALUES (80, 1, -894.59, -3773.01, 11.48, 'Ratchet, The Barrens', 2224, 541);
INSERT INTO `taxi_nodes` VALUES (81, 131074, 0, 0, 0, 'Filming', 0, 0);
INSERT INTO `taxi_nodes` VALUES (84, 0, 2998.71, -3050.1, 117.19, 'Plaguewood Tower, Eastern Plaguelands', 17660, 17660);
INSERT INTO `taxi_nodes` VALUES (85, 0, 3109.31, -4285.13, 109.45, 'Northpass Tower, Eastern Plaguelands', 17660, 17660);
INSERT INTO `taxi_nodes` VALUES (86, 0, 2499.23, -4742.85, 93.5, 'Eastwall Tower, Eastern Plaguelands', 17660, 17660);
INSERT INTO `taxi_nodes` VALUES (87, 0, 1857.56, -3658.47, 143.73, 'Crown Guard Tower, Eastern Plaguelands', 17660, 17660);
INSERT INTO `taxi_nodes` VALUES (175, 0, -3951.5, -1331.74, 148.73, 'Dun Agrath, Wetlands', 0, 541);
INSERT INTO `taxi_nodes` VALUES (176, 0, -4492.72, -1581.01, 509.01, 'Ironforge Airfields, Dun Morogh', 0, 541);
INSERT INTO `taxi_nodes` VALUES (180, 1, -4569.57, -3222.49, 34.925, 'Mudsprocket', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (182, 0, -11864.9, 3188.4, 20, 'Lapidis, Caelan\'s Rest', 0, 541);
INSERT INTO `taxi_nodes` VALUES (183, 0, -14087.2, 2269.2, 67, 'Gilijim, Maul\'Ogg Refuge', 2224, 0);
INSERT INTO `taxi_nodes` VALUES (184, 0, 4321.99, -2806.02, 5.1, 'Quel\'Thalas, Alah\'Talas', 0, 803);
INSERT INTO `taxi_nodes` VALUES (185, 1, -8892.64, -6455.32, 7.8, 'Tel\'Abim Island', 2224, 541);
INSERT INTO `taxi_nodes` VALUES (186, 1, 5497.7, -3690.7, 1594.21, 'Nordanaar, Hyjal', 3837, 3837);
INSERT INTO `taxi_nodes` VALUES (187, 0, -2165.31, 974.4, 2.22, 'Ravenshire, Gilneas', 0, 541);
INSERT INTO `taxi_nodes` VALUES (188, 0, -1300.59, 1160.95, 126.86, 'Stillward Church, Gilneas', 3574, 0);
INSERT INTO `taxi_nodes` VALUES (196, 1, 0, 0, 0, 'Zeppelin: Thunder Bluff to Orgrimmar', 0, 0);
INSERT INTO `taxi_nodes` VALUES (197, 1, 875.28, -836.36, 170.9, 'Stonetalon Mountains, Bael Hardul', 0, 541);
INSERT INTO `taxi_nodes` VALUES (300, 0, 0, 0, 0, 'Boat: Stormwind to Auberdine', 0, 0);
INSERT INTO `taxi_nodes` VALUES (301, 0, 0, 0, 0, 'Boat: Auberdine to Alahthalas', 0, 0);
INSERT INTO `taxi_nodes` VALUES (302, 1, 6550.4, 938.192, 100, 'Boat: Alahthalas to Auberdine', 0, 0);
INSERT INTO `taxi_nodes` VALUES (348, 1, 0, 0, 0, 'Zeppelin: Orgrimmar to Thunder Bluff', 0, 0);
INSERT INTO `taxi_nodes` VALUES (400, 1, 0, 0, 0, 'Boat: Sparkwater to Revantusk Village', 0, 0);
INSERT INTO `taxi_nodes` VALUES (401, 0, 0, 0, 0, 'Boat: Revanstusk to Sparkwater', 0, 0);
INSERT INTO `taxi_nodes` VALUES (500, 1, 0, 0, 0, 'Boat: Reuse me!', 0, 0);
INSERT INTO `taxi_nodes` VALUES (501, 1, 0, 0, 0, 'Boat: Reuse me!', 0, 0);
INSERT INTO `taxi_nodes` VALUES (502, 0, -6657.53, -2219.37, 275.68, 'Zeppelin: Kargath to Orgrimmar', 0, 0);
INSERT INTO `taxi_nodes` VALUES (503, 1, 1168.83, -4190, 50.34, 'Zeppelin: Orgrimmar to Kargath', 0, 0);
INSERT INTO `taxi_nodes` VALUES (508, 1, -570.74, -7849.85, 52.11, 'Blaskstone Island Landing Pod', 8450, 8450);
INSERT INTO `taxi_nodes` VALUES (509, 1, 818.91, -5006.31, 19.91, 'Sparkwater Port Landing Pod', 8450, 8450);


SET FOREIGN_KEY_CHECKS = 1;
