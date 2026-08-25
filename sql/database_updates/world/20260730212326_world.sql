-- ==============================================
-- FILE: guild_bank_gossip_menus.sql
-- GENERATED: 20260730212326
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
(900001, 'GUILD_BANK_TRIGGER', 'GUILD_BANK_TRIGGER', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(900001, 900001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(64998, 900001, 0, 0);

UPDATE `creature_template`
SET `gossip_menu_id` = 64998
WHERE `entry` IN
(
    62008,
    62009,
    62010,
    62011,
    62012,
    80917,
    80918
);

