-- ==============================================
-- FILE: alter_gossip_menu_ids_mediumint.sql
-- GENERATED: 20260905205619
-- ==============================================
ALTER TABLE `gossip_menu`
MODIFY `entry` mediumint(8) unsigned NOT NULL DEFAULT 0;

ALTER TABLE `gossip_menu_option`
MODIFY `menu_id` mediumint(8) unsigned NOT NULL DEFAULT 0;

ALTER TABLE `locales_gossip_menu_option`
MODIFY `menu_id` mediumint(8) unsigned NOT NULL DEFAULT 0;

-- ==============================================
-- FILE: broadcast_text_balor_fp_ally.sql
-- GENERATED: 20260905205619
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
(8016301, '<Seems like Gryphon''s got something on his mind...>', '<Seems like Gryphon''s got something on his mind...>', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8016302, 'Take me to Balor!', 'Take me to Balor!', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_balor_fp_ally.sql
-- GENERATED: 20260905205619
-- ==============================================
UPDATE `creature_template`
SET `gossip_menu_id` = `entry`
WHERE `entry` = 80163;

-- ==============================================
-- FILE: gossip_menu_balor_fp_ally.sql
-- GENERATED: 20260905205619
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(80163, 8016301, 0, 0);

-- ==============================================
-- FILE: gossip_menu_option_balor_fp_ally.sql
-- GENERATED: 20260905205619
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
(80163, 0, 0, 'Take me to Balor!', 8016302, 1, 1, -1, 0, 8016301, 0, 0, '', 0, 0);

-- ==============================================
-- FILE: gossip_scripts_balor_fp_ally.sql
-- GENERATED: 20260905205619
-- ==============================================
INSERT INTO `gossip_scripts`
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
(8016301, 0, 0, 30, 298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0, 'Steelwing - Start Taxi Path to Stormbreaker Point');

-- ==============================================
-- FILE: npc_text_balor_fp_ally.sql
-- GENERATED: 20260905205619
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
(8016301, 8016301, 1.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

