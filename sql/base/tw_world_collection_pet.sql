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
-- Table structure for collection_pet
-- ----------------------------
DROP TABLE IF EXISTS `collection_pet`;
CREATE TABLE `collection_pet`  (
  `itemId` int(10) UNSIGNED NOT NULL,
  `spellId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`itemId`, `spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection_pet
-- ----------------------------
INSERT INTO `collection_pet` VALUES (4401, 4055);
INSERT INTO `collection_pet` VALUES (8485, 10673);
INSERT INTO `collection_pet` VALUES (8486, 10674);
INSERT INTO `collection_pet` VALUES (8487, 10676);
INSERT INTO `collection_pet` VALUES (8488, 10678);
INSERT INTO `collection_pet` VALUES (8489, 10679);
INSERT INTO `collection_pet` VALUES (8490, 10677);
INSERT INTO `collection_pet` VALUES (8491, 10675);
INSERT INTO `collection_pet` VALUES (8492, 10683);
INSERT INTO `collection_pet` VALUES (8494, 10682);
INSERT INTO `collection_pet` VALUES (8495, 10684);
INSERT INTO `collection_pet` VALUES (8496, 10680);
INSERT INTO `collection_pet` VALUES (8497, 10711);
INSERT INTO `collection_pet` VALUES (8498, 10698);
INSERT INTO `collection_pet` VALUES (8499, 10697);
INSERT INTO `collection_pet` VALUES (8500, 10707);
INSERT INTO `collection_pet` VALUES (8501, 10706);
INSERT INTO `collection_pet` VALUES (10360, 10714);
INSERT INTO `collection_pet` VALUES (10361, 10716);
INSERT INTO `collection_pet` VALUES (10392, 10717);
INSERT INTO `collection_pet` VALUES (10393, 10688);
INSERT INTO `collection_pet` VALUES (10394, 10709);
INSERT INTO `collection_pet` VALUES (10398, 12243);
INSERT INTO `collection_pet` VALUES (10822, 10695);
INSERT INTO `collection_pet` VALUES (11023, 10685);
INSERT INTO `collection_pet` VALUES (11026, 10704);
INSERT INTO `collection_pet` VALUES (11027, 10703);
INSERT INTO `collection_pet` VALUES (11110, 13548);
INSERT INTO `collection_pet` VALUES (11474, 15067);
INSERT INTO `collection_pet` VALUES (11825, 15048);
INSERT INTO `collection_pet` VALUES (11826, 15049);
INSERT INTO `collection_pet` VALUES (11903, 15648);
INSERT INTO `collection_pet` VALUES (12264, 15999);
INSERT INTO `collection_pet` VALUES (12529, 16450);
INSERT INTO `collection_pet` VALUES (13582, 17709);
INSERT INTO `collection_pet` VALUES (13583, 17707);
INSERT INTO `collection_pet` VALUES (13584, 17708);
INSERT INTO `collection_pet` VALUES (15996, 19772);
INSERT INTO `collection_pet` VALUES (18963, 23428);
INSERT INTO `collection_pet` VALUES (18964, 23429);
INSERT INTO `collection_pet` VALUES (18965, 23432);
INSERT INTO `collection_pet` VALUES (18966, 23431);
INSERT INTO `collection_pet` VALUES (18967, 23430);
INSERT INTO `collection_pet` VALUES (19054, 23530);
INSERT INTO `collection_pet` VALUES (19055, 23531);
INSERT INTO `collection_pet` VALUES (19450, 23811);
INSERT INTO `collection_pet` VALUES (20371, 24696);
INSERT INTO `collection_pet` VALUES (20651, 25018);
INSERT INTO `collection_pet` VALUES (20769, 25162);
INSERT INTO `collection_pet` VALUES (21168, 25849);
INSERT INTO `collection_pet` VALUES (21277, 26010);
INSERT INTO `collection_pet` VALUES (21301, 26532);
INSERT INTO `collection_pet` VALUES (21305, 26541);
INSERT INTO `collection_pet` VALUES (21308, 26528);
INSERT INTO `collection_pet` VALUES (21309, 26469);
INSERT INTO `collection_pet` VALUES (22114, 27241);
INSERT INTO `collection_pet` VALUES (22235, 27570);
INSERT INTO `collection_pet` VALUES (22780, 28487);
INSERT INTO `collection_pet` VALUES (22781, 28505);
INSERT INTO `collection_pet` VALUES (23002, 28738);
INSERT INTO `collection_pet` VALUES (23007, 28739);
INSERT INTO `collection_pet` VALUES (23015, 28740);
INSERT INTO `collection_pet` VALUES (23083, 28871);
INSERT INTO `collection_pet` VALUES (23712, 30152);
INSERT INTO `collection_pet` VALUES (23713, 30156);
INSERT INTO `collection_pet` VALUES (46497, 46496);
INSERT INTO `collection_pet` VALUES (50005, 46457);
INSERT INTO `collection_pet` VALUES (50006, 46458);
INSERT INTO `collection_pet` VALUES (50007, 46459);
INSERT INTO `collection_pet` VALUES (50009, 46460);
INSERT INTO `collection_pet` VALUES (50013, 46461);
INSERT INTO `collection_pet` VALUES (50014, 46462);
INSERT INTO `collection_pet` VALUES (50019, 46463);
INSERT INTO `collection_pet` VALUES (50058, 46464);
INSERT INTO `collection_pet` VALUES (50067, 10713);
INSERT INTO `collection_pet` VALUES (50068, 10718);
INSERT INTO `collection_pet` VALUES (50069, 10720);
INSERT INTO `collection_pet` VALUES (50070, 10699);
INSERT INTO `collection_pet` VALUES (50077, 10700);
INSERT INTO `collection_pet` VALUES (50078, 10701);
INSERT INTO `collection_pet` VALUES (50079, 10702);
INSERT INTO `collection_pet` VALUES (50080, 10705);
INSERT INTO `collection_pet` VALUES (50081, 10710);
INSERT INTO `collection_pet` VALUES (50082, 10708);
INSERT INTO `collection_pet` VALUES (50083, 10696);
INSERT INTO `collection_pet` VALUES (50084, 46465);
INSERT INTO `collection_pet` VALUES (50085, 46466);
INSERT INTO `collection_pet` VALUES (50200, 46467);
INSERT INTO `collection_pet` VALUES (50202, 46468);
INSERT INTO `collection_pet` VALUES (50602, 46472);
INSERT INTO `collection_pet` VALUES (51002, 46473);
INSERT INTO `collection_pet` VALUES (51003, 46474);
INSERT INTO `collection_pet` VALUES (51007, 46475);
INSERT INTO `collection_pet` VALUES (51220, 46476);
INSERT INTO `collection_pet` VALUES (51221, 46477);
INSERT INTO `collection_pet` VALUES (51251, 46479);
INSERT INTO `collection_pet` VALUES (51259, 46480);
INSERT INTO `collection_pet` VALUES (51260, 46481);
INSERT INTO `collection_pet` VALUES (51261, 46482);
INSERT INTO `collection_pet` VALUES (51421, 46483);
INSERT INTO `collection_pet` VALUES (51433, 46484);
INSERT INTO `collection_pet` VALUES (51700, 46485);
INSERT INTO `collection_pet` VALUES (51739, 46486);
INSERT INTO `collection_pet` VALUES (51858, 46489);
INSERT INTO `collection_pet` VALUES (51858, 46491);
INSERT INTO `collection_pet` VALUES (51889, 46227);
INSERT INTO `collection_pet` VALUES (51891, 46490);
INSERT INTO `collection_pet` VALUES (54000, 57200);
INSERT INTO `collection_pet` VALUES (54001, 57201);
INSERT INTO `collection_pet` VALUES (54002, 57202);
INSERT INTO `collection_pet` VALUES (54003, 57203);
INSERT INTO `collection_pet` VALUES (54004, 57204);
INSERT INTO `collection_pet` VALUES (54005, 57205);
INSERT INTO `collection_pet` VALUES (54006, 57206);
INSERT INTO `collection_pet` VALUES (54007, 57207);
INSERT INTO `collection_pet` VALUES (54008, 57208);
INSERT INTO `collection_pet` VALUES (60770, 49521);
INSERT INTO `collection_pet` VALUES (67000, 49517);
INSERT INTO `collection_pet` VALUES (69000, 49508);
INSERT INTO `collection_pet` VALUES (69001, 49509);
INSERT INTO `collection_pet` VALUES (69002, 49510);
INSERT INTO `collection_pet` VALUES (69003, 49511);
INSERT INTO `collection_pet` VALUES (69004, 49512);
INSERT INTO `collection_pet` VALUES (69005, 49513);
INSERT INTO `collection_pet` VALUES (69006, 49514);
INSERT INTO `collection_pet` VALUES (70016, 46492);
INSERT INTO `collection_pet` VALUES (80000, 45021);
INSERT INTO `collection_pet` VALUES (80001, 45015);
INSERT INTO `collection_pet` VALUES (80002, 45016);
INSERT INTO `collection_pet` VALUES (80003, 45000);
INSERT INTO `collection_pet` VALUES (80004, 45023);
INSERT INTO `collection_pet` VALUES (80006, 45031);
INSERT INTO `collection_pet` VALUES (80007, 45014);
INSERT INTO `collection_pet` VALUES (80010, 49513);
INSERT INTO `collection_pet` VALUES (80410, 45022);
INSERT INTO `collection_pet` VALUES (80878, 46033);
INSERT INTO `collection_pet` VALUES (81150, 46493);
INSERT INTO `collection_pet` VALUES (81151, 46494);
INSERT INTO `collection_pet` VALUES (81152, 46495);
INSERT INTO `collection_pet` VALUES (81159, 46496);
INSERT INTO `collection_pet` VALUES (81183, 46497);
INSERT INTO `collection_pet` VALUES (81207, 49500);
INSERT INTO `collection_pet` VALUES (81243, 46487);
INSERT INTO `collection_pet` VALUES (81248, 49501);
INSERT INTO `collection_pet` VALUES (81254, 49502);
INSERT INTO `collection_pet` VALUES (81258, 49515);
INSERT INTO `collection_pet` VALUES (81283, 49503);
INSERT INTO `collection_pet` VALUES (81349, 49504);
INSERT INTO `collection_pet` VALUES (83010, 49505);
INSERT INTO `collection_pet` VALUES (83272, 49506);
INSERT INTO `collection_pet` VALUES (83300, 57039);
INSERT INTO `collection_pet` VALUES (83301, 57040);
INSERT INTO `collection_pet` VALUES (83302, 57041);
INSERT INTO `collection_pet` VALUES (84038, 46458);


SET FOREIGN_KEY_CHECKS = 1;
