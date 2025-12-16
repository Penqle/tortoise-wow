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
-- Table structure for warden_scans
-- ----------------------------
DROP TABLE IF EXISTS `warden_scans`;
CREATE TABLE `warden_scans`  (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` int(11) NULL DEFAULT 0,
  `str` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` int(11) NULL DEFAULT 0,
  `length` int(11) NULL DEFAULT 0,
  `result` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flags` smallint(5) UNSIGNED NOT NULL,
  `comment` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warden_scans
-- ----------------------------
INSERT INTO `warden_scans` VALUES (1, 0, NULL, NULL, 8679268, 6, '686561646572', 6, 'Packet internal sign - \"header\"');
INSERT INTO `warden_scans` VALUES (2, 0, NULL, NULL, 8696620, 6, '686561646572', 8, 'Packet internal sign - \"header\"');
INSERT INTO `warden_scans` VALUES (3, 0, NULL, NULL, 8530960, 6, '53595354454D', 6, 'Packet internal sign - \"SYSTEM\"');
INSERT INTO `warden_scans` VALUES (4, 0, NULL, NULL, 8547832, 6, '53595354454D', 8, 'Packet internal sign - \"SYSTEM\"');
INSERT INTO `warden_scans` VALUES (5, 2, NULL, '82D7E5CBC8D2F78A791E189BAB3FD5D4342BF7EB0CA3F129', 74044, NULL, '0', 14, 'Cheat Engine dll');
INSERT INTO `warden_scans` VALUES (6, 2, NULL, 'A444519CC419521B6D39990C1D95329C8D94B59226CBAA98', 16507, NULL, '0', 14, 'WPE PRO dll');
INSERT INTO `warden_scans` VALUES (7, 2, NULL, '3A0F8985E701343E439C74B675C72BBE2D8810A745569913', 372624, NULL, '0', 14, 'rPE dll');
INSERT INTO `warden_scans` VALUES (8, 0, NULL, NULL, 8151666, 4, 'D893FEC0', 2, 'Jump gravity');
INSERT INTO `warden_scans` VALUES (9, 0, NULL, NULL, 8151646, 2, '3075', 2, 'Jump gravity water');
INSERT INTO `warden_scans` VALUES (10, 0, NULL, NULL, 6382555, 2, '8A47', 2, 'Anti root');
INSERT INTO `warden_scans` VALUES (11, 0, NULL, NULL, 6380789, 1, 'F8', 2, 'Anti move');
INSERT INTO `warden_scans` VALUES (12, 0, NULL, NULL, 8151647, 1, '75', 2, 'Anti jump');
INSERT INTO `warden_scans` VALUES (13, 0, NULL, NULL, 8152026, 4, '8B4F7889', 2, 'No fall damage');
INSERT INTO `warden_scans` VALUES (14, 0, NULL, NULL, 6504892, 2, '7425', 2, 'Super fly');
INSERT INTO `warden_scans` VALUES (15, 0, NULL, NULL, 6383433, 2, '780F', 2, 'Heartbeat interval speedhack');
INSERT INTO `warden_scans` VALUES (16, 0, NULL, NULL, 6284623, 1, 'F4', 2, 'Anti slow hack');
INSERT INTO `warden_scans` VALUES (17, 0, NULL, NULL, 6504931, 2, '85D2', 2, 'No fall damage');
INSERT INTO `warden_scans` VALUES (18, 0, NULL, NULL, 8151565, 2, '2000', 2, 'Fly hack');
INSERT INTO `warden_scans` VALUES (19, 0, NULL, NULL, 7153475, 6, '890D509CCE00', 2, 'General hacks');
INSERT INTO `warden_scans` VALUES (20, 0, NULL, NULL, 7138894, 6, 'A3D89BCE00EB', 2, 'Wall climb');
INSERT INTO `warden_scans` VALUES (21, 0, NULL, NULL, 7138907, 6, '890DD89BCE00', 2, 'Wall climb');
INSERT INTO `warden_scans` VALUES (22, 0, NULL, NULL, 6993044, 1, '74', 2, 'Zero gravity');
INSERT INTO `warden_scans` VALUES (23, 0, NULL, NULL, 6502300, 1, 'FC', 2, 'Air walk');
INSERT INTO `warden_scans` VALUES (24, 0, NULL, NULL, 6340512, 2, '7F7D', 2, 'Wall climb');
INSERT INTO `warden_scans` VALUES (25, 0, NULL, NULL, 6380455, 4, 'F4010000', 2, 'Wall climb');
INSERT INTO `warden_scans` VALUES (26, 0, NULL, NULL, 8151657, 4, '488C11C1', 2, 'Wall climb');
INSERT INTO `warden_scans` VALUES (27, 0, NULL, NULL, 6992319, 3, '894704', 2, 'Wall climb');
INSERT INTO `warden_scans` VALUES (28, 0, NULL, NULL, 6340529, 2, '746C', 2, 'No water hack');
INSERT INTO `warden_scans` VALUES (29, 0, NULL, NULL, 6356016, 10, 'C70588D8C4000C000000', 2, 'No water hack');
INSERT INTO `warden_scans` VALUES (30, 0, NULL, NULL, 4730584, 6, '0F8CE1000000', 2, 'WMO collision');
INSERT INTO `warden_scans` VALUES (31, 0, NULL, NULL, 4803152, 7, 'A1C0EACE0085C0', 2, 'noclip hack');
INSERT INTO `warden_scans` VALUES (32, 0, NULL, NULL, 5946704, 6, '8BD18B0D80E0', 2, 'M2 collision');
INSERT INTO `warden_scans` VALUES (33, 0, NULL, NULL, 6340543, 2, '7546', 2, 'M2 collision');
INSERT INTO `warden_scans` VALUES (34, 0, NULL, NULL, 5341282, 1, '7F', 2, 'Warden disable');
INSERT INTO `warden_scans` VALUES (35, 0, NULL, NULL, 4989376, 1, '72', 2, 'No fog hack');
INSERT INTO `warden_scans` VALUES (36, 0, NULL, NULL, 8145237, 1, '8B', 2, 'No fog hack');
INSERT INTO `warden_scans` VALUES (37, 0, NULL, NULL, 6392083, 8, '8B450850E824DA1A', 2, 'No fog hack');
INSERT INTO `warden_scans` VALUES (38, 0, NULL, NULL, 8146241, 10, 'D9818C0000008BE55DC2', 2, 'tp2plane hack');
INSERT INTO `warden_scans` VALUES (39, 0, NULL, NULL, 6995731, 1, '74', 2, 'Air swim hack');
INSERT INTO `warden_scans` VALUES (40, 0, NULL, NULL, 6964859, 1, '75', 2, 'Infinite jump hack');
INSERT INTO `warden_scans` VALUES (41, 0, NULL, NULL, 6382558, 10, '84C074178B86A4000000', 2, 'Gravity water hack');
INSERT INTO `warden_scans` VALUES (42, 0, NULL, NULL, 8151997, 3, '895108', 2, 'Gravity hack');
INSERT INTO `warden_scans` VALUES (43, 0, NULL, NULL, 8152025, 1, '34', 2, 'Plane teleport');
INSERT INTO `warden_scans` VALUES (44, 0, NULL, NULL, 6516436, 1, 'FC', 2, 'Zero fall time');
INSERT INTO `warden_scans` VALUES (45, 0, NULL, NULL, 6501616, 1, 'FC', 2, 'No fall damage');
INSERT INTO `warden_scans` VALUES (46, 0, NULL, NULL, 6511674, 1, 'FC', 2, 'Fall time hack');
INSERT INTO `warden_scans` VALUES (47, 0, NULL, NULL, 6513048, 1, 'FC', 2, 'Death bug hack');
INSERT INTO `warden_scans` VALUES (48, 0, NULL, NULL, 6514072, 1, 'FC', 2, 'Anti slow hack');
INSERT INTO `warden_scans` VALUES (49, 0, NULL, NULL, 8152029, 3, '894E38', 2, 'Anti slow hack');
INSERT INTO `warden_scans` VALUES (50, 0, NULL, NULL, 4847346, 3, '8B45D4', 2, 'Max camera distance hack');
INSERT INTO `warden_scans` VALUES (51, 0, NULL, NULL, 4847069, 1, '74', 2, 'Wall climb');
INSERT INTO `warden_scans` VALUES (52, 0, NULL, NULL, 8155231, 3, '000000', 2, 'Signature check');
INSERT INTO `warden_scans` VALUES (53, 0, NULL, NULL, 6356849, 1, '74', 2, 'Signature check');
INSERT INTO `warden_scans` VALUES (54, 0, NULL, NULL, 6354889, 6, '0F8A71FFFFFF', 2, 'Signature check');
INSERT INTO `warden_scans` VALUES (55, 0, NULL, NULL, 4657642, 1, '74', 2, 'Max interact distance hack');
INSERT INTO `warden_scans` VALUES (56, 0, NULL, NULL, 6211360, 8, '558BEC83EC0C8B45', 2, 'Hover speed hack');
INSERT INTO `warden_scans` VALUES (57, 0, NULL, NULL, 8153504, 3, '558BEC', 2, 'Flight speed hack');
INSERT INTO `warden_scans` VALUES (58, 0, NULL, NULL, 6214285, 6, '8B82500E0000', 2, 'Track all units hack');
INSERT INTO `warden_scans` VALUES (59, 0, NULL, NULL, 8151558, 11, '25FFFFDFFB0D0020000089', 2, 'No fall damage');
INSERT INTO `warden_scans` VALUES (60, 0, NULL, NULL, 8155228, 6, '89868C000000', 2, 'Run speed hack');
INSERT INTO `warden_scans` VALUES (61, 0, NULL, NULL, 6356837, 2, '7474', 2, 'Follow anything hack');
INSERT INTO `warden_scans` VALUES (62, 0, NULL, NULL, 6751806, 1, '74', 2, 'No water hack');
INSERT INTO `warden_scans` VALUES (63, 0, NULL, NULL, 4657632, 2, '740A', 2, 'Any name hack');
INSERT INTO `warden_scans` VALUES (64, 0, NULL, NULL, 8151976, 4, '84E5FFFF', 2, 'Plane teleport');
INSERT INTO `warden_scans` VALUES (65, 0, NULL, NULL, 6214371, 6, '8BB1540E0000', 2, 'Object tracking hack');
INSERT INTO `warden_scans` VALUES (66, 0, NULL, NULL, 6818689, 5, 'A388F2C700', 2, 'No water hack');
INSERT INTO `warden_scans` VALUES (67, 0, NULL, NULL, 6186028, 5, 'C705ACD2C4', 2, 'No fog hack');
INSERT INTO `warden_scans` VALUES (68, 0, NULL, NULL, 5473808, 4, '30855300', 2, 'Warden disable hack ');
INSERT INTO `warden_scans` VALUES (69, 0, NULL, NULL, 4208171, 3, '6B2C00', 2, 'Warden disable hack');
INSERT INTO `warden_scans` VALUES (70, 0, NULL, NULL, 7119285, 1, '74', 2, 'Warden disable hack');
INSERT INTO `warden_scans` VALUES (71, 0, NULL, NULL, 4729827, 1, '5E', 2, 'Daylight hack');
INSERT INTO `warden_scans` VALUES (72, 0, NULL, NULL, 6354512, 6, '0F84EA000000', 2, 'Ranged attack stop hack');
INSERT INTO `warden_scans` VALUES (73, 0, NULL, NULL, 5053463, 2, '7415', 2, 'Officer note hack');
INSERT INTO `warden_scans` VALUES (74, 4, 'World\\Lordaeron\\stratholme\\Activedoodads\\doors\\nox_door_plague.m2', NULL, 0, 0, 'B4452B6D95C98B186A70B008FA07BBAEF30DF7A2', 14, 'Stratholme door');
INSERT INTO `warden_scans` VALUES (75, 4, 'World\\Kalimdor\\onyxiaslair\\doors\\OnyxiasGate01.m2', NULL, 0, 0, '75195E4AEDA0BCAF048CA0E34D95A70D4F53C746', 14, 'Onyxia gate');
INSERT INTO `warden_scans` VALUES (76, 4, 'World\\Generic\\Human\\Activedoodads\\doors\\deadminedoor02.m2', NULL, 0, 0, '3DFF011B9AB134F37F885097E695351B91953564', 14, 'Deadmines door');
INSERT INTO `warden_scans` VALUES (77, 4, 'World\\Kalimdor\\silithus\\activedoodads\\ahnqirajdoor\\ahnqirajdoor02.m2', NULL, 0, 0, 'DBD4F407C468CC36134E621D160178FDA4D0D249', 14, 'AQ door');
INSERT INTO `warden_scans` VALUES (78, 4, 'World\\Kalimdor\\diremaul\\activedoodads\\doors\\diremaulsmallinstancedoor.m2', NULL, 0, 0, '0DC8DB46C85549C0FF1A600F6C236357C305781A', 14, 'Dire Maul Gordok Inner Door');
INSERT INTO `warden_scans` VALUES (79, 0, NULL, NULL, 8139737, 5, 'D84E14DEC1', 2, 'UNKNOWN movement hack?');
INSERT INTO `warden_scans` VALUES (80, 0, NULL, NULL, 8902804, 4, '8E977042', 2, 'Wall climb hack');
INSERT INTO `warden_scans` VALUES (81, 0, NULL, NULL, 8902808, 4, '0000E040', 2, 'Run speed hack');
INSERT INTO `warden_scans` VALUES (82, 0, NULL, NULL, 8154755, 7, '8166403FFFDFFF', 2, 'Moveflag hack');
INSERT INTO `warden_scans` VALUES (83, 0, NULL, NULL, 8445948, 4, 'BB8D243F', 2, 'Wall climb hack');
INSERT INTO `warden_scans` VALUES (84, 0, NULL, NULL, 6493717, 2, '741D', 2, 'Speed hack');
INSERT INTO `warden_scans` VALUES (85, 2, NULL, '33D233C9E887071B00E8', 13856, NULL, '1', 14, 'Warden packet process code search sanity check');
INSERT INTO `warden_scans` VALUES (86, 1, 'kernel32.dll', NULL, 0, 0, '1', 14, 'Warden module search bypass sanity check');
INSERT INTO `warden_scans` VALUES (87, 1, 'wpespy.dll', NULL, 0, 0, '0', 14, 'WPE Pro');
INSERT INTO `warden_scans` VALUES (88, 1, 'speedhack-i386.dll', NULL, 0, 0, '0', 14, 'CheatEngine');
INSERT INTO `warden_scans` VALUES (89, 1, 'tamia.dll', NULL, 0, 0, '0', 14, 'Tamia hack');
INSERT INTO `warden_scans` VALUES (90, 0, NULL, NULL, 5470880, 8, '558BEC8B156CD4C0', 6, 'Packet Reading Hook');
INSERT INTO `warden_scans` VALUES (91, 0, NULL, NULL, 4367182, 4, '72043BF1', 2, 'oGasai');
INSERT INTO `warden_scans` VALUES (92, 0, NULL, NULL, 7119406, 4, 'A37889CE', 2, 'BloogBot');


SET FOREIGN_KEY_CHECKS = 1;
