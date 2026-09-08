-- ==============================================
-- FILE: broadcast_text_northwindfixes.sql
-- GENERATED: 20260903115534
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
(6230601, 'My wife Lena has her final resting place here. She was taken from us far too early, and my duties to my Lord don''t give me enough time to spend with my children Estelle and Joshua. Once these lands have returned to normalcy and peace returns, I will resign my position and fully embrace my role as father. It''s the least they deserve.', 'My wife Lena has her final resting place here. She was taken from us far too early, and my duties to my Lord don''t give me enough time to spend with my children Estelle and Joshua. Once these lands have returned to normalcy and peace returns, I will resign my position and fully embrace my role as father. It''s the least they deserve.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6238001, 'My father used to fish in this small pond, but he would never take the fish home. I think he felt a certain sadness for them—raised, essentially, in captivity, in a small, limited place to roam. I wonder if that''s how he felt about our home when he decided to join the Defias. Mh, I suppose he got the opposite of what he wanted in the Stockades.', 'My father used to fish in this small pond, but he would never take the fish home. I think he felt a certain sadness for them—raised, essentially, in captivity, in a small, limited place to roam. I wonder if that''s how he felt about our home when he decided to join the Defias. Mh, I suppose he got the opposite of what he wanted in the Stockades.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6248001, 'The Admiralty had a heated debate about us Kul Tirans participating in this tournament, from what I''ve heard. Seems they stand pretty divided about our relations with Stormwind. I can''t really blame them for thinking like that, given Stormwind''s direction in diplomacy with the Horde.', 'The Admiralty had a heated debate about us Kul Tirans participating in this tournament, from what I''ve heard. Seems they stand pretty divided about our relations with Stormwind. I can''t really blame them for thinking like that, given Stormwind''s direction in diplomacy with the Horde.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6247901, 'You must forgive Malleville''s attitude. He lost many good friends and comrades in the Second War, and experienced many of its horrors personally. I will make sure he stays civil and doesn''t hurt anyone, I''ll give you my word.', 'You must forgive Malleville''s attitude. He lost many good friends and comrades in the Second War, and experienced many of its horrors personally. I will make sure he stays civil and doesn''t hurt anyone, I''ll give you my word.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: creature_template_update_northwindfixes.sql
-- GENERATED: 20260903115534
-- ==============================================
UPDATE `creature_template`
SET `gossip_menu_id` = `entry`
WHERE `entry` IN (
    62306, 62380, 62480, 62479
    );

-- ==============================================
-- FILE: gossip_menu_northwindfixes.sql
-- GENERATED: 20260903115534
-- ==============================================
INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(62306, 6230601, 0, 0),
(62380, 6238001, 0, 0),
(62479, 6247901, 0, 0),
(62480, 6248001, 0, 0);

-- ==============================================
-- FILE: npc_text_northwindfixes.sql
-- GENERATED: 20260903115534
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
(6230601, 6230601, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6238001, 6238001, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6247901, 6247901, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6248001, 6248001, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

