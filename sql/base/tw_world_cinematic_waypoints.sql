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
-- Table structure for cinematic_waypoints
-- ----------------------------
DROP TABLE IF EXISTS `cinematic_waypoints`;
CREATE TABLE `cinematic_waypoints`  (
  `cinematic` int(11) NULL DEFAULT 0,
  `timer` int(11) NULL DEFAULT 0,
  `position_x` float NULL DEFAULT NULL,
  `position_y` float NULL DEFAULT NULL,
  `position_z` float NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 129 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinematic_waypoints
-- ----------------------------
INSERT INTO `cinematic_waypoints` VALUES (81, 0, -8960, 517, 86, 'Humains start', 1);
INSERT INTO `cinematic_waypoints` VALUES (81, 30000, -9038, 458, 83, 'Humains 2', 2);
INSERT INTO `cinematic_waypoints` VALUES (81, 1000, -8960, 517, 86, 'Humains 1', 3);
INSERT INTO `cinematic_waypoints` VALUES (81, 35000, -9130, 386, 80, 'Humains 3', 4);
INSERT INTO `cinematic_waypoints` VALUES (81, 42000, -9184, 256, 63, 'Humains 4', 5);
INSERT INTO `cinematic_waypoints` VALUES (81, 55000, -9102, 13, 89, 'Humains 5', 6);
INSERT INTO `cinematic_waypoints` VALUES (81, 70000, -8995, -85, 85, 'Humains 6', 7);
INSERT INTO `cinematic_waypoints` VALUES (101, 40000, -5461, 433, 387, 'Cinematic ajoutee automatiquement', 8);
INSERT INTO `cinematic_waypoints` VALUES (101, 1000, -5103, 460, 404, 'Ok', 9);
INSERT INTO `cinematic_waypoints` VALUES (41, 1000, -5050, -789, 496, 'Ok', 10);
INSERT INTO `cinematic_waypoints` VALUES (101, 35000, -5393, 521, 387, 'Cinematic ajoutee automatiquement', 11);
INSERT INTO `cinematic_waypoints` VALUES (41, 20000, -5221, -616, 420, 'Cinematic ajoutee automatiquement', 12);
INSERT INTO `cinematic_waypoints` VALUES (41, 25000, -5312, -512, 393, 'Cinematic ajoutee automatiquement', 13);
INSERT INTO `cinematic_waypoints` VALUES (41, 30000, -5575, -480, 398, 'Cinematic ajoutee automatiquement', 14);
INSERT INTO `cinematic_waypoints` VALUES (41, 45000, -6240, 332, 383, 'Arrivee a la zone de depart', 15);
INSERT INTO `cinematic_waypoints` VALUES (41, 40000, -6238, 138, 431, 'Devans la grotte', 16);
INSERT INTO `cinematic_waypoints` VALUES (101, 14000, -5196, 520, 388, 'Ok', 17);
INSERT INTO `cinematic_waypoints` VALUES (101, 26000, -5343, 542, 386, 'Ok', 18);
INSERT INTO `cinematic_waypoints` VALUES (101, 65000, -6176, 394, 398, 'Cinematic ajoutee automatiquement', 19);
INSERT INTO `cinematic_waypoints` VALUES (101, 70000, -6251, 351, 384, 'Cinematic ajoutee automatiquement', 20);
INSERT INTO `cinematic_waypoints` VALUES (61, 1000, 9846, 963, 1307, 'Cinematic ajoutee automatiquement', 21);
INSERT INTO `cinematic_waypoints` VALUES (61, 30000, 9879, 817, 1309, 'Cinematic ajoutee automatiquement', 22);
INSERT INTO `cinematic_waypoints` VALUES (61, 50000, 10312, 833, 1327, 'Cinematic ajoutee automatiquement', 23);
INSERT INTO `cinematic_waypoints` VALUES (61, 40000, 10064, 694, 1351, 'Cinematic ajoutee automatiquement', 24);
INSERT INTO `cinematic_waypoints` VALUES (21, 1000, 264, -4752, 10, 'Cinematic ajoutee automatiquement', 25);
INSERT INTO `cinematic_waypoints` VALUES (21, 25000, 104, -4783, 18, 'Cinematic ajoutee automatiquement', 26);
INSERT INTO `cinematic_waypoints` VALUES (21, 30000, -295, -4716, 36, 'Cinematic ajoutee automatiquement', 27);
INSERT INTO `cinematic_waypoints` VALUES (21, 35000, -484, -4691, 37, 'Cinematic ajoutee automatiquement', 28);
INSERT INTO `cinematic_waypoints` VALUES (21, 42000, -595, -4616, 42, 'Cinematic ajoutee automatiquement', 29);
INSERT INTO `cinematic_waypoints` VALUES (21, 60000, -618, -4251, 39, 'Cinematic ajoutee automatiquement', 30);
INSERT INTO `cinematic_waypoints` VALUES (2, 60000, 1677, 1679, 122, 'Cinematic ajoutee automatiquement', 31);
INSERT INTO `cinematic_waypoints` VALUES (2, 50000, 1898, 1568, 90, 'Cinematic ajoutee automatiquement', 32);
INSERT INTO `cinematic_waypoints` VALUES (2, 35000, 1973, 1546, 88, 'Cinematic ajoutee automatiquement', 33);
INSERT INTO `cinematic_waypoints` VALUES (2, 18000, 2053, 1511, 74, 'Cinematic ajoutee automatiquement', 34);
INSERT INTO `cinematic_waypoints` VALUES (2, 1000, 2117, 1488, 69, 'Cinematic ajoutee automatiquement', 35);
INSERT INTO `cinematic_waypoints` VALUES (141, 45000, -2917, -257, 53, 'Fin', 36);
INSERT INTO `cinematic_waypoints` VALUES (141, 1000, -1250, 92, 125, 'Dans ThunderBluff', 37);
INSERT INTO `cinematic_waypoints` VALUES (141, 21000, -1809, -216, -9, 'Devans un puit', 38);
INSERT INTO `cinematic_waypoints` VALUES (141, 18000, -1735, -61, -4, 'On est descendu', 39);
INSERT INTO `cinematic_waypoints` VALUES (141, 26000, -1899, -420, -4, 'Devans 2 arbres', 40);
INSERT INTO `cinematic_waypoints` VALUES (141, 27000, -1995, -309, -7, 'Pret du pont - avant la riviere', 41);
INSERT INTO `cinematic_waypoints` VALUES (141, 30000, -2121, -360, -10, 'Apres traversee de la riviere', 42);
INSERT INTO `cinematic_waypoints` VALUES (141, 32000, -2322, -373, -8, 'Cinematic ajoutee automatiquement', 43);
INSERT INTO `cinematic_waypoints` VALUES (121, 34000, -618, -4251, 39, 'Arrivee', 44);
INSERT INTO `cinematic_waypoints` VALUES (121, 26000, -622, -4657, 40, 'Devans les portes', 45);
INSERT INTO `cinematic_waypoints` VALUES (121, 22000, -701, -4771, 35, 'Devans un gros rocher', 46);
INSERT INTO `cinematic_waypoints` VALUES (121, 1000, -833, -4920, 21, 'Dans la maison au debut', 47);
INSERT INTO `cinematic_waypoints` VALUES (164, 62000, -236, -7202, 25.9, 'FlyByGoblin.m2_13', 115);
INSERT INTO `cinematic_waypoints` VALUES (164, 59000, -238, -7233, 32, 'FlyByGoblin.m2_12', 114);
INSERT INTO `cinematic_waypoints` VALUES (164, 54000, -244, -7314, 40, 'FlyByGoblin.m2_11', 113);
INSERT INTO `cinematic_waypoints` VALUES (164, 50000, -277, -7361, 58, 'FlyByGoblin.m2_10', 112);
INSERT INTO `cinematic_waypoints` VALUES (164, 49000, -279, -7369, 60, 'FlyByGoblin.m2_9', 111);
INSERT INTO `cinematic_waypoints` VALUES (164, 46000, -314, -7372, 69, 'FlyByGoblin.m2_8', 110);
INSERT INTO `cinematic_waypoints` VALUES (162, 87000, 3231, -2488, 128, 'FlyByElf.m2_12', 128);
INSERT INTO `cinematic_waypoints` VALUES (162, 75000, 3338, -2450, 143, 'FlyByElf.m2_11', 127);
INSERT INTO `cinematic_waypoints` VALUES (162, 71000, 3405, -2457, 112, 'FlyByElf.m2_10', 126);
INSERT INTO `cinematic_waypoints` VALUES (162, 63000, 3619, -2442, 96, 'FlyByElf.m2_9', 125);
INSERT INTO `cinematic_waypoints` VALUES (162, 51500, 3840, -2545, 51, 'FlyByElf.m2_8', 124);
INSERT INTO `cinematic_waypoints` VALUES (164, 45000, -321, -7372, 74, 'FlyByGoblin.m2_7', 109);
INSERT INTO `cinematic_waypoints` VALUES (164, 41000, -309, -7421, 101, 'FlyByGoblin.m2_6', 108);
INSERT INTO `cinematic_waypoints` VALUES (164, 32000, -269, -7605, 116, 'FlyByGoblin.m2_5', 107);
INSERT INTO `cinematic_waypoints` VALUES (164, 23000, -207, -7768, 47, 'FlyByGoblin.m2_4', 106);
INSERT INTO `cinematic_waypoints` VALUES (164, 19000, -168, -7824, 46, 'FlyByGoblin.m2_3', 105);
INSERT INTO `cinematic_waypoints` VALUES (164, 12000, -17, -8007, 69, 'FlyByGoblin.m2_2', 104);
INSERT INTO `cinematic_waypoints` VALUES (164, 6000, 120, -8101, 32, 'FlyByGoblin.m2_1', 103);
INSERT INTO `cinematic_waypoints` VALUES (164, 0, 185, -8336, 32, 'FlyByGoblin.m2_0', 102);
INSERT INTO `cinematic_waypoints` VALUES (162, 49000, 3854, -2588, 52, 'FlyByElf.m2_7', 123);
INSERT INTO `cinematic_waypoints` VALUES (162, 39000, 3962, -2738, 63, 'FlyByElf.m2_6', 122);
INSERT INTO `cinematic_waypoints` VALUES (162, 33000, 4146, -2752, 54, 'FlyByElf.m2_5', 121);
INSERT INTO `cinematic_waypoints` VALUES (162, 25000, 4326, -2847, 15, 'FlyByElf.m2_4', 120);
INSERT INTO `cinematic_waypoints` VALUES (162, 16000, 4511, -2904, 24, 'FlyByElf.m2_3', 119);
INSERT INTO `cinematic_waypoints` VALUES (162, 12500, 4629, -2935, 53, 'FlyByElf.m2_2', 118);
INSERT INTO `cinematic_waypoints` VALUES (162, 4000, 4832, -3021, 53, 'FlyByElf.m2_1', 117);
INSERT INTO `cinematic_waypoints` VALUES (162, 0, 4926, -3056, 54, 'FlyByElf.m2_0', 116);


SET FOREIGN_KEY_CHECKS = 1;
