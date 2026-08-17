-- ==============================================
-- FILE: creature_involvedrelation_diff.sql
-- GENERATED: 20260718120125
-- ==============================================
INSERT INTO `creature_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(1076, 55100),
(5635, 40542),
(7564, 40915),
(10637, 40299),
(16786, 9320),
(52069, 55101),
(60053, 39980),
(60053, 39981),
(80243, 40795),
(91798, 40056);

-- ==============================================
-- FILE: creature_questrelation_diff.sql
-- GENERATED: 20260718120125
-- ==============================================
INSERT INTO `creature_questrelation`
(
    `id`,
    `quest`
)
VALUES
(1076, 55101),
(3182, 55100),
(5635, 40545),
(7564, 40916),
(10637, 40299),
(16786, 9320),
(60053, 39980),
(60053, 39981),
(80213, 40795);

-- ==============================================
-- FILE: gameobject_involvedrelation_diff.sql
-- GENERATED: 20260718120125
-- ==============================================
INSERT INTO `gameobject_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(173594, 2878),
(1000075, 39980),
(1000075, 39981),
(1000076, 39980),
(1000076, 39981),
(1000223, 39980),
(1000223, 39981),
(2010810, 40051),
(2010811, 40052),
(2010812, 40053),
(2010813, 40054),
(2010814, 40055),
(2020028, 40916);

-- ==============================================
-- FILE: gameobject_questrelation_diff.sql
-- GENERATED: 20260718120125
-- ==============================================
INSERT INTO `gameobject_questrelation`
(
    `id`,
    `quest`
)
VALUES
(173594, 2878),
(1000075, 39980),
(1000075, 39981),
(1000076, 39980),
(1000076, 39981),
(1000223, 39980),
(1000223, 39981),
(2010810, 40052),
(2010811, 40053),
(2010812, 40054),
(2010813, 40055),
(2010814, 40056),
(2010854, 40273),
(2020028, 40915);

-- ==============================================
-- FILE: quest_template_update.sql
-- GENERATED: 20260718120125
-- ==============================================
UPDATE `quest_template`
SET `ReqSourceId1` = 15877,
    `ReqSourceCount1` = 1
WHERE `entry` = 28;

UPDATE `quest_template`
SET `ReqSourceId1` = 15877,
    `ReqSourceCount1` = 1
WHERE `entry` = 29;

UPDATE `quest_template`
SET `ReqSourceId1` = 15883,
    `ReqSourceId2` = 15882,
    `ReqSourceCount1` = 1,
    `ReqSourceCount2` = 1
WHERE `entry` = 30;

UPDATE `quest_template`
SET `ReqSourceId1` = 15883,
    `ReqSourceId2` = 15882,
    `ReqSourceCount1` = 1,
    `ReqSourceCount2` = 1
WHERE `entry` = 272;

UPDATE `quest_template`
SET `ReqSourceId1` = 3467,
    `ReqSourceId2` = 3499,
    `ReqSourceCount1` = 1,
    `ReqSourceCount2` = 1
WHERE `entry` = 498;

UPDATE `quest_template`
SET `ReqSourceId1` = 9437,
    `ReqSourceId2` = 9439,
    `ReqSourceId3` = 9442,
    `ReqSourceCount1` = 999,
    `ReqSourceCount2` = 999,
    `ReqSourceCount3` = 999
WHERE `entry` = 654;

UPDATE `quest_template`
SET `ReqSourceId1` = 4702,
    `ReqSourceCount1` = 5
WHERE `entry` = 746;

UPDATE `quest_template`
SET `ReqSourceId1` = 10338,
    `ReqSourceCount1` = 1
WHERE `entry` = 882;

UPDATE `quest_template`
SET `ReqSourceId1` = 5165,
    `ReqSourceCount1` = 999999
WHERE `entry` = 905;

UPDATE `quest_template`
SET `ReqSourceId1` = 12220,
    `ReqSourceCount1` = 5
WHERE `entry` = 1016;

UPDATE `quest_template`
SET `ReqSourceId1` = 5475,
    `ReqSourceCount1` = 1
WHERE `entry` = 1026;

UPDATE `quest_template`
SET `ReqSourceId1` = 5388,
    `ReqSourceCount1` = 1
