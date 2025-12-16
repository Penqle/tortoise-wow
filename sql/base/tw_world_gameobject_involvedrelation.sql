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
-- Table structure for gameobject_involvedrelation
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_involvedrelation`;
CREATE TABLE `gameobject_involvedrelation`  (
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `quest` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`, `quest`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of gameobject_involvedrelation
-- ----------------------------
INSERT INTO `gameobject_involvedrelation` VALUES (31, 94);
INSERT INTO `gameobject_involvedrelation` VALUES (33, 140);
INSERT INTO `gameobject_involvedrelation` VALUES (34, 139);
INSERT INTO `gameobject_involvedrelation` VALUES (35, 136);
INSERT INTO `gameobject_involvedrelation` VALUES (36, 138);
INSERT INTO `gameobject_involvedrelation` VALUES (55, 37);
INSERT INTO `gameobject_involvedrelation` VALUES (56, 45);
INSERT INTO `gameobject_involvedrelation` VALUES (59, 95);
INSERT INTO `gameobject_involvedrelation` VALUES (61, 231);
INSERT INTO `gameobject_involvedrelation` VALUES (76, 248);
INSERT INTO `gameobject_involvedrelation` VALUES (257, 250);
INSERT INTO `gameobject_involvedrelation` VALUES (259, 285);
INSERT INTO `gameobject_involvedrelation` VALUES (261, 281);
INSERT INTO `gameobject_involvedrelation` VALUES (269, 403);
INSERT INTO `gameobject_involvedrelation` VALUES (270, 310);
INSERT INTO `gameobject_involvedrelation` VALUES (287, 200);
INSERT INTO `gameobject_involvedrelation` VALUES (288, 328);
INSERT INTO `gameobject_involvedrelation` VALUES (1557, 410);
INSERT INTO `gameobject_involvedrelation` VALUES (1561, 72);
INSERT INTO `gameobject_involvedrelation` VALUES (1585, 280);
INSERT INTO `gameobject_involvedrelation` VALUES (1586, 431);
INSERT INTO `gameobject_involvedrelation` VALUES (1593, 438);
INSERT INTO `gameobject_involvedrelation` VALUES (1599, 460);
INSERT INTO `gameobject_involvedrelation` VALUES (1609, 465);
INSERT INTO `gameobject_involvedrelation` VALUES (1627, 477);
INSERT INTO `gameobject_involvedrelation` VALUES (1728, 524);
INSERT INTO `gameobject_involvedrelation` VALUES (1767, 553);
INSERT INTO `gameobject_involvedrelation` VALUES (2059, 419);
INSERT INTO `gameobject_involvedrelation` VALUES (2076, 584);
INSERT INTO `gameobject_involvedrelation` VALUES (2076, 585);
INSERT INTO `gameobject_involvedrelation` VALUES (2076, 586);
INSERT INTO `gameobject_involvedrelation` VALUES (2083, 595);
INSERT INTO `gameobject_involvedrelation` VALUES (2289, 619);
INSERT INTO `gameobject_involvedrelation` VALUES (2553, 624);
INSERT INTO `gameobject_involvedrelation` VALUES (2555, 625);
INSERT INTO `gameobject_involvedrelation` VALUES (2556, 626);
INSERT INTO `gameobject_involvedrelation` VALUES (2652, 631);
INSERT INTO `gameobject_involvedrelation` VALUES (2688, 652);
INSERT INTO `gameobject_involvedrelation` VALUES (2701, 642);
INSERT INTO `gameobject_involvedrelation` VALUES (2702, 651);
INSERT INTO `gameobject_involvedrelation` VALUES (2703, 645);
INSERT INTO `gameobject_involvedrelation` VALUES (2734, 321);
INSERT INTO `gameobject_involvedrelation` VALUES (2875, 738);
INSERT INTO `gameobject_involvedrelation` VALUES (2908, 749);
INSERT INTO `gameobject_involvedrelation` VALUES (2933, 779);
INSERT INTO `gameobject_involvedrelation` VALUES (2933, 795);
INSERT INTO `gameobject_involvedrelation` VALUES (3643, 67);
INSERT INTO `gameobject_involvedrelation` VALUES (4141, 894);
INSERT INTO `gameobject_involvedrelation` VALUES (4141, 900);
INSERT INTO `gameobject_involvedrelation` VALUES (4141, 901);
INSERT INTO `gameobject_involvedrelation` VALUES (5619, 926);
INSERT INTO `gameobject_involvedrelation` VALUES (5620, 926);
INSERT INTO `gameobject_involvedrelation` VALUES (5621, 926);
INSERT INTO `gameobject_involvedrelation` VALUES (7510, 2399);
INSERT INTO `gameobject_involvedrelation` VALUES (7923, 941);
INSERT INTO `gameobject_involvedrelation` VALUES (10076, 944);
INSERT INTO `gameobject_involvedrelation` VALUES (12666, 949);
INSERT INTO `gameobject_involvedrelation` VALUES (17182, 983);
INSERT INTO `gameobject_involvedrelation` VALUES (17183, 1001);
INSERT INTO `gameobject_involvedrelation` VALUES (17184, 1002);
INSERT INTO `gameobject_involvedrelation` VALUES (17185, 1003);
INSERT INTO `gameobject_involvedrelation` VALUES (19024, 1028);
INSERT INTO `gameobject_involvedrelation` VALUES (19599, 1089);
INSERT INTO `gameobject_involvedrelation` VALUES (20805, 1190);
INSERT INTO `gameobject_involvedrelation` VALUES (24776, 264);
INSERT INTO `gameobject_involvedrelation` VALUES (32569, 1393);
INSERT INTO `gameobject_involvedrelation` VALUES (35251, 1454);
INSERT INTO `gameobject_involvedrelation` VALUES (50961, 1437);
INSERT INTO `gameobject_involvedrelation` VALUES (51708, 254);
INSERT INTO `gameobject_involvedrelation` VALUES (61934, 1526);
INSERT INTO `gameobject_involvedrelation` VALUES (89931, 1714);
INSERT INTO `gameobject_involvedrelation` VALUES (112877, 2201);
INSERT INTO `gameobject_involvedrelation` VALUES (112888, 461);
INSERT INTO `gameobject_involvedrelation` VALUES (112948, 290);
INSERT INTO `gameobject_involvedrelation` VALUES (113791, 63);
INSERT INTO `gameobject_involvedrelation` VALUES (131474, 2278);
INSERT INTO `gameobject_involvedrelation` VALUES (138492, 635);
INSERT INTO `gameobject_involvedrelation` VALUES (138492, 656);
INSERT INTO `gameobject_involvedrelation` VALUES (141980, 2701);
INSERT INTO `gameobject_involvedrelation` VALUES (142071, 2741);
INSERT INTO `gameobject_involvedrelation` VALUES (142071, 8893);
INSERT INTO `gameobject_involvedrelation` VALUES (142127, 2742);
INSERT INTO `gameobject_involvedrelation` VALUES (142151, 284);
INSERT INTO `gameobject_involvedrelation` VALUES (142179, 2866);
INSERT INTO `gameobject_involvedrelation` VALUES (142194, 2882);
INSERT INTO `gameobject_involvedrelation` VALUES (142195, 2902);
INSERT INTO `gameobject_involvedrelation` VALUES (142343, 2946);
INSERT INTO `gameobject_involvedrelation` VALUES (142343, 2954);
INSERT INTO `gameobject_involvedrelation` VALUES (142343, 2966);
INSERT INTO `gameobject_involvedrelation` VALUES (142343, 40106);
INSERT INTO `gameobject_involvedrelation` VALUES (142343, 40114);
INSERT INTO `gameobject_involvedrelation` VALUES (142487, 2945);
INSERT INTO `gameobject_involvedrelation` VALUES (142487, 2951);
INSERT INTO `gameobject_involvedrelation` VALUES (142487, 2952);
INSERT INTO `gameobject_involvedrelation` VALUES (142487, 2953);
INSERT INTO `gameobject_involvedrelation` VALUES (142715, 2936);
INSERT INTO `gameobject_involvedrelation` VALUES (144063, 2879);
INSERT INTO `gameobject_involvedrelation` VALUES (148498, 3372);
INSERT INTO `gameobject_involvedrelation` VALUES (148504, 3913);
INSERT INTO `gameobject_involvedrelation` VALUES (148512, 3373);
INSERT INTO `gameobject_involvedrelation` VALUES (148836, 3446);
INSERT INTO `gameobject_involvedrelation` VALUES (148838, 3447);
INSERT INTO `gameobject_involvedrelation` VALUES (149047, 3454);
INSERT INTO `gameobject_involvedrelation` VALUES (149502, 3481);
INSERT INTO `gameobject_involvedrelation` VALUES (151286, 3505);
INSERT INTO `gameobject_involvedrelation` VALUES (152097, 3525);
INSERT INTO `gameobject_involvedrelation` VALUES (161504, 3844);
INSERT INTO `gameobject_involvedrelation` VALUES (164689, 3802);
INSERT INTO `gameobject_involvedrelation` VALUES (164869, 4083);
INSERT INTO `gameobject_involvedrelation` VALUES (164885, 4119);
INSERT INTO `gameobject_involvedrelation` VALUES (164886, 2523);
INSERT INTO `gameobject_involvedrelation` VALUES (164887, 996);
INSERT INTO `gameobject_involvedrelation` VALUES (164888, 4117);
INSERT INTO `gameobject_involvedrelation` VALUES (164909, 4125);
INSERT INTO `gameobject_involvedrelation` VALUES (164953, 4131);
INSERT INTO `gameobject_involvedrelation` VALUES (164954, 4135);
INSERT INTO `gameobject_involvedrelation` VALUES (164955, 4381);
INSERT INTO `gameobject_involvedrelation` VALUES (164955, 4385);
INSERT INTO `gameobject_involvedrelation` VALUES (164956, 4383);
INSERT INTO `gameobject_involvedrelation` VALUES (164956, 4384);
INSERT INTO `gameobject_involvedrelation` VALUES (164957, 4382);
INSERT INTO `gameobject_involvedrelation` VALUES (164957, 4386);
INSERT INTO `gameobject_involvedrelation` VALUES (171939, 2878);
INSERT INTO `gameobject_involvedrelation` VALUES (171942, 3363);
INSERT INTO `gameobject_involvedrelation` VALUES (173265, 4449);
INSERT INTO `gameobject_involvedrelation` VALUES (173265, 4451);
INSERT INTO `gameobject_involvedrelation` VALUES (173284, 4443);
INSERT INTO `gameobject_involvedrelation` VALUES (173324, 4448);
INSERT INTO `gameobject_involvedrelation` VALUES (173327, 998);
INSERT INTO `gameobject_involvedrelation` VALUES (174594, 4113);
INSERT INTO `gameobject_involvedrelation` VALUES (174595, 4114);
INSERT INTO `gameobject_involvedrelation` VALUES (174596, 4116);
INSERT INTO `gameobject_involvedrelation` VALUES (174598, 4401);
INSERT INTO `gameobject_involvedrelation` VALUES (174599, 1514);
INSERT INTO `gameobject_involvedrelation` VALUES (174600, 4115);
INSERT INTO `gameobject_involvedrelation` VALUES (174601, 4221);
INSERT INTO `gameobject_involvedrelation` VALUES (174602, 4222);
INSERT INTO `gameobject_involvedrelation` VALUES (174603, 4343);
INSERT INTO `gameobject_involvedrelation` VALUES (174604, 4403);
INSERT INTO `gameobject_involvedrelation` VALUES (174605, 4444);
INSERT INTO `gameobject_involvedrelation` VALUES (174606, 4445);
INSERT INTO `gameobject_involvedrelation` VALUES (174607, 4446);
INSERT INTO `gameobject_involvedrelation` VALUES (174608, 4462);
INSERT INTO `gameobject_involvedrelation` VALUES (174684, 4447);
INSERT INTO `gameobject_involvedrelation` VALUES (174686, 4461);
INSERT INTO `gameobject_involvedrelation` VALUES (174708, 4466);
INSERT INTO `gameobject_involvedrelation` VALUES (174709, 4467);
INSERT INTO `gameobject_involvedrelation` VALUES (174712, 4464);
INSERT INTO `gameobject_involvedrelation` VALUES (174713, 4465);
INSERT INTO `gameobject_involvedrelation` VALUES (174848, 4661);
INSERT INTO `gameobject_involvedrelation` VALUES (175084, 4601);
INSERT INTO `gameobject_involvedrelation` VALUES (175084, 4603);
INSERT INTO `gameobject_involvedrelation` VALUES (175084, 4605);
INSERT INTO `gameobject_involvedrelation` VALUES (175085, 4602);
INSERT INTO `gameobject_involvedrelation` VALUES (175085, 4604);
INSERT INTO `gameobject_involvedrelation` VALUES (175085, 4606);
INSERT INTO `gameobject_involvedrelation` VALUES (175265, 4561);
INSERT INTO `gameobject_involvedrelation` VALUES (175524, 4812);
INSERT INTO `gameobject_involvedrelation` VALUES (175586, 4863);
INSERT INTO `gameobject_involvedrelation` VALUES (175587, 4861);
INSERT INTO `gameobject_involvedrelation` VALUES (175704, 3367);
INSERT INTO `gameobject_involvedrelation` VALUES (175894, 5021);
INSERT INTO `gameobject_involvedrelation` VALUES (175924, 5060);
INSERT INTO `gameobject_involvedrelation` VALUES (175925, 5059);
INSERT INTO `gameobject_involvedrelation` VALUES (175926, 5058);
INSERT INTO `gameobject_involvedrelation` VALUES (176091, 5084);
INSERT INTO `gameobject_involvedrelation` VALUES (176192, 5164);
INSERT INTO `gameobject_involvedrelation` VALUES (176317, 5265);
INSERT INTO `gameobject_involvedrelation` VALUES (176361, 5216);
INSERT INTO `gameobject_involvedrelation` VALUES (176361, 5218);
INSERT INTO `gameobject_involvedrelation` VALUES (176361, 5229);
INSERT INTO `gameobject_involvedrelation` VALUES (176392, 5225);
INSERT INTO `gameobject_involvedrelation` VALUES (176392, 5227);
INSERT INTO `gameobject_involvedrelation` VALUES (176392, 5235);
INSERT INTO `gameobject_involvedrelation` VALUES (176393, 5222);
INSERT INTO `gameobject_involvedrelation` VALUES (176393, 5224);
INSERT INTO `gameobject_involvedrelation` VALUES (176393, 5233);
INSERT INTO `gameobject_involvedrelation` VALUES (176631, 5463);
INSERT INTO `gameobject_involvedrelation` VALUES (177289, 5219);
INSERT INTO `gameobject_involvedrelation` VALUES (177289, 5221);
INSERT INTO `gameobject_involvedrelation` VALUES (177289, 5231);
INSERT INTO `gameobject_involvedrelation` VALUES (177491, 5902);
INSERT INTO `gameobject_involvedrelation` VALUES (177491, 5904);
INSERT INTO `gameobject_involvedrelation` VALUES (177544, 5942);
INSERT INTO `gameobject_involvedrelation` VALUES (177675, 6024);
INSERT INTO `gameobject_involvedrelation` VALUES (177786, 6161);
INSERT INTO `gameobject_involvedrelation` VALUES (179485, 1193);
INSERT INTO `gameobject_involvedrelation` VALUES (179517, 7462);
INSERT INTO `gameobject_involvedrelation` VALUES (179517, 7877);
INSERT INTO `gameobject_involvedrelation` VALUES (179551, 7486);
INSERT INTO `gameobject_involvedrelation` VALUES (179880, 7761);
INSERT INTO `gameobject_involvedrelation` VALUES (180024, 7938);
INSERT INTO `gameobject_involvedrelation` VALUES (180025, 7937);
INSERT INTO `gameobject_involvedrelation` VALUES (180055, 7944);
INSERT INTO `gameobject_involvedrelation` VALUES (180056, 7945);
INSERT INTO `gameobject_involvedrelation` VALUES (180503, 8307);
INSERT INTO `gameobject_involvedrelation` VALUES (180570, 8322);
INSERT INTO `gameobject_involvedrelation` VALUES (180633, 8305);
INSERT INTO `gameobject_involvedrelation` VALUES (180642, 8577);
INSERT INTO `gameobject_involvedrelation` VALUES (180652, 8597);
INSERT INTO `gameobject_involvedrelation` VALUES (180715, 8763);
INSERT INTO `gameobject_involvedrelation` VALUES (180715, 8799);
INSERT INTO `gameobject_involvedrelation` VALUES (180717, 8743);
INSERT INTO `gameobject_involvedrelation` VALUES (180743, 8744);
INSERT INTO `gameobject_involvedrelation` VALUES (180746, 8767);
INSERT INTO `gameobject_involvedrelation` VALUES (180746, 8788);
INSERT INTO `gameobject_involvedrelation` VALUES (180747, 8768);
INSERT INTO `gameobject_involvedrelation` VALUES (180748, 8769);
INSERT INTO `gameobject_involvedrelation` VALUES (180793, 8803);
INSERT INTO `gameobject_involvedrelation` VALUES (181073, 9029);
INSERT INTO `gameobject_involvedrelation` VALUES (1000171, 80704);
INSERT INTO `gameobject_involvedrelation` VALUES (1000171, 80705);
INSERT INTO `gameobject_involvedrelation` VALUES (1000171, 80706);
INSERT INTO `gameobject_involvedrelation` VALUES (1000500, 55035);
INSERT INTO `gameobject_involvedrelation` VALUES (2010810, 40051);
INSERT INTO `gameobject_involvedrelation` VALUES (2010811, 40052);
INSERT INTO `gameobject_involvedrelation` VALUES (2010812, 40053);
INSERT INTO `gameobject_involvedrelation` VALUES (2010813, 40054);
INSERT INTO `gameobject_involvedrelation` VALUES (2010814, 40055);
INSERT INTO `gameobject_involvedrelation` VALUES (2010870, 40356);
INSERT INTO `gameobject_involvedrelation` VALUES (2010871, 40358);
INSERT INTO `gameobject_involvedrelation` VALUES (2010871, 40360);
INSERT INTO `gameobject_involvedrelation` VALUES (2010877, 40259);
INSERT INTO `gameobject_involvedrelation` VALUES (2010920, 40555);
INSERT INTO `gameobject_involvedrelation` VALUES (2010923, 40580);
INSERT INTO `gameobject_involvedrelation` VALUES (2010969, 40750);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40914);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40916);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40917);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40918);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40919);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40920);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40921);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40922);
INSERT INTO `gameobject_involvedrelation` VALUES (2020028, 40923);
INSERT INTO `gameobject_involvedrelation` VALUES (2020062, 41148);
INSERT INTO `gameobject_involvedrelation` VALUES (7000030, 50227);


SET FOREIGN_KEY_CHECKS = 1;
