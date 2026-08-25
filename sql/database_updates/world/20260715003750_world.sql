-- ==============================================
-- FILE: broadcast_text_t1swappers.sql
-- GENERATED: 20260715003750
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
(6210701, '<The dwarf stares silently at you.>', '<The dwarf stares silently at you.>', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6210801, 'You do not belong here.', 'You do not belong here.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6210901, 'You do not belong here.', 'You do not belong here.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_t1swappers.sql
-- GENERATED: 20260715003750
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
(2583991, 62107, 0, 0, 0, 0, -7589, -1128.290039, 250.207001, 1.675570011138916, 300, 300, 0, 100, 100, 0, 0, 0),
(2583993, 62108, 0, 0, 0, 0, -7600.689941, -1129.609985, 250.207001, 1.170549988746643, 300, 300, 0, 100, 100, 0, 0, 0),
(2583994, 62109, 0, 0, 0, 0, -7597.419922, -1100.579956, 250.207001, 4.860360145568848, 300, 300, 0, 100, 100, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_t1swappers.sql
-- GENERATED: 20260715003750
-- ==============================================
UPDATE `creature_template`
SET `scale` = 1,
    `gossip_menu_id` = `entry`,
    `dmg_min` = 118.330879,
    `dmg_max` = 152.75441,
    `attack_power` = 252,
    `unit_flags` = 32768,
    `ranged_dmg_min` = 92.315521,
    `ranged_dmg_max` = 126.933838,
    `ranged_attack_power` = 180,
    `auras` = 22650
WHERE `entry` = 62107;

UPDATE `creature_template`
SET `scale` = 1,
    `gossip_menu_id` = `entry`,
    `dmg_min` = 118.330879,
    `dmg_max` = 152.75441,
    `attack_power` = 252,
    `unit_flags` = 32768,
    `ranged_dmg_min` = 92.315521,
    `ranged_dmg_max` = 126.933838,
    `ranged_attack_power` = 180,
    `auras` = 22650
WHERE `entry` = 62108;

UPDATE `creature_template`
SET `scale` = 1,
    `gossip_menu_id` = `entry`,
    `dmg_min` = 118.330879,
    `dmg_max` = 152.75441,
    `attack_power` = 252,
    `unit_flags` = 32768,
    `ranged_dmg_min` = 92.315521,
    `ranged_dmg_max` = 126.933838,
    `ranged_attack_power` = 180,
    `auras` = 22650
WHERE `entry` = 62109;


-- ==============================================
-- FILE: gameobject_t1swappers.sql
-- GENERATED: 20260715003750
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
(5027846, 300421, 0, -7594.919921875, -1120.1199951171875, 249.93099975585938, 0.11978700011968613, 0, 0, 0.0598576978, 0.99820692, 300, 300, 100, 1, 0, 0);

-- ==============================================
-- FILE: gameobject_template_update_t1swappers.sql
-- GENERATED: 20260715003750
-- ==============================================
UPDATE `gameobject_template`
SET `flags` = 36
WHERE entry = 300421;

-- ==============================================
-- FILE: gossip_menu_t1swappers.sql
-- GENERATED: 20260715003750
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(62107, 6210701, 0, 0),
(62108, 6210801, 0, 0),
(62109, 6210901, 0, 0);

-- ==============================================
-- FILE: npc_text_t1swappers.sql
-- GENERATED: 20260715003750
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
(6210701, 6210701, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6210801, 6210801, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6210901, 6210901, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

