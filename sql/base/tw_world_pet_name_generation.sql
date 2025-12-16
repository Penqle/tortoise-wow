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
-- Table structure for pet_name_generation
-- ----------------------------
DROP TABLE IF EXISTS `pet_name_generation`;
CREATE TABLE `pet_name_generation`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `word` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `half` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 261 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet_name_generation
-- ----------------------------
INSERT INTO `pet_name_generation` VALUES (1, 'Aba', 416, 0);
INSERT INTO `pet_name_generation` VALUES (2, 'Az', 416, 0);
INSERT INTO `pet_name_generation` VALUES (3, 'Bel', 416, 0);
INSERT INTO `pet_name_generation` VALUES (4, 'Biz', 416, 0);
INSERT INTO `pet_name_generation` VALUES (5, 'Cho', 416, 0);
INSERT INTO `pet_name_generation` VALUES (6, 'Dag', 416, 0);
INSERT INTO `pet_name_generation` VALUES (7, 'Gak', 416, 0);
INSERT INTO `pet_name_generation` VALUES (8, 'Gar', 416, 0);
INSERT INTO `pet_name_generation` VALUES (9, 'Gel', 416, 0);
INSERT INTO `pet_name_generation` VALUES (10, 'Gho', 416, 0);
INSERT INTO `pet_name_generation` VALUES (11, 'Gob', 416, 0);
INSERT INTO `pet_name_generation` VALUES (12, 'Gra', 416, 0);
INSERT INTO `pet_name_generation` VALUES (13, 'Jak', 416, 0);
INSERT INTO `pet_name_generation` VALUES (14, 'Jub', 416, 0);
INSERT INTO `pet_name_generation` VALUES (15, 'Kar', 416, 0);
INSERT INTO `pet_name_generation` VALUES (16, 'Kup', 416, 0);
INSERT INTO `pet_name_generation` VALUES (17, 'Laz', 416, 0);
INSERT INTO `pet_name_generation` VALUES (18, 'Nal', 416, 0);
INSERT INTO `pet_name_generation` VALUES (19, 'Nok', 416, 0);
INSERT INTO `pet_name_generation` VALUES (20, 'Pag', 416, 0);
INSERT INTO `pet_name_generation` VALUES (21, 'Pig', 416, 0);
INSERT INTO `pet_name_generation` VALUES (22, 'Pip', 416, 0);
INSERT INTO `pet_name_generation` VALUES (23, 'Piz', 416, 0);
INSERT INTO `pet_name_generation` VALUES (24, 'Quz', 416, 0);
INSERT INTO `pet_name_generation` VALUES (25, 'Rui', 416, 0);
INSERT INTO `pet_name_generation` VALUES (26, 'Rul', 416, 0);
INSERT INTO `pet_name_generation` VALUES (27, 'Rup', 416, 0);
INSERT INTO `pet_name_generation` VALUES (28, 'Tar', 416, 0);
INSERT INTO `pet_name_generation` VALUES (29, 'Vol', 416, 0);
INSERT INTO `pet_name_generation` VALUES (30, 'Yaz', 416, 0);
INSERT INTO `pet_name_generation` VALUES (31, 'Zep', 416, 0);
INSERT INTO `pet_name_generation` VALUES (32, 'Zig', 416, 0);
INSERT INTO `pet_name_generation` VALUES (33, 'Zil', 416, 0);
INSERT INTO `pet_name_generation` VALUES (34, 'Zor', 416, 0);
INSERT INTO `pet_name_generation` VALUES (35, 'bis', 416, 1);
INSERT INTO `pet_name_generation` VALUES (36, 'fip', 416, 1);
INSERT INTO `pet_name_generation` VALUES (37, 'gup', 416, 1);
INSERT INTO `pet_name_generation` VALUES (38, 'ham', 416, 1);
INSERT INTO `pet_name_generation` VALUES (39, 'jub', 416, 1);
INSERT INTO `pet_name_generation` VALUES (40, 'kin', 416, 1);
INSERT INTO `pet_name_generation` VALUES (41, 'kol', 416, 1);
INSERT INTO `pet_name_generation` VALUES (42, 'lop', 416, 1);
INSERT INTO `pet_name_generation` VALUES (43, 'loz', 416, 1);
INSERT INTO `pet_name_generation` VALUES (44, 'mat', 416, 1);
INSERT INTO `pet_name_generation` VALUES (45, 'mir', 416, 1);
INSERT INTO `pet_name_generation` VALUES (46, 'nam', 416, 1);
INSERT INTO `pet_name_generation` VALUES (47, 'nar', 416, 1);
INSERT INTO `pet_name_generation` VALUES (48, 'nik', 416, 1);
INSERT INTO `pet_name_generation` VALUES (49, 'nip', 416, 1);
INSERT INTO `pet_name_generation` VALUES (50, 'pad', 416, 1);
INSERT INTO `pet_name_generation` VALUES (51, 'pep', 416, 1);
INSERT INTO `pet_name_generation` VALUES (52, 'pit', 416, 1);
INSERT INTO `pet_name_generation` VALUES (53, 'qua', 416, 1);
INSERT INTO `pet_name_generation` VALUES (54, 'rai', 416, 1);
INSERT INTO `pet_name_generation` VALUES (55, 'rin', 416, 1);
INSERT INTO `pet_name_generation` VALUES (56, 'rot', 416, 1);
INSERT INTO `pet_name_generation` VALUES (57, 'tai', 416, 1);
INSERT INTO `pet_name_generation` VALUES (58, 'tal', 416, 1);
INSERT INTO `pet_name_generation` VALUES (59, 'tik', 416, 1);
INSERT INTO `pet_name_generation` VALUES (60, 'tip', 416, 1);
INSERT INTO `pet_name_generation` VALUES (61, 'tog', 416, 1);
INSERT INTO `pet_name_generation` VALUES (62, 'tuk', 416, 1);
INSERT INTO `pet_name_generation` VALUES (63, 'uri', 416, 1);
INSERT INTO `pet_name_generation` VALUES (64, 'yal', 416, 1);
INSERT INTO `pet_name_generation` VALUES (65, 'yap', 416, 1);
INSERT INTO `pet_name_generation` VALUES (66, 'Bhee', 417, 0);
INSERT INTO `pet_name_generation` VALUES (67, 'Bruu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (68, 'Czaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (69, 'Droo', 417, 0);
INSERT INTO `pet_name_generation` VALUES (70, 'Flaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (71, 'Fzuu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (72, 'Ghaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (73, 'Gree', 417, 0);
INSERT INTO `pet_name_generation` VALUES (74, 'Gzaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (75, 'Haa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (76, 'Haad', 417, 0);
INSERT INTO `pet_name_generation` VALUES (77, 'Haag', 417, 0);
INSERT INTO `pet_name_generation` VALUES (78, 'Haap', 417, 0);
INSERT INTO `pet_name_generation` VALUES (79, 'Jhaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (80, 'Jhuu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (81, 'Khaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (82, 'Khii', 417, 0);
INSERT INTO `pet_name_generation` VALUES (83, 'Khuu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (84, 'Kree', 417, 0);
INSERT INTO `pet_name_generation` VALUES (85, 'Luu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (86, 'Maa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (87, 'Nhee', 417, 0);
INSERT INTO `pet_name_generation` VALUES (88, 'Phuu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (89, 'Pryy', 417, 0);
INSERT INTO `pet_name_generation` VALUES (90, 'Rhuu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (91, 'Shaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (92, 'Sloo', 417, 0);
INSERT INTO `pet_name_generation` VALUES (93, 'Sruu', 417, 0);
INSERT INTO `pet_name_generation` VALUES (94, 'Thoo', 417, 0);
INSERT INTO `pet_name_generation` VALUES (95, 'Traa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (96, 'Wraa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (97, 'Zhaa', 417, 0);
INSERT INTO `pet_name_generation` VALUES (98, 'dhon', 417, 1);
INSERT INTO `pet_name_generation` VALUES (99, 'dhum', 417, 1);
INSERT INTO `pet_name_generation` VALUES (100, 'dhun', 417, 1);
INSERT INTO `pet_name_generation` VALUES (101, 'dom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (102, 'don', 417, 1);
INSERT INTO `pet_name_generation` VALUES (103, 'drom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (104, 'dym', 417, 1);
INSERT INTO `pet_name_generation` VALUES (105, 'fenn', 417, 1);
INSERT INTO `pet_name_generation` VALUES (106, 'fum', 417, 1);
INSERT INTO `pet_name_generation` VALUES (107, 'fun', 417, 1);
INSERT INTO `pet_name_generation` VALUES (108, 'ghon', 417, 1);
INSERT INTO `pet_name_generation` VALUES (109, 'ghun', 417, 1);
INSERT INTO `pet_name_generation` VALUES (110, 'grom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (111, 'grym', 417, 1);
INSERT INTO `pet_name_generation` VALUES (112, 'hom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (113, 'hon', 417, 1);
INSERT INTO `pet_name_generation` VALUES (114, 'hun', 417, 1);
INSERT INTO `pet_name_generation` VALUES (115, 'jhom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (116, 'kun', 417, 1);
INSERT INTO `pet_name_generation` VALUES (117, 'lum', 417, 1);
INSERT INTO `pet_name_generation` VALUES (118, 'mmon', 417, 1);
INSERT INTO `pet_name_generation` VALUES (119, 'mon', 417, 1);
INSERT INTO `pet_name_generation` VALUES (120, 'myn', 417, 1);
INSERT INTO `pet_name_generation` VALUES (121, 'nam', 417, 1);
INSERT INTO `pet_name_generation` VALUES (122, 'nem', 417, 1);
INSERT INTO `pet_name_generation` VALUES (123, 'nhym', 417, 1);
INSERT INTO `pet_name_generation` VALUES (124, 'nom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (125, 'num', 417, 1);
INSERT INTO `pet_name_generation` VALUES (126, 'phom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (127, 'roon', 417, 1);
INSERT INTO `pet_name_generation` VALUES (128, 'rym', 417, 1);
INSERT INTO `pet_name_generation` VALUES (129, 'shon', 417, 1);
INSERT INTO `pet_name_generation` VALUES (130, 'thun', 417, 1);
INSERT INTO `pet_name_generation` VALUES (131, 'tom', 417, 1);
INSERT INTO `pet_name_generation` VALUES (132, 'zhem', 417, 1);
INSERT INTO `pet_name_generation` VALUES (133, 'zhum', 417, 1);
INSERT INTO `pet_name_generation` VALUES (134, 'zun', 417, 1);
INSERT INTO `pet_name_generation` VALUES (135, 'Bar', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (136, 'Bel', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (137, 'Char', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (138, 'Grak\'', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (139, 'Graz\'', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (140, 'Grim', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (141, 'Hath', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (142, 'Hel', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (143, 'Hok', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (144, 'Huk', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (145, 'Jhaz', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (146, 'Jhom', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (147, 'Juk\'', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (148, 'Kal\'', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (149, 'Klath', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (150, 'Kon', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (151, 'Krag', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (152, 'Krak', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (153, 'Mak', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (154, 'Mezz', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (155, 'Orm', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (156, 'Phan', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (157, 'Sar', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (158, 'Tang', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (159, 'Than', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (160, 'Thog', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (161, 'Thok', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (162, 'Thul', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (163, 'Zag\'', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (164, 'Zang', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (165, 'Zhar\'', 1860, 0);
INSERT INTO `pet_name_generation` VALUES (166, 'kath', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (167, 'doc', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (168, 'dok', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (169, 'gak', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (170, 'garth', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (171, 'gore', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (172, 'gorg', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (173, 'grave', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (174, 'gron', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (175, 'juk', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (176, 'krast', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (177, 'kresh', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (178, 'krit', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (179, 'los', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (180, 'mon', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (181, 'mos', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (182, 'moth', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (183, 'nagma', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (184, 'nak', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (185, 'nar', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (186, 'nos', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (187, 'nuz', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (188, 'phog', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (189, 'rath', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (190, 'tast', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (191, 'taz', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (192, 'thak', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (193, 'thang', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (194, 'thyk', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (195, 'vhug', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (196, 'zazt', 1860, 1);
INSERT INTO `pet_name_generation` VALUES (197, 'Ael', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (198, 'Aez', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (199, 'Ang', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (200, 'Ban', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (201, 'Bet', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (202, 'Bro', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (203, 'Bry', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (204, 'Cat', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (205, 'Dir', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (206, 'Dis', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (207, 'Dom', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (208, 'Drus', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (209, 'Fie', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (210, 'Fier', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (211, 'Gly', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (212, 'Hel', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (213, 'Hes', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (214, 'Kal', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (215, 'Lyn', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (216, 'Mir', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (217, 'Nim', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (218, 'Sar', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (219, 'Sel', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (220, 'Vil', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (221, 'Zah', 1863, 0);
INSERT INTO `pet_name_generation` VALUES (222, 'aith', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (223, 'anda', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (224, 'antia', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (225, 'evere', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (226, 'lia', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (227, 'lissa', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (228, 'neri', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (229, 'neth', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (230, 'nia', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (231, 'nlissa', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (232, 'nora', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (233, 'nva', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (234, 'nys', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (235, 'ola', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (236, 'ona', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (237, 'ora', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (238, 'rah', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (239, 'riana', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (240, 'riel', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (241, 'rona', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (242, 'tai', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (243, 'tevere', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (244, 'thea', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (245, 'vina', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (246, 'wena', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (247, 'wyn', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (248, 'xia', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (249, 'yla', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (250, 'yssa', 1863, 1);
INSERT INTO `pet_name_generation` VALUES (251, 'Flaa', 17252, 0);
INSERT INTO `pet_name_generation` VALUES (252, 'Haa', 17252, 0);
INSERT INTO `pet_name_generation` VALUES (253, 'Jhuu', 17252, 0);
INSERT INTO `pet_name_generation` VALUES (254, 'Shaa', 17252, 0);
INSERT INTO `pet_name_generation` VALUES (255, 'Thoo', 17252, 0);
INSERT INTO `pet_name_generation` VALUES (256, 'dhun', 17252, 1);
INSERT INTO `pet_name_generation` VALUES (257, 'ghun', 17252, 1);
INSERT INTO `pet_name_generation` VALUES (258, 'roon', 17252, 1);
INSERT INTO `pet_name_generation` VALUES (259, 'thun', 17252, 1);
INSERT INTO `pet_name_generation` VALUES (260, 'tom', 17252, 1);


SET FOREIGN_KEY_CHECKS = 1;