WHERE `entry` = 1045;

UPDATE `quest_template`
SET `ReqSourceId1` = 5695,
    `ReqSourceId2` = 5694,
    `ReqSourceId3` = 5693,
    `ReqSourceId4` = 5692,
    `ReqSourceCount1` = 1,
    `ReqSourceCount2` = 1,
    `ReqSourceCount3` = 1,
    `ReqSourceCount4` = 1
WHERE `entry` = 1079;

UPDATE `quest_template`
SET `ReqSourceId1` = 5687,
    `ReqSourceCount1` = 1
WHERE `entry` = 1089;

UPDATE `quest_template`
SET `ReqSourceId1` = 17345,
    `ReqSourceCount1` = 9999999
WHERE `entry` = 1126;

UPDATE `quest_template`
SET `ReqSourceId1` = 5810,
    `ReqSourceCount1` = 1
WHERE `entry` = 1136;

UPDATE `quest_template`
SET `ReqSourceId1` = 5845,
    `ReqSourceCount1` = 1
WHERE `entry` = 1150;

UPDATE `quest_template`
SET `ReqSourceId1` = 5851,
    `ReqSourceCount1` = 1
WHERE `entry` = 1182;

UPDATE `quest_template`
SET `ReqSourceId1` = 5867,
    `ReqSourceCount1` = 1
WHERE `entry` = 1195;

UPDATE `quest_template`
SET `ReqSourceId1` = 6074,
    `ReqSourceCount1` = 1
WHERE `entry` = 1380;

UPDATE `quest_template`
SET `ReqSourceId1` = 6074,
    `ReqSourceCount1` = 1
WHERE `entry` = 1381;

UPDATE `quest_template`
SET `ReqSourceId1` = 6766,
    `ReqSourceCount1` = 1
WHERE `entry` = 1435;

UPDATE `quest_template`
SET `ReqSourceId1` = 6783,
    `ReqSourceCount1` = 1
WHERE `entry` = 1667;

UPDATE `quest_template`
SET `ReqSourceId1` = 7131,
    `ReqSourceCount1` = 999
WHERE `entry` = 1846;

UPDATE `quest_template`
SET `ReqSourceId1` = 7208,
    `ReqSourceCount1` = 1
WHERE `entry` = 1858;

UPDATE `quest_template`
SET `ReqSourceId1` = 7273,
    `ReqSourceCount1` = 10
WHERE `entry` = 1948;

UPDATE `quest_template`
SET `ReqSourceId1` = 8049,
    `ReqSourceCount1` = 1
WHERE `entry` = 2459;

UPDATE `quest_template`
SET `ReqSourceId2` = 8429,
    `ReqSourceId3` = 8430,
    `ReqSourceCount2` = 30,
    `ReqSourceCount3` = 30
WHERE `entry` = 2605;

UPDATE `quest_template`
SET `ReqSourceId1` = 9320,
    `ReqSourceCount1` = 20
WHERE `entry` = 2932;

UPDATE `quest_template`
SET `ReqSourceId1` = 9472,
    `ReqSourceCount1` = 1
WHERE `entry` = 2994;

UPDATE `quest_template`
SET `ReqSourceId1` = 9530,
    `ReqSourceCount1` = 1
WHERE `entry` = 3062;

UPDATE `quest_template`
SET `ReqSourceId1` = 10663,
    `ReqSourceCount1` = 1
WHERE `entry` = 3528;

UPDATE `quest_template`
SET `ReqSourceId2` = 10839,
    `ReqSourceId3` = 10840,
    `ReqSourceCount2` = 1,
    `ReqSourceCount3` = 1
WHERE `entry` = 3602;

UPDATE `quest_template`
SET `ReqSourceId1` = 11242,
    `ReqSourceCount1` = 1
WHERE `entry` = 3909;

UPDATE `quest_template`
SET `ReqSourceId1` = 11147,
    `ReqSourceId2` = 11148,
    `ReqSourceCount1` = 1,
    `ReqSourceCount2` = 5
WHERE `entry` = 3924;

