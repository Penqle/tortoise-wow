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
-- Table structure for miraclerace_creaturespool
-- ----------------------------
DROP TABLE IF EXISTS `miraclerace_creaturespool`;
CREATE TABLE `miraclerace_creaturespool`  (
  `raceid` int(10) UNSIGNED NOT NULL,
  `entry` int(10) UNSIGNED NOT NULL,
  `chance` int(10) UNSIGNED NOT NULL,
  `positionx` float NOT NULL,
  `positiony` float NOT NULL,
  `positionz` float NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of miraclerace_creaturespool
-- ----------------------------
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 85, -6261.06, -4203.29, -61.6622);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 34, -6214.69, -4197.56, -61.5945);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 86, -6287.51, -4219.52, -61.4578);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 50, -6321.51, -4211.65, -62.1696);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 71, -6353.83, -4204.9, -61.7181);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 13, -6377.89, -4195.65, -61.2303);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 23, -6370.63, -4188.11, -61.8002);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 65, -6390.03, -4178.49, -62.5875);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 67, -6416.89, -4134.83, -63.9271);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 40, -6427.3, -4096.03, -63.7856);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 77, -6433.31, -4031.17, -63.1054);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 76, -6431.05, -4003.72, -62.8452);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 50, -6424.3, -3959.57, -62.8266);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 10, -6408.31, -3930.51, -62.311);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 72, -6379.64, -3908.14, -61.8397);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 49, -6349.96, -3903.26, -62.356);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 18, -6311.13, -3899.58, -62.9651);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 26, -6280.21, -3901.05, -62.3262);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 64, -6251.76, -3901.2, -61.2454);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 54, -6232.54, -3902.18, -60.5786);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 66, -6159, -3903.95, -59.856);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 69, -6168.7, -3899.25, -59.9417);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 46, -6168.31, -3906.6, -59.9298);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 14, -6141.92, -3896.65, -59.8812);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 12, -6096.11, -3887.88, -60.061);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 96, -6074.25, -3888.96, -60.0756);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 74, -6008.51, -3857.35, -60.5044);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 72, -5970.14, -3840.32, -60.7226);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 37, -5932.73, -3821.27, -60.3359);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 49, -5908.78, -3814.33, -59.7494);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 34, -5885.44, -3793.31, -60.0887);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 15, -5842.47, -3782.85, -61.0047);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 51, -5784.94, -3779.09, -61.501);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 19, -5737.71, -3794.85, -60.4773);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 23, -5698.81, -3813.19, -61.5379);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 48, -5666.96, -3872.2, -62.0234);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 69, -5650.89, -3897.62, -61.7227);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 13, -5659.54, -3920.85, -61.4246);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 28, -5647.12, -3962.56, -61.1855);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 89, -5652.83, -3978.41, -61.1718);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 81, -5644.27, -4003.11, -61.1481);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 39, -5655.68, -4009.87, -60.9243);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 33, -5640.59, -4058.41, -61.1986);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 39, -5650.44, -4083.08, -61.3705);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 84, -5653.29, -4108.54, -61.4863);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 21, -5675.98, -4143.84, -61.5861);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 27, -5700.35, -4158.4, -60.38);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 60, -5716.27, -4178.49, -60.9616);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 29, -5767.6, -4184.46, -61.5557);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 46, -5797.67, -4196.96, -61.2527);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 42, -5817.36, -4189.44, -61.6969);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 62, -5860.39, -4203.96, -62.6341);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 84, -5883.4, -4192.37, -62.8028);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 43, -5912.22, -4201.35, -62.8427);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 43, -5947.57, -4205.34, -62.4424);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 76, -5968.67, -4194.83, -62.2133);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 61, -5999.46, -4202.01, -62.3811);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 69, -6046.75, -4189.5, -62.6701);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 60, -6068.59, -4194.98, -62.3636);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 82, -6095.29, -4181.1, -62.0564);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 41, -6117.26, -4190.24, -62.5743);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 37, -6183.04, -4184.78, -61.6778);
INSERT INTO `miraclerace_creaturespool` VALUES (1, 50513, 53, -6156.79, -4183.43, -61.8667);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 55, -5996.18, -4022.64, -58.7498);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 17, -5928.57, -4024.24, -58.7489);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 89, -5835.02, -4012.23, -58.7908);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 26, -5843.17, -4021.73, -58.7488);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 30, -5812.23, -4015.08, -58.765);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 65, -5870.1, -4012.66, -58.7349);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 44, -5897.34, -4021.61, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 15, -5931.2, -4012.18, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 23, -5953.79, -4022.85, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 59, -5975.88, -4018.01, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 37, -5962.04, -4013.1, -58.7498);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 86, -6005.2, -4009.06, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 40, -6031.85, -4017.23, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 22, -6200.13, -4016.25, -58.7488);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 70, -6180.25, -4007.61, -58.7488);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 95, -6162.44, -4019.99, -58.7488);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 73, -6146.87, -4013.68, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 70, -6132.15, -4008.54, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 30, -6116.02, -4017.87, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 23, -6092.21, -4019.04, -58.7502);
INSERT INTO `miraclerace_creaturespool` VALUES (2, 50513, 12, -6065.18, -4009.92, -58.7502);


SET FOREIGN_KEY_CHECKS = 1;
