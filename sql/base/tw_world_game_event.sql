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
-- Table structure for game_event
-- ----------------------------
DROP TABLE IF EXISTS `game_event`;
CREATE TABLE `game_event`  (
  `entry` mediumint(8) UNSIGNED NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) UNSIGNED NOT NULL DEFAULT 5184000 COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) UNSIGNED NOT NULL DEFAULT 2592000 COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Client side holiday id',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Description of the event displayed in console',
  `hardcoded` tinyint(4) NOT NULL DEFAULT 0,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `required_phase` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_event
-- ----------------------------
INSERT INTO `game_event` VALUES (1, '2020-06-21 20:00:00', '2030-12-31 22:59:59', 525600, 30240, 341, 'Midsummer Fire Festival', 0, 0, 0);
INSERT INTO `game_event` VALUES (2, '2020-12-11 12:00:00', '2030-12-31 22:59:59', 525600, 44640, 141, 'Feast of Winter Veil', 0, 0, 0);
INSERT INTO `game_event` VALUES (4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 2592000, 374, 'Darkmoon Faire (Elwynn)', 1, 0, 0);
INSERT INTO `game_event` VALUES (5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 2592000, 375, 'Darkmoon Faire (Mulgore)', 1, 0, 0);
INSERT INTO `game_event` VALUES (6, '2017-01-01 03:00:00', '2026-12-30 04:00:00', 525600, 10, 0, 'Fireworks', 1, 0, 0);
INSERT INTO `game_event` VALUES (7, '2020-01-24 22:00:00', '2030-12-31 22:59:59', 525600, 20160, 327, 'Lunar Festival', 0, 0, 0);
INSERT INTO `game_event` VALUES (8, '2021-02-11 22:00:00', '2030-02-16 22:00:00', 525600, 7200, 335, 'Love is in the Air', 0, 0, 0);
INSERT INTO `game_event` VALUES (9, '2020-04-13 20:00:00', '2030-12-31 22:59:59', 524160, 1440, 181, 'Noblegarden', 0, 0, 0);
INSERT INTO `game_event` VALUES (10, '2022-02-01 12:00:00', '2030-12-31 22:59:59', 40320, 10080, 201, 'Children\'s Week', 0, 0, 0);
INSERT INTO `game_event` VALUES (11, '2020-09-29 22:00:00', '2030-12-31 22:59:59', 525600, 10080, 321, 'Harvest Festival', 0, 0, 0);
INSERT INTO `game_event` VALUES (12, '2020-10-18 20:00:00', '2030-12-31 22:59:59', 525600, 20160, 324, 'Hallow\'s End', 0, 0, 0);
INSERT INTO `game_event` VALUES (22, '2020-08-03 00:00:00', '2030-12-31 02:00:00', 1, 2592000, 0, 'AQ War Effort (NPC & GO \'Initial\')', 1, 1, 2);
INSERT INTO `game_event` VALUES (17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 999999999, 0, 'Scourge Invasion', 1, 1, 3);
INSERT INTO `game_event` VALUES (13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion', 1, 0, 0);
INSERT INTO `game_event` VALUES (14, '2017-01-07 08:00:00', '2026-12-31 23:00:00', 10080, 1920, 0, 'Stranglethorn Fishing Extravaganza: Announce', 0, 0, 0);
INSERT INTO `game_event` VALUES (16, '2020-12-31 23:00:00', '2030-12-31 22:59:59', 180, 120, 0, 'Gurubashi Arena Booty Run', 0, 0, 0);
INSERT INTO `game_event` VALUES (15, '2017-01-08 13:00:00', '2026-12-31 23:00:00', 10080, 120, 301, 'Stranglethorn Fishing Extravaganza: Tournament', 0, 0, 0);
INSERT INTO `game_event` VALUES (19, '2020-05-02 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 284, 'Call to Arms: Warsong Gulch', 0, 0, 0);
INSERT INTO `game_event` VALUES (20, '2020-05-03 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 285, 'Call to Arms: Arathi Basin', 0, 0, 0);
INSERT INTO `game_event` VALUES (23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 2592000, 374, 'Darkmoon Faire Building (Elwynn) (TODO)', 1, 0, 0);
INSERT INTO `game_event` VALUES (25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'Call to arms', 0, 0, 0);
INSERT INTO `game_event` VALUES (27, '2020-01-02 00:00:00', '2030-12-31 03:00:00', 1440, 720, 0, 'Night', 0, 0, 0);
INSERT INTO `game_event` VALUES (29, '2020-06-10 00:00:01', '2030-12-31 22:59:59', 80640, 20160, 0, 'Edge of Madness, Gri\'lek', 0, 0, 0);
INSERT INTO `game_event` VALUES (30, '2020-06-23 00:00:01', '2030-12-31 22:59:59', 80640, 20160, 0, 'Edge of Madness, Hazza\'rah', 0, 0, 0);
INSERT INTO `game_event` VALUES (31, '2020-05-12 00:00:01', '2030-12-31 22:59:59', 80640, 20160, 0, 'Edge of Madness, Renataki', 0, 0, 0);
INSERT INTO `game_event` VALUES (32, '2020-05-26 00:00:01', '2030-12-31 22:59:59', 80640, 20160, 0, 'Edge of Madness, Wushoolay', 0, 0, 0);
INSERT INTO `game_event` VALUES (28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 2880, 0, 'Noblegarden', 0, 0, 0);
INSERT INTO `game_event` VALUES (33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Tournament', 0, 0, 0);
INSERT INTO `game_event` VALUES (34, '2020-12-31 06:00:00', '2030-01-01 06:00:05', 525600, 1445, 0, 'New Year\'s Eve', 0, 0, 0);
INSERT INTO `game_event` VALUES (35, '2010-03-24 10:00:00', '2030-01-01 03:00:00', 1260, 420, 0, 'The Maul: Mushgog', 0, 0, 0);
INSERT INTO `game_event` VALUES (36, '2010-03-24 17:00:00', '2030-01-01 03:00:00', 1260, 420, 0, 'The Maul: Skarr the Unbreakable', 0, 0, 0);
INSERT INTO `game_event` VALUES (37, '2010-03-25 00:00:00', '2030-01-01 03:00:00', 1260, 420, 0, 'The Maul: Razza', 0, 0, 0);
INSERT INTO `game_event` VALUES (161, '2017-01-01 17:00:00', '2030-12-31 11:00:00', 1, 9999999999, 0, 'Mirage Race', 1, 0, 0);
INSERT INTO `game_event` VALUES (40, '2017-01-08 11:00:00', '2026-12-31 23:00:00', 10080, 300, 0, 'Stranglethorn Fishing Extravaganza: The Crew', 0, 0, 0);
INSERT INTO `game_event` VALUES (47, '2017-01-01 05:00:00', '2030-12-30 23:00:00', 1440, 1080, 0, 'Fishing: Sunscale Cycle', 0, 0, 0);
INSERT INTO `game_event` VALUES (45, '2020-03-20 10:00:00', '2030-01-01 04:00:00', 525600, 262800, 0, 'Fishing: summer period (for Raw Summer Bass)', 0, 0, 0);
INSERT INTO `game_event` VALUES (46, '2020-09-23 09:00:00', '2030-01-01 04:00:00', 525600, 262800, 0, 'Fishing: winter period (for Winter Squid)', 0, 0, 0);
INSERT INTO `game_event` VALUES (53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Effort (NPC Reput Named \'Officer\')', 1, 0, 2);
INSERT INTO `game_event` VALUES (52, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Effort (NPC Reput \'Only War Effort\')', 1, 0, 2);
INSERT INTO `game_event` VALUES (54, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Troop Silithus (NPC & GO) DAY 1', 1, 1, 2);
INSERT INTO `game_event` VALUES (55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Troop Silithus (NPC & GO) DAY 2', 1, 1, 2);
INSERT INTO `game_event` VALUES (56, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Troop Silithus (NPC & GO) DAY 3', 1, 1, 2);
INSERT INTO `game_event` VALUES (57, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Troop Silithus (NPC & GO) DAY 4', 1, 1, 2);
INSERT INTO `game_event` VALUES (58, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Troop Silithus (NPC & GO) DAY 5', 1, 1, 2);
INSERT INTO `game_event` VALUES (59, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Effort (Cenarion Hold attack)', 1, 1, 2);
INSERT INTO `game_event` VALUES (60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Troop Silithus 3 (NPC & GO)', 1, 0, 2);
INSERT INTO `game_event` VALUES (61, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War Final Battle (NPC)', 1, 1, 2);
INSERT INTO `game_event` VALUES (62, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War - Secrets of the Colossus Ashi', 0, 1, 2);
INSERT INTO `game_event` VALUES (63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War - Secrets of the Colossus Regal', 0, 1, 2);
INSERT INTO `game_event` VALUES (64, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War - Secrets of the Colossus Zora', 0, 1, 2);
INSERT INTO `game_event` VALUES (65, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2592000, 0, 'AQ War - Spawn of Crystals', 1, 1, 2);
INSERT INTO `game_event` VALUES (18, '2020-05-01 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 283, 'Call to arms: Alterac Valley', 0, 0, 0);
INSERT INTO `game_event` VALUES (24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 2592000, 375, 'Darkmoon Faire Building (Mulgore) (TODO)', 1, 0, 0);
INSERT INTO `game_event` VALUES (68, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: Fire (Un\'goro Crater)', 1, 0, 0);
INSERT INTO `game_event` VALUES (103, '2020-09-08 04:00:00', '2030-12-31 03:00:00', 525600, 33720, 0, 'Event PVP Silithus', 0, 0, 0);
INSERT INTO `game_event` VALUES (129, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 999999999, 0, 'Scourge Invasion - Phase 2 - Invasion Stormwind', 0, 0, 3);
INSERT INTO `game_event` VALUES (130, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 999999999, 0, 'Scourge Invasion - Phase 2 - Invasion Undercity', 0, 0, 3);
INSERT INTO `game_event` VALUES (81, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 999999999, 0, 'Scourge Invasion - Boss in instance activation', 0, 0, 3);
INSERT INTO `game_event` VALUES (80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 999999999, 0, 'Scourge Invasion - Skeleton spawn / Quest activation lvl 9-11', 0, 0, 3);
INSERT INTO `game_event` VALUES (150, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 33720, 0, 'Leprithus Spawn (Westfall)', 1, 0, 0);
INSERT INTO `game_event` VALUES (151, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 33720, 0, 'Fleshrippers Spawn (Westfall, Moonbrook)', 1, 0, 0);
INSERT INTO `game_event` VALUES (49, '2020-01-02 21:00:00', '2030-12-31 05:30:00', 1440, 480, 0, 'Pyrewood Village Night', 0, 0, 0);
INSERT INTO `game_event` VALUES (152, '2022-01-01 17:00:00', '2030-03-31 18:00:00', 1440, 60, 0, 'Southshore Assassins', 0, 0, 0);
INSERT INTO `game_event` VALUES (160, '2023-03-30 04:00:00', '2030-03-30 03:00:00', 1, 2, 0, '1.10 Patch : t0.5 Quest Chain', 0, 0, 0);
INSERT INTO `game_event` VALUES (159, '2005-03-30 03:00:00', '2030-03-30 03:00:00', 1, 2, 0, 'DM Release : Cloth turning NPC', 0, 0, 0);
INSERT INTO `game_event` VALUES (158, '2015-03-30 04:00:00', '2030-03-30 03:00:00', 1, 2, 0, '1.10 Patch : Recipes', 0, 0, 2);
INSERT INTO `game_event` VALUES (156, '2014-03-30 04:00:00', '2030-03-30 03:00:00', 1, 2, 0, 'DM release : Recipes and misc item', 0, 0, 0);
INSERT INTO `game_event` VALUES (66, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Dragons of Nightmare Spawn', 1, 0, 1);
INSERT INTO `game_event` VALUES (69, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: Air (Silithus)', 1, 0, 0);
INSERT INTO `game_event` VALUES (70, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: Earth (Azshara)', 1, 0, 0);
INSERT INTO `game_event` VALUES (71, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: Water (Winterspring)', 1, 0, 0);
INSERT INTO `game_event` VALUES (72, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: Baron Charr (Un\'goro Crater)', 1, 0, 0);
INSERT INTO `game_event` VALUES (73, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: The Windreaver (Silithus)', 1, 0, 0);
INSERT INTO `game_event` VALUES (74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: Avalanchion (Azshara)', 1, 0, 0);
INSERT INTO `game_event` VALUES (75, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'Elemental Invasion: Princess Tempestria (Winterspring)', 1, 0, 0);
INSERT INTO `game_event` VALUES (48, '2017-01-01 17:00:00', '2030-12-31 11:00:00', 1440, 1080, 0, 'Fishing: Nightfin Cycle', 0, 0, 0);
INSERT INTO `game_event` VALUES (39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 60, 10, 0, 'Post Firework Toasting Goblets', 1, 0, 0);
INSERT INTO `game_event` VALUES (78, '2010-01-01 00:00:00', '2025-01-01 00:00:00', 60, 1, 0, 'Hourly Bells', 0, 0, 0);
INSERT INTO `game_event` VALUES (83, '2004-12-31 23:00:00', '2025-01-01 00:00:00', 1, 2592000, 0, 'AQ Gate', 0, 1, 0);
INSERT INTO `game_event` VALUES (84, '2004-12-31 23:00:00', '2025-01-01 00:00:00', 1, 2, 0, 'AQ War Effort (master event)', 1, 0, 2);
INSERT INTO `game_event` VALUES (85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 999999999, 0, 'AQ War Effort (gong)', 1, 1, 2);
INSERT INTO `game_event` VALUES (86, '2004-12-31 23:00:00', '2025-01-01 00:00:00', 1, 2, 0, 'AQ War Effort (post-event)', 1, 0, 2);
INSERT INTO `game_event` VALUES (21, '2020-12-25 00:00:00', '2030-01-02 23:59:59', 525600, 12960, 0, 'Feast of Winter Veil: Gifts', 0, 0, 0);
INSERT INTO `game_event` VALUES (110, '2021-02-16 22:00:00', '2030-02-11 22:00:00', 525600, 525600, 335, 'Love is in the Air - Popularity Contest Winner: Darnassus', 0, 1, 0);
INSERT INTO `game_event` VALUES (38, '2020-02-08 06:00:00', '2030-02-09 06:00:00', 525600, 1445, 0, 'Chinese New Year', 0, 0, 0);
INSERT INTO `game_event` VALUES (41, '2020-06-04 00:00:00', '2027-06-05 00:00:00', 525600, 1440, 0, 'July 4th Fireworks Spectacular (US Only)', 0, 0, 0);
INSERT INTO `game_event` VALUES (42, '2020-09-30 00:00:00', '2027-10-01 00:00:00', 525600, 1440, 0, 'September 30th Peon Day (EU Only)', 0, 0, 0);
INSERT INTO `game_event` VALUES (162, '2021-01-01 18:00:00', '2030-12-31 12:00:00', 1, 9999999999, 0, 'Uldum Boss', 1, 0, 0);
INSERT INTO `game_event` VALUES (111, '2021-02-16 22:00:00', '2030-02-11 22:00:00', 525600, 525600, 335, 'Love is in the Air - Popularity Contest Winner: Ironforge', 0, 1, 0);
INSERT INTO `game_event` VALUES (112, '2021-02-16 22:00:00', '2030-02-11 22:00:00', 525600, 525600, 335, 'Love is in the Air - Popularity Contest Winner: Stormwind', 0, 1, 0);
INSERT INTO `game_event` VALUES (113, '2021-02-16 22:00:00', '2030-02-11 22:00:00', 525600, 525600, 335, 'Love is in the Air - Popularity Contest Winner: Orgrimmar', 0, 1, 0);
INSERT INTO `game_event` VALUES (114, '2021-02-16 22:00:00', '2030-02-11 22:00:00', 525600, 525600, 335, 'Love is in the Air - Popularity Contest Winner: Thunder Bluff', 0, 1, 0);
INSERT INTO `game_event` VALUES (115, '2021-02-16 22:00:00', '2030-02-11 22:00:00', 525600, 525600, 335, 'Love is in the Air - Popularity Contest Winner: Undercity', 0, 1, 0);
INSERT INTO `game_event` VALUES (50, '2020-05-04 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 286, 'Call to Arms: Blood Ring', 0, 0, 0);
INSERT INTO `game_event` VALUES (51, '2020-05-05 00:00:01', '2030-12-31 22:59:59', 7200, 1440, 287, 'Call to Arms: Sunnyglade', 0, 0, 0);
INSERT INTO `game_event` VALUES (163, '2023-03-30 04:00:00', '2030-03-30 03:00:00', 1, 2, 0, '1.6 Patch: BWL Attunement', 0, 0, 1);
INSERT INTO `game_event` VALUES (164, '2023-03-30 04:00:00', '2030-03-30 03:00:00', 1, 2, 0, '1.9 Patch: Quests', 0, 0, 2);


SET FOREIGN_KEY_CHECKS = 1;