UPDATE `quest_template`
SET `ReqSourceId2` = 11172,
    `ReqSourceId3` = 11173,
    `ReqSourceId4` = 11169,
    `ReqSourceCount2` = 11,
    `ReqSourceCount3` = 1,
    `ReqSourceCount4` = 1
WHERE `entry` = 4005;

UPDATE `quest_template`
SET `ReqSourceId1` = 12230,
    `ReqSourceCount1` = 100
WHERE `entry` = 4293;

UPDATE `quest_template`
SET `ReqSourceId1` = 12235,
    `ReqSourceCount1` = 100
WHERE `entry` = 4294;

UPDATE `quest_template`
SET `ReqSourceId1` = 12341,
    `ReqSourceId2` = 12342,
    `ReqSourceId3` = 12343,
    `ReqSourceCount1` = 1,
    `ReqSourceCount2` = 1,
    `ReqSourceCount3` = 1
WHERE `entry` = 4763;

UPDATE `quest_template`
SET `ReqSourceId1` = 12722,
    `ReqSourceCount1` = 1
WHERE `entry` = 5051;

UPDATE `quest_template`
SET `ReqSourceId1` = 12733,
    `ReqSourceCount1` = 1
WHERE `entry` = 5056;

UPDATE `quest_template`
SET `ReqSourceId1` = 12814,
    `ReqSourceCount1` = 1
WHERE `entry` = 5096;

UPDATE `quest_template`
SET `ReqSourceId1` = 12886,
    `ReqSourceId2` = 12887,
    `ReqSourceId3` = 12888,
    `ReqSourceCount1` = 1,
    `ReqSourceCount2` = 1,
    `ReqSourceCount3` = 1
WHERE `entry` = 5149;

UPDATE `quest_template`
SET `ReqSourceId1` = 13157,
    `ReqSourceCount1` = 99
WHERE `entry` = 5206;

UPDATE `quest_template`
SET `ReqSourceId1` = 18501,
    `ReqSourceCount1` = 1
WHERE `entry` = 5526;

UPDATE `quest_template`
SET `ReqSourceId1` = 15447,
    `ReqSourceCount1` = 7
WHERE `entry` = 6022;

UPDATE `quest_template`
SET `ReqSourceId1` = 15874,
    `ReqSourceCount1` = 10
WHERE `entry` = 6142;

UPDATE `quest_template`
SET `ReqSourceId2` = 15875,
    `ReqSourceCount2` = 1
WHERE `entry` = 6146;

UPDATE `quest_template`
SET `ReqSourceId1` = 16333,
    `ReqSourceCount1` = 1
WHERE `entry` = 6395;

UPDATE `quest_template`
SET `ReqSourceId1` = 17757,
    `ReqSourceCount1` = 1
WHERE `entry` = 7067;

UPDATE `quest_template`
SET `ReqSourceId1` = 18749,
    `ReqSourceCount1` = 1
WHERE `entry` = 7647;

UPDATE `quest_template`
SET `ReqSourceId1` = 19881,
    `ReqSourceCount1` = 5
WHERE `entry` = 8201;

UPDATE `quest_template`
SET `ReqSourceId1` = 22046,
    `ReqSourceCount1` = 1
WHERE `entry` = 8989;

UPDATE `quest_template`
SET `ReqSourceId1` = 22046,
    `ReqSourceCount1` = 1
WHERE `entry` = 8990;

UPDATE `quest_template`
SET `ReqSourceId1` = 22046,
    `ReqSourceCount1` = 1
WHERE `entry` = 8991;

UPDATE `quest_template`
SET `ReqSourceId1` = 22046,
    `ReqSourceCount1` = 1
WHERE `entry` = 8992;

UPDATE `quest_template`
SET `ReqSourceId1` = 51837,
    `ReqSourceCount1` = 1
WHERE `entry` = 39991;

UPDATE `quest_template`
SET `ReqSourceId1` = 51837,
    `ReqSourceCount1` = 1
WHERE `entry` = 39992;

UPDATE `quest_template`
SET `ReqSourceId1` = 51837,
    `ReqSourceCount1` = 1
WHERE `entry` = 39993;

UPDATE `quest_template`
SET `ReqSourceId1` = 60246,
    `ReqSourceCount1` = 1
WHERE `entry` = 40175;

