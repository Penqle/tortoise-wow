-- ==============================================
-- FILE: broadcast_text_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
INSERT INTO `broadcast_text`
(
    `entry`,
    `male_text`,
    `female_text`,
    `chat_type`,
    `sound_id`,
    `language_id`,
    `emote_id1`,
    `emote_id2`,
    `emote_id3`,
    `emote_delay1`,
    `emote_delay2`,
    `emote_delay3`
)
VALUES
(6263501, 'The Brotherhood Stands for Justice!', 'The Brotherhood Stands for Justice!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6263502, 'The lies of Stormwind, must be told!', 'The lies of Stormwind, must be told!', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_ai_events_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
INSERT INTO `creature_ai_events`
(
    `id`,
    `creature_id`,
    `condition_id`,
    `event_type`,
    `event_inverse_phase_mask`,
    `event_chance`,
    `event_flags`,
    `event_param1`,
    `event_param2`,
    `event_param3`,
    `event_param4`,
    `action1_script`,
    `action2_script`,
    `action3_script`,
    `comment`
)
VALUES
(6263501, 62635, 0, 4, 0, 100, 0, 0, 0, 0, 0, 6263501, 0, 0, 'Ralthas - Aggro text'),
(6263502, 62635, 0, 6, 0, 100, 0, 0, 0, 0, 0, 6263502, 0, 0, 'Ralthas - Death text');

-- ==============================================
-- FILE: creature_ai_scripts_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
INSERT INTO `creature_ai_scripts`
(
    `id`,
    `delay`,
    `priority`,
    `command`,
    `datalong`,
    `datalong2`,
    `datalong3`,
    `datalong4`,
    `target_param1`,
    `target_param2`,
    `target_type`,
    `data_flags`,
    `dataint`,
    `dataint2`,
    `dataint3`,
    `dataint4`,
    `x`,
    `y`,
    `z`,
    `o`,
    `condition_id`,
    `comments`
)
VALUES
(6263501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6263501, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralthas - Aggro text'),
(6263502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6263502, 0, 0, 0, 0, 0, 0, 0, 0, 'Ralthas - Death text');

-- ==============================================
-- FILE: creature_equip_template_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
INSERT INTO `creature_equip_template`
(
    `entry`,
    `equipentry1`,
    `equipentry2`,
    `equipentry3`
)
VALUES
(62635, 5276, 0, 0);

-- ==============================================
-- FILE: creature_movement_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
INSERT INTO `creature_movement`
(
    `id`,
    `point`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `waittime`,
    `wander_distance`,
    `script_id`
)
VALUES
(2590698, 1, -9129.660156, -1098.790039, 73.660652, 0, 0, 0, 0),
(2590698, 2, -9135.660156, -1099.790039, 73.410652, 0, 0, 0, 0),
(2590698, 3, -9144.240234, -1096.189941, 73.585564, 0, 0, 0, 0),
(2590698, 4, -9151.490234, -1092.939941, 72.835564, 0, 0, 0, 0),
(2590698, 5, -9158.740234, -1089.439941, 72.335564, 0, 0, 0, 0),
(2590698, 6, -9164.929688, -1081.800049, 72.297607, 0, 0, 0, 0),
(2590698, 7, -9169.429688, -1075.300049, 72.797607, 0, 0, 0, 0),
(2590698, 8, -9173.929688, -1068.550049, 72.047607, 0, 0, 0, 0),
(2590698, 9, -9181.980469, -1061.069946, 71.954147, 0, 0, 0, 0),
(2590698, 10, -9188.230469, -1056.319946, 71.954147, 0, 0, 0, 0),
(2590698, 11, -9194.730469, -1051.319946, 71.454147, 0, 0, 0, 0),
(2590698, 12, -9199.480469, -1047.819946, 71.454147, 0, 0, 0, 0),
(2590698, 13, -9197.419922, -1040.030029, 71.666786, 0, 0, 0, 0),
(2590698, 14, -9195.919922, -1034.280029, 71.916786, 0, 0, 0, 0),
(2590698, 15, -9188.179688, -1031.390015, 72.076439, 0, 0, 0, 0),
(2590698, 16, -9180.679688, -1028.640015, 72.076439, 0, 0, 0, 0),
(2590698, 17, -9170.209961, -1021.630005, 71.009239, 0, 0, 0, 0),
(2590698, 18, -9164.209961, -1016.130005, 71.009239, 0, 0, 0, 0),
(2590698, 19, -9158.459961, -1010.630005, 71.509239, 0, 0, 0, 0),
(2590698, 20, -9152.459961, -1005.380005, 71.759239, 0, 0, 0, 0),
(2590698, 21, -9148.209961, -1001.130005, 71.759239, 0, 0, 0, 0),
(2590698, 22, -9139.080078, -998.104004, 71.753952, 0, 0, 0, 0),
(2590698, 23, -9131.330078, -996.104004, 72.253952, 0, 0, 0, 0),
(2590698, 24, -9123.580078, -994.104004, 72.503952, 0, 0, 0, 0),
(2590698, 25, -9114.839844, -995.919983, 72.168175, 0, 0, 0, 0),
(2590698, 26, -9107.089844, -998.169983, 72.168175, 0, 0, 0, 0),
(2590698, 27, -9099.339844, -1000.169983, 72.168175, 0, 0, 0, 0),
(2590698, 28, -9088.480469, -1006.049988, 73.142548, 0, 0, 0, 0),
(2590698, 29, -9081.980469, -1010.549988, 73.642548, 0, 0, 0, 0),
(2590698, 30, -9076.980469, -1014.049988, 73.642548, 0, 0, 0, 0),
(2590698, 31, -9073.139648, -1021.97998, 72.93187, 0, 0, 0, 0),
(2590698, 32, -9072.719727, -1027.060059, 72.91523, 0, 0, 0, 0),
(2590698, 33, -9074.790039, -1037.569946, 72.936935, 0, 0, 0, 0),
(2590698, 34, -9078.719727, -1049.339966, 73.017052, 0, 0, 0, 0),
(2590698, 35, -9082.219727, -1056.589966, 73.017052, 0, 0, 0, 0),
(2590698, 36, -9087.570312, -1065.849976, 73.801331, 0, 0, 0, 0),
(2590698, 37, -9093.570312, -1073.599976, 74.801331, 0, 0, 0, 0),
(2590698, 38, -9098.570312, -1079.849976, 74.301331, 0, 0, 0, 0),
(2590698, 39, -9105.959961, -1088.189941, 73.502892, 0, 0, 0, 0),
(2590698, 40, -9111.459961, -1093.939941, 73.752892, 0, 0, 0, 0),
(2590698, 41, -9121.660156, -1097.790039, 74.410652, 0, 0, 0, 0),
(2590698, 42, -9129.660156, -1098.790039, 73.660652, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
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
(2590698, 62635, 0, 0, 0, 0, -9129.660156, -1098.790039, 73.660652, -2.321688652038574, 300, 300, 0, 100, 100, 2, 0, 0);

-- ==============================================
-- FILE: creature_spells_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
INSERT INTO `creature_spells`
(
    `entry`,
    `name`,
    `spellId_1`,
    `probability_1`,
    `castTarget_1`,
    `targetParam1_1`,
    `targetParam2_1`,
    `castFlags_1`,
    `delayInitialMin_1`,
    `delayInitialMax_1`,
    `delayRepeatMin_1`,
    `delayRepeatMax_1`,
    `scriptId_1`,
    `spellId_2`,
    `probability_2`,
    `castTarget_2`,
    `targetParam1_2`,
    `targetParam2_2`,
    `castFlags_2`,
    `delayInitialMin_2`,
    `delayInitialMax_2`,
    `delayRepeatMin_2`,
    `delayRepeatMax_2`,
    `scriptId_2`,
    `spellId_3`,
    `probability_3`,
    `castTarget_3`,
    `targetParam1_3`,
    `targetParam2_3`,
    `castFlags_3`,
    `delayInitialMin_3`,
    `delayInitialMax_3`,
    `delayRepeatMin_3`,
    `delayRepeatMax_3`,
    `scriptId_3`,
    `spellId_4`,
    `probability_4`,
    `castTarget_4`,
    `targetParam1_4`,
    `targetParam2_4`,
    `castFlags_4`,
    `delayInitialMin_4`,
    `delayInitialMax_4`,
    `delayRepeatMin_4`,
    `delayRepeatMax_4`,
    `scriptId_4`,
    `spellId_5`,
    `probability_5`,
    `castTarget_5`,
    `targetParam1_5`,
    `targetParam2_5`,
    `castFlags_5`,
    `delayInitialMin_5`,
    `delayInitialMax_5`,
    `delayRepeatMin_5`,
    `delayRepeatMax_5`,
    `scriptId_5`,
    `spellId_6`,
    `probability_6`,
    `castTarget_6`,
    `targetParam1_6`,
    `targetParam2_6`,
    `castFlags_6`,
    `delayInitialMin_6`,
    `delayInitialMax_6`,
    `delayRepeatMin_6`,
    `delayRepeatMax_6`,
    `scriptId_6`,
    `spellId_7`,
    `probability_7`,
    `castTarget_7`,
    `targetParam1_7`,
    `targetParam2_7`,
    `castFlags_7`,
    `delayInitialMin_7`,
    `delayInitialMax_7`,
    `delayRepeatMin_7`,
    `delayRepeatMax_7`,
    `scriptId_7`,
    `spellId_8`,
    `probability_8`,
    `castTarget_8`,
    `targetParam1_8`,
    `targetParam2_8`,
    `castFlags_8`,
    `delayInitialMin_8`,
    `delayInitialMax_8`,
    `delayRepeatMin_8`,
    `delayRepeatMax_8`,
    `scriptId_8`
)
VALUES
(62635, 'Ralthas', 1449, 100, 1, 0, 0, 0, 0, 0, 12, 17, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_ralthas.sql
-- GENERATED: 20260829145107
-- ==============================================
UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 20.211887,
    `dmg_max` = 24.467083,
    `attack_power` = 44,
    `unit_class` = 2,
    `ranged_dmg_min` = 17.192947,
    `ranged_dmg_max` = 23.640301,
    `ranged_attack_power` = 36,
    `spell_list_id` = `entry`
WHERE `entry` = 62635;


