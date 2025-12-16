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
-- Table structure for collection_mount
-- ----------------------------
DROP TABLE IF EXISTS `collection_mount`;
CREATE TABLE `collection_mount`  (
  `itemId` int(10) UNSIGNED NOT NULL,
  `spellId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`itemId`, `spellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection_mount
-- ----------------------------
INSERT INTO `collection_mount` VALUES (1041, 578);
INSERT INTO `collection_mount` VALUES (1132, 580);
INSERT INTO `collection_mount` VALUES (1134, 459);
INSERT INTO `collection_mount` VALUES (2411, 470);
INSERT INTO `collection_mount` VALUES (2413, 471);
INSERT INTO `collection_mount` VALUES (2414, 472);
INSERT INTO `collection_mount` VALUES (5655, 6648);
INSERT INTO `collection_mount` VALUES (5656, 458);
INSERT INTO `collection_mount` VALUES (5663, 579);
INSERT INTO `collection_mount` VALUES (5665, 6653);
INSERT INTO `collection_mount` VALUES (5668, 6654);
INSERT INTO `collection_mount` VALUES (5864, 6777);
INSERT INTO `collection_mount` VALUES (5872, 6899);
INSERT INTO `collection_mount` VALUES (5873, 6898);
INSERT INTO `collection_mount` VALUES (8563, 10873);
INSERT INTO `collection_mount` VALUES (8588, 8395);
INSERT INTO `collection_mount` VALUES (8589, 10795);
INSERT INTO `collection_mount` VALUES (8591, 10796);
INSERT INTO `collection_mount` VALUES (8592, 10799);
INSERT INTO `collection_mount` VALUES (8595, 10969);
INSERT INTO `collection_mount` VALUES (8629, 10793);
INSERT INTO `collection_mount` VALUES (8630, 10790);
INSERT INTO `collection_mount` VALUES (8631, 8394);
INSERT INTO `collection_mount` VALUES (8632, 10789);
INSERT INTO `collection_mount` VALUES (8635, 16055);
INSERT INTO `collection_mount` VALUES (12302, 16056);
INSERT INTO `collection_mount` VALUES (12303, 10787);
INSERT INTO `collection_mount` VALUES (12325, 16058);
INSERT INTO `collection_mount` VALUES (12326, 16059);
INSERT INTO `collection_mount` VALUES (12327, 16060);
INSERT INTO `collection_mount` VALUES (12351, 16081);
INSERT INTO `collection_mount` VALUES (12353, 16083);
INSERT INTO `collection_mount` VALUES (12354, 16082);
INSERT INTO `collection_mount` VALUES (13086, 17229);
INSERT INTO `collection_mount` VALUES (13321, 17453);
INSERT INTO `collection_mount` VALUES (13322, 17454);
INSERT INTO `collection_mount` VALUES (13323, 17455);
INSERT INTO `collection_mount` VALUES (13324, 17456);
INSERT INTO `collection_mount` VALUES (13325, 17458);
INSERT INTO `collection_mount` VALUES (13326, 15779);
INSERT INTO `collection_mount` VALUES (13327, 17459);
INSERT INTO `collection_mount` VALUES (13328, 17461);
INSERT INTO `collection_mount` VALUES (13329, 17460);
INSERT INTO `collection_mount` VALUES (13331, 17462);
INSERT INTO `collection_mount` VALUES (13332, 17463);
INSERT INTO `collection_mount` VALUES (13333, 17464);
INSERT INTO `collection_mount` VALUES (13334, 17465);
INSERT INTO `collection_mount` VALUES (13335, 17481);
INSERT INTO `collection_mount` VALUES (15277, 18989);
INSERT INTO `collection_mount` VALUES (15290, 18990);
INSERT INTO `collection_mount` VALUES (15292, 18991);
INSERT INTO `collection_mount` VALUES (15293, 18992);
INSERT INTO `collection_mount` VALUES (16339, 16082);
INSERT INTO `collection_mount` VALUES (18241, 22717);
INSERT INTO `collection_mount` VALUES (18242, 22723);
INSERT INTO `collection_mount` VALUES (18243, 22719);
INSERT INTO `collection_mount` VALUES (18244, 22720);
INSERT INTO `collection_mount` VALUES (18245, 22724);
INSERT INTO `collection_mount` VALUES (18246, 22721);
INSERT INTO `collection_mount` VALUES (18247, 22718);
INSERT INTO `collection_mount` VALUES (18248, 22722);
INSERT INTO `collection_mount` VALUES (18766, 23221);
INSERT INTO `collection_mount` VALUES (18767, 23219);
INSERT INTO `collection_mount` VALUES (18768, 23220);
INSERT INTO `collection_mount` VALUES (18772, 23225);
INSERT INTO `collection_mount` VALUES (18773, 23223);
INSERT INTO `collection_mount` VALUES (18774, 23222);
INSERT INTO `collection_mount` VALUES (18776, 23227);
INSERT INTO `collection_mount` VALUES (18777, 23229);
INSERT INTO `collection_mount` VALUES (18778, 23228);
INSERT INTO `collection_mount` VALUES (18785, 23240);
INSERT INTO `collection_mount` VALUES (18786, 23238);
INSERT INTO `collection_mount` VALUES (18787, 23239);
INSERT INTO `collection_mount` VALUES (18788, 23241);
INSERT INTO `collection_mount` VALUES (18789, 23242);
INSERT INTO `collection_mount` VALUES (18790, 23243);
INSERT INTO `collection_mount` VALUES (18791, 23246);
INSERT INTO `collection_mount` VALUES (18793, 23247);
INSERT INTO `collection_mount` VALUES (18794, 23249);
INSERT INTO `collection_mount` VALUES (18795, 23248);
INSERT INTO `collection_mount` VALUES (18796, 23250);
INSERT INTO `collection_mount` VALUES (18797, 23251);
INSERT INTO `collection_mount` VALUES (18798, 23252);
INSERT INTO `collection_mount` VALUES (18902, 23338);
INSERT INTO `collection_mount` VALUES (19029, 23509);
INSERT INTO `collection_mount` VALUES (19030, 23510);
INSERT INTO `collection_mount` VALUES (19872, 24242);
INSERT INTO `collection_mount` VALUES (19902, 24252);
INSERT INTO `collection_mount` VALUES (21044, 25675);
INSERT INTO `collection_mount` VALUES (21176, 26656);
INSERT INTO `collection_mount` VALUES (21218, 25953);
INSERT INTO `collection_mount` VALUES (21321, 26054);
INSERT INTO `collection_mount` VALUES (21323, 26056);
INSERT INTO `collection_mount` VALUES (21324, 26055);
INSERT INTO `collection_mount` VALUES (23193, 29059);
INSERT INTO `collection_mount` VALUES (23720, 30174);
INSERT INTO `collection_mount` VALUES (50066, 15781);
INSERT INTO `collection_mount` VALUES (50071, 8396);
INSERT INTO `collection_mount` VALUES (50072, 10800);
INSERT INTO `collection_mount` VALUES (50073, 10801);
INSERT INTO `collection_mount` VALUES (50074, 10802);
INSERT INTO `collection_mount` VALUES (50075, 10803);
INSERT INTO `collection_mount` VALUES (50076, 10804);
INSERT INTO `collection_mount` VALUES (50399, 46445);
INSERT INTO `collection_mount` VALUES (50400, 46453);
INSERT INTO `collection_mount` VALUES (50401, 46447);
INSERT INTO `collection_mount` VALUES (50402, 10799);
INSERT INTO `collection_mount` VALUES (50402, 46501);
INSERT INTO `collection_mount` VALUES (50403, 46502);
INSERT INTO `collection_mount` VALUES (50404, 10798);
INSERT INTO `collection_mount` VALUES (50404, 46503);
INSERT INTO `collection_mount` VALUES (50405, 10801);
INSERT INTO `collection_mount` VALUES (50406, 46449);
INSERT INTO `collection_mount` VALUES (50407, 46450);
INSERT INTO `collection_mount` VALUES (50426, 46446);
INSERT INTO `collection_mount` VALUES (50535, 33395);
INSERT INTO `collection_mount` VALUES (50536, 33396);
INSERT INTO `collection_mount` VALUES (51249, 46452);
INSERT INTO `collection_mount` VALUES (51252, 46212);
INSERT INTO `collection_mount` VALUES (80425, 45053);
INSERT INTO `collection_mount` VALUES (80430, 45001);
INSERT INTO `collection_mount` VALUES (80431, 45007);
INSERT INTO `collection_mount` VALUES (80433, 45009);
INSERT INTO `collection_mount` VALUES (80438, 45013);
INSERT INTO `collection_mount` VALUES (80443, 45033);
INSERT INTO `collection_mount` VALUES (80446, 45036);
INSERT INTO `collection_mount` VALUES (80447, 45037);
INSERT INTO `collection_mount` VALUES (80449, 45039);
INSERT INTO `collection_mount` VALUES (80455, 45045);
INSERT INTO `collection_mount` VALUES (80457, 45047);
INSERT INTO `collection_mount` VALUES (80458, 45048);
INSERT INTO `collection_mount` VALUES (80459, 45049);
INSERT INTO `collection_mount` VALUES (80460, 45050);
INSERT INTO `collection_mount` VALUES (80461, 45052);
INSERT INTO `collection_mount` VALUES (80462, 45051);
INSERT INTO `collection_mount` VALUES (80692, 46216);
INSERT INTO `collection_mount` VALUES (81091, 46203);
INSERT INTO `collection_mount` VALUES (81100, 46443);
INSERT INTO `collection_mount` VALUES (81102, 46444);
INSERT INTO `collection_mount` VALUES (81120, 46451);
INSERT INTO `collection_mount` VALUES (81121, 46221);
INSERT INTO `collection_mount` VALUES (81153, 46525);
INSERT INTO `collection_mount` VALUES (81154, 46524);
INSERT INTO `collection_mount` VALUES (81155, 46526);
INSERT INTO `collection_mount` VALUES (81156, 46206);
INSERT INTO `collection_mount` VALUES (81158, 46202);
INSERT INTO `collection_mount` VALUES (81182, 45041);
INSERT INTO `collection_mount` VALUES (81185, 46219);
INSERT INTO `collection_mount` VALUES (81186, 46220);
INSERT INTO `collection_mount` VALUES (81190, 46504);
INSERT INTO `collection_mount` VALUES (81191, 46505);
INSERT INTO `collection_mount` VALUES (81192, 46507);
INSERT INTO `collection_mount` VALUES (81193, 46508);
INSERT INTO `collection_mount` VALUES (81194, 46509);
INSERT INTO `collection_mount` VALUES (81195, 46506);
INSERT INTO `collection_mount` VALUES (81198, 45044);
INSERT INTO `collection_mount` VALUES (81224, 46441);
INSERT INTO `collection_mount` VALUES (81225, 46442);
INSERT INTO `collection_mount` VALUES (81226, 46204);
INSERT INTO `collection_mount` VALUES (81227, 45035);
INSERT INTO `collection_mount` VALUES (81231, 46208);
INSERT INTO `collection_mount` VALUES (81232, 46207);
INSERT INTO `collection_mount` VALUES (81233, 45032);
INSERT INTO `collection_mount` VALUES (81234, 45034);
INSERT INTO `collection_mount` VALUES (81235, 45042);
INSERT INTO `collection_mount` VALUES (81236, 45040);
INSERT INTO `collection_mount` VALUES (81237, 18363);
INSERT INTO `collection_mount` VALUES (81238, 46225);
INSERT INTO `collection_mount` VALUES (81239, 46519);
INSERT INTO `collection_mount` VALUES (81240, 46520);
INSERT INTO `collection_mount` VALUES (81241, 45038);
INSERT INTO `collection_mount` VALUES (81242, 46451);
INSERT INTO `collection_mount` VALUES (81242, 46523);
INSERT INTO `collection_mount` VALUES (81244, 46514);
INSERT INTO `collection_mount` VALUES (81245, 46515);
INSERT INTO `collection_mount` VALUES (81246, 46516);
INSERT INTO `collection_mount` VALUES (81247, 46517);
INSERT INTO `collection_mount` VALUES (81250, 46510);
INSERT INTO `collection_mount` VALUES (81251, 46511);
INSERT INTO `collection_mount` VALUES (81252, 46512);
INSERT INTO `collection_mount` VALUES (81253, 46513);
INSERT INTO `collection_mount` VALUES (83150, 50050);
INSERT INTO `collection_mount` VALUES (83151, 50051);
INSERT INTO `collection_mount` VALUES (83152, 50052);
INSERT INTO `collection_mount` VALUES (83153, 50053);
INSERT INTO `collection_mount` VALUES (83154, 50054);
INSERT INTO `collection_mount` VALUES (83155, 50055);
INSERT INTO `collection_mount` VALUES (83156, 50056);
INSERT INTO `collection_mount` VALUES (83157, 50057);
INSERT INTO `collection_mount` VALUES (83158, 50058);
INSERT INTO `collection_mount` VALUES (83159, 50059);
INSERT INTO `collection_mount` VALUES (83475, 46521);
INSERT INTO `collection_mount` VALUES (83476, 46522);
INSERT INTO `collection_mount` VALUES (83520, 16083);


SET FOREIGN_KEY_CHECKS = 1;
