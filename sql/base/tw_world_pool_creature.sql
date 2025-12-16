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
-- Table structure for pool_creature
-- ----------------------------
DROP TABLE IF EXISTS `pool_creature`;
CREATE TABLE `pool_creature`  (
  `guid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pool_entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `chance` float UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flags` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FLAG_SPAWN_ENABLE_IF_WORLD_POP_OVER_BLIZZLIKE = 1',
  PRIMARY KEY (`guid`) USING BTREE,
  INDEX `pool_idx`(`pool_entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pool_creature
-- ----------------------------
INSERT INTO `pool_creature` VALUES (1068500, 32901, 15, 'Skul', 0);
INSERT INTO `pool_creature` VALUES (1068501, 32901, 15, 'Skul', 0);
INSERT INTO `pool_creature` VALUES (52838, 32901, 0, 'Gardien squelettique', 0);
INSERT INTO `pool_creature` VALUES (52621, 32901, 0, 'Gardien squelettique', 0);
INSERT INTO `pool_creature` VALUES (40466, 22901, 0, 'Elite Main-noire', 0);
INSERT INTO `pool_creature` VALUES (1068502, 22901, 15, 'Jed Runewatcher', 0);
INSERT INTO `pool_creature` VALUES (383570, 42901, 0, 'Spectre Eldreth', 0);
INSERT INTO `pool_creature` VALUES (56961, 42901, 15, 'Tsu zee', 0);
INSERT INTO `pool_creature` VALUES (47777, 23002, 0, 'Golem de lave de guerre', 0);
INSERT INTO `pool_creature` VALUES (1067620, 23002, 15, 'Panzor the Invincible', 0);
INSERT INTO `pool_creature` VALUES (84082, 3601, 0, 'Miner Johson - placeholder (Defias Miner)', 0);
INSERT INTO `pool_creature` VALUES (45763, 22903, 0, 'Ecumeur Hache Sanglante', 0);
INSERT INTO `pool_creature` VALUES (1068504, 22903, 15, 'Ghok Bashguud', 0);
INSERT INTO `pool_creature` VALUES (44376, 22904, 0, 'Jeune araignÃ©e du Pic', 0);
INSERT INTO `pool_creature` VALUES (44422, 22904, 15, 'Crystal Fang', 0);
INSERT INTO `pool_creature` VALUES (1068505, 22905, 0, 'Massacreur pierre du pic', 0);
INSERT INTO `pool_creature` VALUES (43523, 22905, 15, 'Spirestone Butcher', 0);
INSERT INTO `pool_creature` VALUES (43516, 22906, 0, 'Ogre Magus pierre du pic', 0);
INSERT INTO `pool_creature` VALUES (1068506, 22906, 15, 'Spirestone Battle Lord', 0);
INSERT INTO `pool_creature` VALUES (43509, 22907, 0, 'Ogre Magus pierre du pic', 0);
INSERT INTO `pool_creature` VALUES (43521, 22907, 15, 'Spirestone Lord Magus', 0);
INSERT INTO `pool_creature` VALUES (79090, 10001, 15, 'Bruegal Ironknuckle', 0);
INSERT INTO `pool_creature` VALUES (79091, 10001, 0, 'Defias Inmate', 0);
INSERT INTO `pool_creature` VALUES (48554, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (48555, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (48556, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (48557, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (48558, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (48872, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (48873, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (48874, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (1176525, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (1176524, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (1176522, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (1176523, 10003, 0, 'Dust Devil', 0);
INSERT INTO `pool_creature` VALUES (112920, 3110, 50, 'AQ War Nokhor', 0);
INSERT INTO `pool_creature` VALUES (112921, 3111, 0, 'AQ War Qiraji Lieutenant General', 0);
INSERT INTO `pool_creature` VALUES (112901, 3110, 0, 'AQ War Qiraji Lieutenant General', 0);
INSERT INTO `pool_creature` VALUES (112900, 3110, 50, 'AQ War Nokhor', 0);
INSERT INTO `pool_creature` VALUES (112401, 3103, 0, 'AQ War Qiraji Brigadier General', 0);
INSERT INTO `pool_creature` VALUES (112400, 3103, 50, 'AQ War Pax-lish', 0);
INSERT INTO `pool_creature` VALUES (27366, 10004, 0, 'Lady Anacondra', 0);
INSERT INTO `pool_creature` VALUES (1177980, 10004, 0, 'Lady Anacondra', 0);
INSERT INTO `pool_creature` VALUES (1177979, 10004, 0, 'Lady Anacondra', 0);
INSERT INTO `pool_creature` VALUES (1177978, 10004, 0, 'Lady Anacondra', 0);
INSERT INTO `pool_creature` VALUES (17066, 14222, 0, 'Araga (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (69113, 2453, 0, 'Lo\'Grosh (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (90511, 14223, 0, 'Cranky Benj (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (91111, 14281, 0, 'Jimmy the Bleeder (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183496, 14222, 0, 'Araga (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183497, 14223, 0, 'Cranky Benj (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183498, 14223, 0, 'Cranky Benj (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183499, 14223, 0, 'Cranky Benj (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183500, 14281, 0, 'Jimmy the Bleeder (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183501, 2453, 0, 'Lo\'Grosh (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183506, 2598, 0, 'Marbel Montrose (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183505, 2598, 0, 'Marbel Montrose (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183504, 2598, 0, 'Marbel Montrose (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1068617, 2598, 0, 'Marbel Montrose (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1068621, 2606, 0, 'Nimar the Slayer (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183629, 2606, 0, 'Nimar the Slayer (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183630, 2606, 0, 'Nimar the Slayer (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183843, 2605, 0, 'Zalas Witherbark (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183844, 2605, 0, 'Zalas Witherbark (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183845, 2605, 0, 'Zalas Witherbark (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1068623, 2605, 0, 'Zalas Witherbark (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (84713, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183842, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183841, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183840, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183839, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183838, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183837, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (1183836, 2779, 0, 'Prince Nazjak (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (81107, 3200, 25, 'Thuros Lightfingers', 0);
INSERT INTO `pool_creature` VALUES (83185, 3200, 25, 'Thuros Lightfingers', 0);
INSERT INTO `pool_creature` VALUES (83186, 3200, 25, 'Thuros Lightfingers', 0);
INSERT INTO `pool_creature` VALUES (83187, 3200, 25, 'Thuros Lightfingers', 0);
INSERT INTO `pool_creature` VALUES (84079, 3601, 20, 'Miner Johnson (3586) Deadmines', 0);
INSERT INTO `pool_creature` VALUES (27414, 12902, 0, 'Lorgus Jett', 0);
INSERT INTO `pool_creature` VALUES (26329, 12902, 0, 'Lorgus Jett', 0);
INSERT INTO `pool_creature` VALUES (26173, 12902, 0, 'Lorgus Jett', 0);
INSERT INTO `pool_creature` VALUES (87485, 4701, 30, 'Blind Hunter (4425) Razorfen Kraul', 0);
INSERT INTO `pool_creature` VALUES (590008, 4702, 30, 'Earthcaller Halmgar (4842) Razorfen Kraul', 0);
INSERT INTO `pool_creature` VALUES (87327, 4702, 70, 'Alternate creature to Halmgar (4842) Razorfen Kraul', 0);
INSERT INTO `pool_creature` VALUES (1246210, 34901, 30, 'Meshlok the Harvester (12237) Maraudon', 0);
INSERT INTO `pool_creature` VALUES (54652, 34901, 70, 'Meshlok the Harvester (12237) Maraudon, alternate mob', 0);
INSERT INTO `pool_creature` VALUES (30132, 9001, 70, 'Alternate creature to Dark Iron Ambassador (6228) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (590004, 9001, 30, 'Dark Iron Ambassador (6228) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (1246212, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (1246213, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (1246214, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (1246215, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (1246216, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (1246217, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (1246218, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (30135, 9002, 0, 'Kernobee (7850) Gnomeregan', 0);
INSERT INTO `pool_creature` VALUES (31774, 12901, 30, 'Ragglesnout (7354) Razorfen Downs', 0);
INSERT INTO `pool_creature` VALUES (87241, 12901, 70, 'Alternate creature to Ragglesnout (7354) Razorfen Downs', 0);
INSERT INTO `pool_creature` VALUES (16440, 3301, 30, 'Fel Steed ShadowfandKeep', 0);
INSERT INTO `pool_creature` VALUES (1173117, 3301, 70, 'Shadow Charger ShadowfandKeep', 0);
INSERT INTO `pool_creature` VALUES (16441, 3302, 30, 'Fel Steed ShadowfandKeep', 0);
INSERT INTO `pool_creature` VALUES (1173118, 3302, 70, 'Shadow Charger ShadowfandKeep', 0);
INSERT INTO `pool_creature` VALUES (16442, 3303, 30, 'Fel Steed ShadowfandKeep', 0);
INSERT INTO `pool_creature` VALUES (1173119, 3303, 70, 'Shadow Charger ShadowfandKeep', 0);
INSERT INTO `pool_creature` VALUES (39893, 18901, 0, 'Graveyard Random Rare Boss spawn 1', 0);
INSERT INTO `pool_creature` VALUES (39894, 18901, 2, 'Graveyard Random Rare Boss spawn 1', 0);
INSERT INTO `pool_creature` VALUES (39883, 18901, 2, 'Graveyard Random Rare Boss spawn 1', 0);
INSERT INTO `pool_creature` VALUES (39884, 18901, 2, 'Graveyard Random Rare Boss spawn 1', 0);
INSERT INTO `pool_creature` VALUES (39888, 18902, 0, 'Graveyard Random Rare Boss spawn 2', 0);
INSERT INTO `pool_creature` VALUES (39885, 18902, 2, 'Graveyard Random Rare Boss spawn 2', 0);
INSERT INTO `pool_creature` VALUES (39886, 18902, 2, 'Graveyard Random Rare Boss spawn 2', 0);
INSERT INTO `pool_creature` VALUES (39887, 18902, 2, 'Graveyard Random Rare Boss spawn 2', 0);
INSERT INTO `pool_creature` VALUES (12164, 18903, 2, 'Graveyard Random Rare Boss spawn 3', 0);
INSERT INTO `pool_creature` VALUES (39918, 18903, 2, 'Graveyard Random Rare Boss spawn 3', 0);
INSERT INTO `pool_creature` VALUES (39919, 18903, 2, 'Graveyard Random Rare Boss spawn 3', 0);
INSERT INTO `pool_creature` VALUES (39859, 18903, 0, 'Graveyard Random Rare Boss spawn 3', 0);
INSERT INTO `pool_creature` VALUES (39882, 18904, 0, 'Graveyard Random Rare Boss spawn 4', 0);
INSERT INTO `pool_creature` VALUES (39920, 18904, 2, 'Graveyard Random Rare Boss spawn 4', 0);
INSERT INTO `pool_creature` VALUES (39921, 18904, 2, 'Graveyard Random Rare Boss spawn 4', 0);
INSERT INTO `pool_creature` VALUES (39922, 18904, 2, 'Graveyard Random Rare Boss spawn 4', 0);
INSERT INTO `pool_creature` VALUES (39895, 18905, 0, 'Graveyard Random Rare Boss spawn 5', 0);
INSERT INTO `pool_creature` VALUES (39923, 18905, 2, 'Graveyard Random Rare Boss spawn 5', 0);
INSERT INTO `pool_creature` VALUES (39924, 18905, 2, 'Graveyard Random Rare Boss spawn 5', 0);
INSERT INTO `pool_creature` VALUES (39925, 18905, 2, 'Graveyard Random Rare Boss spawn 5', 0);
INSERT INTO `pool_creature` VALUES (39907, 18906, 0, 'Graveyard Random Rare Boss spawn 6', 0);
INSERT INTO `pool_creature` VALUES (39926, 18906, 2, 'Graveyard Random Rare Boss spawn 6', 0);
INSERT INTO `pool_creature` VALUES (39927, 18906, 2, 'Graveyard Random Rare Boss spawn 6', 0);
INSERT INTO `pool_creature` VALUES (39928, 18906, 2, 'Graveyard Random Rare Boss spawn 6', 0);
INSERT INTO `pool_creature` VALUES (39944, 18907, 0, 'Graveyard Random Rare Boss spawn 7', 0);
INSERT INTO `pool_creature` VALUES (39858, 18907, 2, 'Graveyard Random Rare Boss spawn 7', 0);
INSERT INTO `pool_creature` VALUES (39864, 18907, 2, 'Graveyard Random Rare Boss spawn 7', 0);
INSERT INTO `pool_creature` VALUES (39929, 18907, 2, 'Graveyard Random Rare Boss spawn 7', 0);
INSERT INTO `pool_creature` VALUES (1183495, 14222, 0, 'Araga (Youfie)', 0);
INSERT INTO `pool_creature` VALUES (17600, 2452, 0, 'Skhowl', 0);
INSERT INTO `pool_creature` VALUES (1183502, 2452, 0, 'Skhowl', 0);
INSERT INTO `pool_creature` VALUES (40461, 5004, 95, 'Jed Runewatcher', 0);
INSERT INTO `pool_creature` VALUES (285001, 2850, 0, 'Broken Tooth', 0);
INSERT INTO `pool_creature` VALUES (285002, 2850, 0, 'Broken Tooth', 0);
INSERT INTO `pool_creature` VALUES (285003, 2850, 0, 'Broken Tooth', 0);
INSERT INTO `pool_creature` VALUES (285011, 521, 0, 'Lupos', 0);
INSERT INTO `pool_creature` VALUES (285012, 521, 0, 'Lupos', 0);
INSERT INTO `pool_creature` VALUES (285013, 521, 0, 'Lupos', 0);
INSERT INTO `pool_creature` VALUES (87490, 4701, 0, 'Blind Hunter - placeholder (Greater Kraul Bat)', 0);
INSERT INTO `pool_creature` VALUES (99291, 1601, 30, 'Deathsworn Captain', 0);
INSERT INTO `pool_creature` VALUES (134517, 1601, 70, 'Tormented Officer', 0);
INSERT INTO `pool_creature` VALUES (57219, 25468, 25, 'Stratholme - Hearthsinger Forresten', 0);
INSERT INTO `pool_creature` VALUES (57220, 25468, 25, 'Stratholme - Hearthsinger Forresten', 0);
INSERT INTO `pool_creature` VALUES (57221, 25468, 25, 'Stratholme - Hearthsinger Forresten', 0);
INSERT INTO `pool_creature` VALUES (57222, 25468, 25, 'Stratholme - Hearthsinger Forresten', 0);
INSERT INTO `pool_creature` VALUES (44170, 1501, 0, 'Zul\'Farrak : Sandfury Shadowhunter', 0);
INSERT INTO `pool_creature` VALUES (155625, 1501, 30, 'Zul\'Farrak : Zerillis', 0);
INSERT INTO `pool_creature` VALUES (134825, 4295, 100, 'DM North: First Pack v1 Brute', 0);
INSERT INTO `pool_creature` VALUES (134827, 4295, 100, 'DM North: First Pack v1 Mage', 0);
INSERT INTO `pool_creature` VALUES (134838, 4295, 100, 'DM North: First Pack v1 Mage', 0);
INSERT INTO `pool_creature` VALUES (134865, 4295, 100, 'DM North: First Pack v1 Brute', 0);
INSERT INTO `pool_creature` VALUES (136150, 4296, 100, 'DM North: First Pack v2 Brute', 0);
INSERT INTO `pool_creature` VALUES (136151, 4296, 100, 'DM North: First Pack v2 Mage', 0);
INSERT INTO `pool_creature` VALUES (136152, 4296, 100, 'DM North: First Pack v2 Mage', 0);
INSERT INTO `pool_creature` VALUES (136153, 4296, 100, 'DM North: First Pack v2 Mastiff', 0);
INSERT INTO `pool_creature` VALUES (136154, 4297, 100, 'DM North: First Pack v3 Mage', 0);
INSERT INTO `pool_creature` VALUES (136155, 4297, 100, 'DM North: First Pack v3 Brute', 0);
INSERT INTO `pool_creature` VALUES (136156, 4297, 100, 'DM North: First Pack v3 Mage', 0);
INSERT INTO `pool_creature` VALUES (136157, 4298, 100, 'DM North: First Pack v4 Mage', 0);
INSERT INTO `pool_creature` VALUES (136158, 4298, 100, 'DM North: First Pack v4 Brute', 0);
INSERT INTO `pool_creature` VALUES (136159, 4298, 100, 'DM North: First Pack v4 Mage', 0);
INSERT INTO `pool_creature` VALUES (136160, 4298, 100, 'DM North: First Pack v4 Brute', 0);
INSERT INTO `pool_creature` VALUES (136161, 4299, 100, 'DM North: First Pack v5 Mastiff', 0);
INSERT INTO `pool_creature` VALUES (136162, 4299, 100, 'DM North: First Pack v5 Brute', 0);
INSERT INTO `pool_creature` VALUES (136163, 4299, 100, 'DM North: First Pack v5 Mage', 0);
INSERT INTO `pool_creature` VALUES (136164, 4300, 100, 'DM North: First Pack v6 Brute', 0);
INSERT INTO `pool_creature` VALUES (136165, 4300, 100, 'DM North: First Pack v6 Brute', 0);
INSERT INTO `pool_creature` VALUES (136166, 4300, 100, 'DM North: First Pack v6 Mage', 0);
INSERT INTO `pool_creature` VALUES (44148, 1502, 25, 'Zul\'Farrak : Sandarr Dunereaver', 0);
INSERT INTO `pool_creature` VALUES (44162, 1502, 75, 'Zul\'Farrak : Sandfury Shadowcaster', 0);
INSERT INTO `pool_creature` VALUES (53805, 32979, 0, 'Strat - Rockwing Gargoyle / Rockwing Screecher / Stonespine', 0);
INSERT INTO `pool_creature` VALUES (53806, 32979, 0, 'Strat - Rockwing Gargoyle / Rockwing Screecher / Stonespine', 0);
INSERT INTO `pool_creature` VALUES (53807, 32979, 15, 'Strat - Rockwing Gargoyle / Rockwing Screecher / Stonespine', 0);
INSERT INTO `pool_creature` VALUES (73370, 42939, 0, 'Dustwallow Marsh: Drogoth the Roamer', 0);
INSERT INTO `pool_creature` VALUES (1068637, 42939, 0, 'Dustwallow Marsh: Drogoth the Roamer', 0);
INSERT INTO `pool_creature` VALUES (73466, 43517, 0, 'Dustwallow Marsh: Burgle Eye', 0);
INSERT INTO `pool_creature` VALUES (31612, 43517, 0, 'Dustwallow Marsh: Burgle Eye', 0);
INSERT INTO `pool_creature` VALUES (73874, 43157, 0, 'Dustwallow Marsh: Ripscale', 0);
INSERT INTO `pool_creature` VALUES (74754, 43157, 0, 'Dustwallow Marsh: Ripscale', 0);
INSERT INTO `pool_creature` VALUES (2562709, 43525, 0, 'Mossheart', 0);
INSERT INTO `pool_creature` VALUES (2562708, 43525, 0, 'Rotmaw', 0);
INSERT INTO `pool_creature` VALUES (2562711, 43525, 0, 'Mossheart', 0);
INSERT INTO `pool_creature` VALUES (2562710, 43525, 0, 'Mossheart', 0);
INSERT INTO `pool_creature` VALUES (2562705, 43525, 0, 'Rotmaw', 0);
INSERT INTO `pool_creature` VALUES (2562706, 43525, 0, 'Rotmaw', 0);
INSERT INTO `pool_creature` VALUES (2562713, 43525, 0, 'Mossheart', 0);
INSERT INTO `pool_creature` VALUES (2562712, 43525, 0, 'Mossheart', 0);
INSERT INTO `pool_creature` VALUES (2562707, 43525, 0, 'Rotmaw', 0);


SET FOREIGN_KEY_CHECKS = 1;
