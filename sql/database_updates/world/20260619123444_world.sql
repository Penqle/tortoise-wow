-- ==============================================
-- FILE: quest_template_gobject_requirement_fixes.sql
-- GENERATED: 20260619123444
-- ==============================================
-- Fix for the crushed gameobject IDs from initial quest data update

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -1721,
    `ReqCreatureOrGOId2` = -1722
WHERE `entry` = 498
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId3` = -1761
WHERE `entry` = 532
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -1768,
    `ReqCreatureOrGOId2` = -1769,
    `ReqCreatureOrGOId3` = -1770
WHERE `entry` = 553
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -2704
WHERE `entry` = 633
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -3189,
    `ReqCreatureOrGOId2` = -3190,
    `ReqCreatureOrGOId3` = -3192
WHERE `entry` = 786
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -3644
WHERE `entry` = 849
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -3737
WHERE `entry` = 877
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -4072,
    `ReqCreatureOrGOId2` = -61936,
    `ReqCreatureOrGOId3` = -61935
WHERE `entry` = 900
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId2` = -6907,
    `ReqCreatureOrGOId3` = -6908,
    `ReqCreatureOrGOId4` = -6906
WHERE `entry` = 905
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -3525
WHERE `entry` = 924
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -17188,
    `ReqCreatureOrGOId2` = -17189
WHERE `entry` = 953
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -16393
WHERE `entry` = 957
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -19027
WHERE `entry` = 1022
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -19030
WHERE `entry` = 1043
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -19901,
    `ReqCreatureOrGOId2` = -20352
WHERE `entry` = 1140
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -20359
WHERE `entry` = 1172
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -102986
WHERE `entry` = 1884
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -144066,
    `ReqCreatureOrGOId2` = -144067,
    `ReqCreatureOrGOId3` = -144068
WHERE `entry` = 2988
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId2` = -144070
WHERE `entry` = 2994
  AND `ReqCreatureOrGOId2` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -144071,
    `ReqCreatureOrGOId2` = -144072,
    `ReqCreatureOrGOId3` = -144073
WHERE `entry` = 2995
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -149025,
    `ReqCreatureOrGOId2` = -149030,
    `ReqCreatureOrGOId3` = -149031,
    `ReqCreatureOrGOId4` = -149032
WHERE `entry` = 3463
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -153556
WHERE `entry` = 3701
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -160840
WHERE `entry` = 3825
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -176158,
    `ReqCreatureOrGOId2` = -176159,
    `ReqCreatureOrGOId3` = -176160,
    `ReqCreatureOrGOId4` = -176161
WHERE `entry` = 5165
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId2` = -176245
WHERE `entry` = 5251
  AND `ReqCreatureOrGOId2` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId2` = -176544,
    `ReqCreatureOrGOId3` = -176545
WHERE `entry` = 5382
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -177929
WHERE `entry` = 6381
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -178090
WHERE `entry` = 6395
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181346,
    `ReqCreatureOrGOId2` = -181347,
    `ReqCreatureOrGOId3` = -181348,
    `ReqCreatureOrGOId4` = -181349
WHERE `entry` = 9319
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181342,
    `ReqCreatureOrGOId2` = -181339,
    `ReqCreatureOrGOId3` = -181343,
    `ReqCreatureOrGOId4` = -181340
WHERE `entry` = 9322
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181344,
    `ReqCreatureOrGOId2` = -181338,
    `ReqCreatureOrGOId3` = -181345,
    `ReqCreatureOrGOId4` = -181341
WHERE `entry` = 9323
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181332,
    `ReqCreatureOrGOId2` = -181333,
    `ReqCreatureOrGOId3` = -181334
WHERE `entry` = 9367
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181336,
    `ReqCreatureOrGOId2` = -181337,
    `ReqCreatureOrGOId3` = -181335
WHERE `entry` = 9368
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181346,
    `ReqCreatureOrGOId2` = -181347,
    `ReqCreatureOrGOId3` = -181348,
    `ReqCreatureOrGOId4` = -181349
WHERE `entry` = 9386
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181561,
    `ReqCreatureOrGOId2` = -181560,
    `ReqCreatureOrGOId3` = -181563,
    `ReqCreatureOrGOId4` = -181562
WHERE `entry` = 9388
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -181566,
    `ReqCreatureOrGOId2` = -181564,
    `ReqCreatureOrGOId3` = -181565,
    `ReqCreatureOrGOId4` = -181567
WHERE `entry` = 9389
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -2010836
WHERE `entry` = 40178
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -2010905,
    `ReqCreatureOrGOId2` = -2010906,
    `ReqCreatureOrGOId3` = -2010907
WHERE `entry` = 40505
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -2020225,
    `ReqCreatureOrGOId2` = -2020226,
    `ReqCreatureOrGOId3` = -2020227,
    `ReqCreatureOrGOId4` = -2020228
WHERE `entry` = 41762
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -2020225,
    `ReqCreatureOrGOId2` = -2020226,
    `ReqCreatureOrGOId3` = -2020227,
    `ReqCreatureOrGOId4` = -2020228
WHERE `entry` = 41764
  AND `ReqCreatureOrGOId1` = -8388608
  AND `ReqCreatureOrGOId2` = -8388608
  AND `ReqCreatureOrGOId3` = -8388608
  AND `ReqCreatureOrGOId4` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -3000203
WHERE `entry` = 41906
  AND `ReqCreatureOrGOId1` = -8388608;

UPDATE `quest_template`
SET `ReqCreatureOrGOId1` = -3000242
WHERE `entry` = 80301
  AND `ReqCreatureOrGOId1` = -8388608;

