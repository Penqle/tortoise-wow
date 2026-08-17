-- ==============================================
-- FILE: broadcast_text_transmog.sql
-- GENERATED: 20260711170358
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
(900000, 'TRANSMOG_TRIGGER', 'TRANSMOG_TRIGGER', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_transmog.sql
-- GENERATED: 20260711170358
-- ==============================================
UPDATE `creature_template`
SET `gossip_menu_id` = 64999
WHERE `entry` IN (51290, 51291);

-- ==============================================
-- FILE: gossip_menu_transmog.sql
-- GENERATED: 20260711170358
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(64999, 900000, 0, 0);

-- ==============================================
-- FILE: npc_text_transmog.sql
-- GENERATED: 20260711170358
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
(900000, 900000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

