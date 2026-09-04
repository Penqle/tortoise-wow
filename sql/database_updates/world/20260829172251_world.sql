-- ==============================================
-- FILE: broadcast_text_missing.sql
-- GENERATED: 20260829172251
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
(6241601, 'There are still many mysteries to uncover on this world. We shall not stop until ever rock is overturned.', 'There are still many mysteries to uncover on this world. We shall not stop until ever rock is overturned.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6263601, 'Gowlfang no leader of the Mosshide! Never was!', 'Gowlfang no leader of the Mosshide! Never was!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6272701, 'The beauty of nature must be protected, and upheld at all costs.', 'The beauty of nature must be protected, and upheld at all costs.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_missing.sql
-- GENERATED: 20260829172251
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
(2586978, 62416, 0, 0, 0, 0, -4661.589844, -1286.119995, 503.381989, 5.341770172119141, 300, 300, 0, 100, 100, 0, 0, 0),
(2590696, 62636, 0, 0, 0, 0, -3117.860107, -2674.26001, 10.3006, 1.938670039176941, 300, 300, 0, 100, 100, 0, 0, 0),
(2591767, 62727, 0, 0, 0, 1, 3674.790039, 704.505005, 8.36297, 4.7469000816345215, 300, 300, 0, 100, 100, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_missing.sql
-- GENERATED: 20260829172251
-- ==============================================
UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 43.927868,
    `dmg_max` = 55.432785,
    `attack_power` = 102,
    `ranged_dmg_min` = 42.977089,
    `ranged_dmg_max` = 59.093498,
    `ranged_attack_power` = 84,
    `type` = 7,
    `type_flags` = 0,
    `gossip_menu_id` = `entry`
WHERE `entry` = 62416;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 64.519226,
    `dmg_max` = 82.5,
    `attack_power` = 136,
    `ranged_dmg_min` = 58.712193,
    `ranged_dmg_max` = 80.729271,
    `ranged_attack_power` = 112,
    `type` = 7,
    `type_flags` = 0,
    `gossip_menu_id` = `entry`
WHERE `entry` = 62636;

UPDATE `creature_template`
SET `scale` = 1,
    `dmg_min` = 66.559998,
    `dmg_max` = 78,
    `attack_power` = 90,
    `ranged_dmg_min` = 38.595112,
    `ranged_dmg_max` = 53.068275,
    `ranged_attack_power` = 72,
    `type` = 7,
    `type_flags` = 0,
    `gossip_menu_id` = `entry`
WHERE `entry` = 62727;


-- ==============================================
-- FILE: gameobject_missing.sql
-- GENERATED: 20260829172251
-- ==============================================
INSERT INTO `gameobject`
(
    `guid`,
    `id`,
    `map`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `rotation0`,
    `rotation1`,
    `rotation2`,
    `rotation3`,
    `spawntimesecsmin`,
    `spawntimesecsmax`,
    `animprogress`,
    `state`,
    `spawn_flags`,
    `visibility_mod`
)
VALUES
(5020838, 2003678, 1, 3674.679931640625, 708.39501953125, 7.9239501953125, 4.74753999710083, 0, 0, 0.694570451, -0.719424693, 300, 300, 100, 1, 0, 0),
(5020839, 2003622, 1, 3663.169921875, 701.677978515625, 8.34430980682373, 4.312429904937744, 0, 0, 0.833480848, -0.552548347, 300, 300, 100, 1, 0, 0),
(5020840, 2003621, 1, 3647.47998046875, 697.3250122070312, 8.344090461730957, 3.4422099590301514, 0, 0, 0.988724906, -0.149743312, 300, 300, 100, 1, 0, 0),
(5020841, 2008756, 1, 3689.8798828125, 695.7109985351562, 9.373479843139648, 2.2044200897216797, 0, 0, 0.892207651, 0.451625407, 300, 300, 100, 1, 0, 0),
(5020842, 2003621, 1, 3689.489990234375, 694.364990234375, 9.373539924621582, 2.632460117340088, 0, 0, 0.967772612, 0.251825679, 300, 300, 100, 1, 0, 0);

-- ==============================================
-- FILE: gossip_menu_missing.sql
-- GENERATED: 20260829172251
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(62416, 6241601, 0, 0),
(62636, 6263601, 0, 0),
(62727, 6272701, 0, 0);

-- ==============================================
-- FILE: gowlfang_removal.sql
-- GENERATED: 20260829172251
-- ==============================================
DELETE FROM `creature`
WHERE `guid` = 2572308;

-- ==============================================
-- FILE: npc_text_missing.sql
-- GENERATED: 20260829172251
-- ==============================================
INSERT INTO `npc_text`
(
    `ID`,
    `BroadcastTextID0`,
    `Probability0`,
    `BroadcastTextID1`,
    `Probability1`,
    `BroadcastTextID2`,
    `Probability2`,
    `BroadcastTextID3`,
    `Probability3`,
    `BroadcastTextID4`,
    `Probability4`,
    `BroadcastTextID5`,
    `Probability5`,
    `BroadcastTextID6`,
    `Probability6`,
    `BroadcastTextID7`,
    `Probability7`
)
VALUES
(6241601, 6241601, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6263601, 6263601, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6272701, 6272701, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

-- ==============================================
-- FILE: object_scaling_missing.sql
-- GENERATED: 20260829172251
-- ==============================================
INSERT INTO `object_scaling`
(
    `fullGuid`,
    `scale`
)
VALUES
(17370417378911624358, 1.6);

