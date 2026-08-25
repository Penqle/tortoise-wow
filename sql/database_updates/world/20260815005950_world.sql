-- ==============================================
-- FILE: creature_display_info_addon_cleanup.sql
-- GENERATED: 20260815005950
-- ==============================================
UPDATE `creature_display_info_addon`
SET `display_id_other_gender` = 0
WHERE `display_id` IN (
    20802, 21024
    );

DELETE FROM `creature_display_info_addon`
WHERE `display_id` IN (
    20568, 61191
    );

-- ==============================================
-- FILE: redundant_spell_affect.sql
-- GENERATED: 20260815005950
-- ==============================================
DELETE FROM `spell_affect`
WHERE `entry` = 11083
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11115
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11124
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11170
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11247
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11367
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11368
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11369
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 11370
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12285
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12288
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12288
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 12301
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12351
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12378
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12398
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12399
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12400
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12536
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12593
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 12697
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12707
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12707
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 12818
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12982
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12983
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12984
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 12985
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13742
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13743
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13872
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13875
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13975
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 13976
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13979
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13980
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 13981
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14062
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 14063
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 14064
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 14065
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 14066
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14067
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14082
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14083
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14113
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14114
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14115
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14116
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14117
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14168
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14169
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 14909
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 15017
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16035
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16039
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16041
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16043
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16086
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16086
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16086
AND `effectId` = 2;

DELETE FROM `spell_affect`
WHERE `entry` = 16105
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16106
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16106
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16107
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16108
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16109
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16110
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16111
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16112
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16117
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16118
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16119
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16120
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16130
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16166
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16173
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16181
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16183
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16184
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16184
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16209
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16222
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16223
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16224
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16225
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16230
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16232
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16233
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16234
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16258
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16258
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16293
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16293
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16513
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16513
AND `effectId` = 2;

DELETE FROM `spell_affect`
WHERE `entry` = 16514
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16514
AND `effectId` = 2;

DELETE FROM `spell_affect`
WHERE `entry` = 16515
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16515
AND `effectId` = 2;

DELETE FROM `spell_affect`
WHERE `entry` = 16544
AND `effectId` = 2;

DELETE FROM `spell_affect`
WHERE `entry` = 16719
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16719
AND `effectId` = 2;

DELETE FROM `spell_affect`
WHERE `entry` = 16720
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 16720
AND `effectId` = 2;

DELETE FROM `spell_affect`
WHERE `entry` = 16858
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16859
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16860
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16861
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 16862
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 17123
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 17124
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 20101
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 20102
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 20103
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 20104
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 20105
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 20575
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 21942
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 23300
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 26118
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 26118
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 27853
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 27855
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28539
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28682
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28743
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28746
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 28755
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28763
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28774
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28807
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28811
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28814
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28815
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28818
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28829
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28830
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28843
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28844
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28852
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28852
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 28854
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28855
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28856
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28857
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 28999
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 29000
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 29005
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 29171
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 29192
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 29193
AND `effectId` = 1;

DELETE FROM `spell_affect`
WHERE `entry` = 30440
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 30640
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 30812
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 30813
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 30814
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 30872
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 30892
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 30893
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 45954
AND `effectId` = 0;

DELETE FROM `spell_affect`
WHERE `entry` = 45955
AND `effectId` = 0;

-- ==============================================
-- FILE: redundant_spell_proc_event.sql
-- GENERATED: 20260815005950
-- ==============================================
UPDATE `spell_proc_event`
SET `procFlags` = 0
WHERE `entry` IN (
    13896, 15058, 16089, 16998, 18094, 45863, 46788, 46789, 51304, 51317,
    51362, 51372, 51415, 51444, 51445, 51446, 51512, 51598, 51927, 52940,
    51929, 51963, 52586, 52589, 52628
    );

UPDATE `spell_proc_event`
SET `CustomChance` = 0
WHERE `entry` = 51963;

DELETE FROM `spell_proc_event`
WHERE `entry` IN (
    325, 905, 945, 8134, 10431, 10432, 11120, 12357, 12358, 12359,
    12360, 12487, 12488, 12574, 12575, 12576, 12577, 12598, 12724, 12725,
    12726, 12727, 12799, 12800, 12846, 12847, 12848, 12958, 12999, 13000,
    13001, 13002, 13867, 14080, 14081, 14094, 14160, 14161, 14190, 14193,
    14194, 14195, 15059, 15060, 15323, 15324, 15325, 15326, 16923, 16924,
    16999, 17796, 17801, 17802, 17803, 18073, 18095, 18120, 18121, 19232,
    19233, 19289, 19291, 19292, 19293, 19308, 19309, 19310, 19311, 19312,
    19387, 19388, 19412, 19413, 19414, 19415, 19573, 20149, 20150, 20212,
    20213, 20214, 20215, 20912, 20913, 20914, 20927, 20928, 27815, 27816,
    28592, 28593, 28594, 28595, 29079, 29080, 29444, 29445, 51306, 51308,
    51318, 51319, 51320, 51321, 51342, 51343, 51344, 51345, 51356, 51357,
    51358, 51359, 51373, 51416, 51447, 51467, 51468, 51471, 51491, 51492,
    51518, 51533, 51534, 51535, 51536, 51599, 51675, 51676, 51681, 51682,
    51928, 51964, 51965, 51987, 51988, 51989, 51990, 52501, 52514, 52527,
    12880, 17364, 17794, 20500, 51341, 51513
    );

-- ==============================================
-- FILE: redundant_spell_threat.sql
-- GENERATED: 20260815005950
-- ==============================================
DELETE FROM `spell_threat`
WHERE `entry` IN (
    25918, 51600, 51601, 51602
    );

