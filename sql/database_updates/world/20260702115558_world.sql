-- ==============================================
-- FILE: broadcast_text_taurenpriest.sql
-- GENERATED: 20260702115558
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
(6309601, 'Be at peace young one. It is our duty to bring harmony to the tribes, and navigate the evils of this world.', 'Be at peace young one. It is our duty to bring harmony to the tribes, and navigate the evils of this world.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_taurenpriest.sql
-- GENERATED: 20260702115558
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
(2595995, 63096, 0, 0, 0, 1, -2884.159912, -246.710007, 53.867802, 3.315938, 300, 300, 0, 100, 100, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_taurenpriest.sql
-- GENERATED: 20260702115558
-- ==============================================
UPDATE `creature_template`
SET `gossip_menu_id` = 63096,
    `scale` = 1.35000002384186,
    `dmg_min` = 11.9625,
    `dmg_max` = 13.956249,
    `attack_power` = 44,
    `unit_flags` = 37376,
    `trainer_class` = 5,
    `ranged_dmg_min` = 14.750384,
    `ranged_dmg_max` = 20.281776,
    `ranged_attack_power` = 34
WHERE `entry` = 63096;


-- ==============================================
-- FILE: gossip_menu_option_taurenpriest.sql
-- GENERATED: 20260702115558
-- ==============================================
INSERT INTO `gossip_menu_option`
(
    `menu_id`,
    `id`,
    `option_icon`,
    `option_text`,
    `option_broadcast_text`,
    `option_id`,
    `npc_option_npcflag`,
    `action_menu_id`,
    `action_poi_id`,
    `action_script_id`,
    `box_coded`,
    `box_money`,
    `box_text`,
    `box_broadcast_text`,
    `condition_id`
)
VALUES
(63096, 0, 3, 'Train me.', 3266, 5, 16, 0, 0, 0, 0, 0, '', 0, 0);

-- ==============================================
-- FILE: gossip_menu_taurenpriest.sql
-- GENERATED: 20260702115558
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(63096, 6309601, 0, 0);

-- ==============================================
-- FILE: npc_text_taurenpriest.sql
-- GENERATED: 20260702115558
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
(6309601, 6309601, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

