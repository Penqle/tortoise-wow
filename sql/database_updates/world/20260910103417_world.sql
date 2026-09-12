-- ==============================================
-- FILE: creature_kara10.sql
-- GENERATED: 20260910103417
-- ==============================================
DELETE FROM `creature`
WHERE `guid` = 2574705;

INSERT INTO `creature`
(
    `guid`,
    `id`,
    `id2`,
    `id3`,
    `id4`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `spawntimesecsmin`,
    `spawntimesecsmax`,
    `wander_distance`,
    `health_percent`,
    `mana_percent`,
    `movement_type`,
    `spawn_flags`,
    `visibility_mod`
)
VALUES
(2574705, 61225, 0, 0, 0, 532, -10891.299805, -1751.089966, 90.476898, 4.595970153808594, 86400, 86400, 0, 100, 100, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_kara10.sql
-- GENERATED: 20260910103417
-- ==============================================
UPDATE `creature_template`
SET `dmg_min` = 1127.3706,
    `dmg_max` = 1447.9397,
    `attack_power` = 252,
    `ranged_dmg_min` = 152.2899,
    `ranged_dmg_max` = 209.3985,
    `ranged_attack_power` = 180
WHERE `entry` = 14261;

UPDATE `creature_template`
SET `scale` = 0.25,
    `dmg_min` = 10.45,
    `dmg_max` = 10.45,
    `attack_power` = 24,
    `ranged_attack_time` = 2200,
    `ranged_dmg_min` = 0.76,
    `ranged_dmg_max` = 0.76,
    `ranged_attack_power` = 20
WHERE `entry` = 40026;

UPDATE `creature_template`
SET `dmg_min` = 1158.0902,
    `dmg_max` = 1511.0226,
    `attack_power` = 268,
    `base_attack_time` = 1428,
    `ranged_dmg_min` = 259.3992,
    `ranged_dmg_max` = 368.9918,
    `ranged_attack_power` = 191
WHERE `entry` = 61191;

UPDATE `creature_template`
SET `dmg_min` = 776.5261,
    `dmg_max` = 1027.0493,
    `attack_power` = 246,
    `ranged_dmg_min` = 236.7807,
    `ranged_dmg_max` = 336.8173,
    `ranged_attack_power` = 154
WHERE `entry` = 61192;

UPDATE `creature_template`
SET `dmg_min` = 549.9162,
    `dmg_max` = 752.1057,
    `attack_power` = 262,
    `ranged_dmg_min` = 256.3427,
    `ranged_dmg_max` = 364.6439,
    `ranged_attack_power` = 186
WHERE `entry` = 61193;

UPDATE `creature_template`
SET `dmg_min` = 783.3620,
    `dmg_max` = 1020.7148,
    `attack_power` = 262,
    `ranged_dmg_min` = 256.3427,
    `ranged_dmg_max` = 364.6439,
    `ranged_attack_power` = 186
WHERE `entry` = 61194;

UPDATE `creature_template`
SET `dmg_min` = 750.2253,
    `dmg_max` = 992.8829,
    `attack_power` = 244,
    `ranged_dmg_min` = 198.9476,
    `ranged_dmg_max` = 277.5209,
    `ranged_attack_power` = 152
WHERE `entry` = 61195;

UPDATE `creature_template`
SET `dmg_min` = 750.2253,
    `dmg_max` = 992.8829,
    `attack_power` = 244,
    `ranged_dmg_min` = 198.9476,
    `ranged_dmg_max` = 277.5209,
    `ranged_attack_power` = 152
WHERE `entry` = 61196;

UPDATE `creature_template`
SET `dmg_min` = 750.2253,
    `dmg_max` = 992.8829,
    `attack_power` = 244,
    `ranged_dmg_min` = 198.9476,
    `ranged_dmg_max` = 277.5209,
    `ranged_attack_power` = 152
WHERE `entry` = 61197;

UPDATE `creature_template`
SET `dmg_min` = 870.6935,
    `dmg_max` = 1151.5972,
    `attack_power` = 258,
    `ranged_attack_power` = 182
WHERE `entry` = 61198;

UPDATE `creature_template`
SET `dmg_min` = 813.8892,
    `dmg_max` = 1076.4965,
    `attack_power` = 246,
    `ranged_attack_power` = 154
WHERE `entry` = 61199;

UPDATE `creature_template`
SET `dmg_min` = 515.5281,
    `dmg_max` = 552.1209,
    `attack_power` = 258,
    `ranged_attack_power` = 182
WHERE `entry` = 61200;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 418.6647,
    `dmg_max` = 551.0446,
    `attack_power` = 258,
    `ranged_attack_power` = 182
WHERE `entry` = 61201;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 418.6647,
    `dmg_max` = 551.0446,
    `attack_power` = 258,
    `ranged_attack_power` = 182
WHERE `entry` = 61202;

UPDATE `creature_template`
SET `dmg_min` = 769.807,
    `dmg_max` = 1003.0528,
    `attack_power` = 246,
    `ranged_dmg_min` = 236.7807,
    `ranged_dmg_max` = 336.8173,
    `ranged_attack_power` = 154
WHERE `entry` = 61203;

UPDATE `creature_template`
SET `dmg_min` = 1138.1803,
    `dmg_max` = 1484.0789,
    `attack_power` = 252,
    `ranged_dmg_min` = 239.226,
    `ranged_dmg_max` = 340.2956,
    `ranged_attack_power` = 158
WHERE `entry` = 61204;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 489.6646,
    `dmg_max` = 1048.823,
    `attack_power` = 252,
    `ranged_attack_power` = 180
WHERE `entry` = 61205;

UPDATE `creature_template`
SET `dmg_min` = 723.9698,
    `dmg_max` = 874.5728,
    `attack_power` = 252,
    `ranged_dmg_min` = 86.423,
    `ranged_dmg_max` = 118.8317,
    `ranged_attack_power` = 180
WHERE `entry` = 61206;

UPDATE `creature_template`
SET `dmg_min` = 896.0074,
    `dmg_max` = 1168.9633,
    `attack_power` = 262,
    `ranged_dmg_min` = 87.6776,
    `ranged_dmg_max` = 120.5567,
    `ranged_attack_power` = 186
WHERE `entry` = 61208;

UPDATE `creature_template`
SET `dmg_min` = 762.4424,
    `dmg_max` = 920.5625,
    `attack_power` = 258,
    `ranged_dmg_min` = 86.8412,
    `ranged_dmg_max` = 119.4067,
    `ranged_attack_power` = 182
WHERE `entry` = 61209;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 489.6646,
    `dmg_max` = 524.9461,
    `attack_power` = 252,
    `ranged_attack_power` = 180
WHERE `entry` = 61210;

UPDATE `creature_template`
SET `dmg_min` = 576.6161,
    `dmg_max` = 789.504,
    `attack_power` = 258,
    `ranged_dmg_min` = 253.8974,
    `ranged_dmg_max` = 361.1656,
    `ranged_attack_power` = 182
WHERE `entry` = 61211;

UPDATE `creature_template`
SET `dmg_min` = 2121.769,
    `dmg_max` = 2643.5156,
    `attack_power` = 252,
    `ranged_dmg_min` = 239.226,
    `ranged_dmg_max` = 340.2956,
    `ranged_attack_power` = 158
WHERE `entry` = 61221;

UPDATE `creature_template`
SET `dmg_min` = 2349.9988,
    `dmg_max` = 2844.3008,
    `attack_power` = 268,
    `ranged_dmg_min` = 259.3992,
    `ranged_dmg_max` = 368.9918,
    `ranged_attack_power` = 191
WHERE `entry` = 61223;

UPDATE `creature_template`
SET `dmg_min` = 2228.437,
    `dmg_max` = 2692.2117,
    `attack_power` = 252,
    `ranged_dmg_min` = 239.226,
    `ranged_dmg_max` = 340.2956,
    `ranged_attack_power` = 158
WHERE `entry` = 61224;

UPDATE `creature_template`
SET `dmg_min` = 2636.4622,
    `dmg_max` = 3558.4075,
    `attack_power` = 252,
    `ranged_dmg_min` = 239.226,
    `ranged_dmg_max` = 340.2956,
    `ranged_attack_power` = 158
WHERE `entry` = 61225;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 978.2601,
    `dmg_max` = 1048.823,
    `attack_power` = 252,
    `ranged_attack_power` = 180
WHERE `entry` = 61254;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 519.0732,
    `dmg_max` = 635.3625,
    `attack_power` = 228,
    `ranged_attack_power` = 162
WHERE `entry` = 61255;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 90.95,
    `dmg_max` = 111.28,
    `attack_power` = 200,
    `ranged_dmg_min` = 70.4113,
    `ranged_dmg_max` = 96.8155,
    `ranged_attack_power` = 140
WHERE `entry` = 61256;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 1474.9084,
    `dmg_max` = 1957.4282,
    `attack_power` = 262,
    `ranged_dmg_min` = 256.3427,
    `ranged_dmg_max` = 364.6439,
    `ranged_attack_power` = 186
WHERE `entry` = 61319;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 91.1429,
    `dmg_max` = 111.516,
    `attack_power` = 218,
    `ranged_dmg_min` = 81.8866,
    `ranged_dmg_max` = 112.5941,
    `ranged_attack_power` = 154
WHERE `entry` = 61320;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 286.7484,
    `dmg_max` = 368.8289,
    `attack_power` = 174,
    `ranged_dmg_min` = 56.9721,
    `ranged_dmg_max` = 78.3366,
    `ranged_attack_power` = 124
WHERE `entry` = 61321;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 113.9298,
    `dmg_max` = 146.1741,
    `attack_power` = 242,
    `ranged_dmg_min` = 88.7524,
    `ranged_dmg_max` = 122.0341,
    `ranged_attack_power` = 172
WHERE `entry` = 61322;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 93.2035,
    `dmg_max` = 114.6296,
    `attack_power` = 210,
    `ranged_dmg_min` = 77.0141,
    `ranged_dmg_max` = 105.8944,
    `ranged_attack_power` = 148
WHERE `entry` = 61323;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 100.2348,
    `dmg_max` = 130.5141,
    `attack_power` = 206,
    `ranged_dmg_min` = 79.9916,
    `ranged_dmg_max` = 109.9885,
    `ranged_attack_power` = 144
WHERE `entry` = 61324;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 113.7328,
    `dmg_max` = 145.9213,
    `attack_power` = 224,
    `ranged_dmg_min` = 82.7322,
    `ranged_dmg_max` = 113.7568,
    `ranged_attack_power` = 158
WHERE `entry` = 61328;

UPDATE `creature_template`
SET `dmg_min` = 113.9298,
    `dmg_max` = 146.1741,
    `attack_power` = 242,
    `ranged_dmg_min` = 88.7524,
    `ranged_dmg_max` = 122.0341,
    `ranged_attack_power` = 172
WHERE `entry` = 61571;


