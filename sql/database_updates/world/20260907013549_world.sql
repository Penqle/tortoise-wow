-- ==============================================
-- FILE: a_hydromancers_curiosity.sql
-- GENERATED: 20260907013549
-- ==============================================
INSERT INTO `creature_questrelation`
(
    `id`,
    `quest`
)
VALUES
(60936, 41799);

INSERT INTO `creature_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(62460, 41799);

-- ==============================================
-- FILE: assessing_the_situation.sql
-- GENERATED: 20260907013549
-- ==============================================
UPDATE `quest_template`
SET `NextQuestId` = 41693
WHERE `entry` = 41692;

-- ==============================================
-- FILE: calming_the_tempest.sql
-- GENERATED: 20260907013549
-- ==============================================
INSERT INTO `creature_questrelation`
(
    `id`,
    `quest`
)
VALUES
(62460, 41711);

INSERT INTO `creature_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(62460, 41711);

INSERT INTO `conditions`
(
    `condition_entry`,
    `type`,
    `value1`,
    `value2`,
    `value3`,
    `value4`,
    `flags`
)
VALUES
(41711, 9, 41711, 1, 0, 0, 0);

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
(4188104, '<Place the humming crystal next to the pearl.>', '<Place the humming crystal next to the pearl.>', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(41881, 1, 0, '<Place the humming crystal next to the pearl.>', 4188104, 1, 1, -1, 0, 4188104, 0, 0, '', 0, 41711);

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
(4188104, 0, 0, 10, 62355, 60000, 1, 100, 0, 0, 0, 0, 8, 0, 6, 1, -8304.06, 3318.95, 9.69, 2.84, 0, 'Calming the Tempest - Summon Abysstide Siren');

-- ==============================================
-- FILE: ceaseless_storms.sql
-- GENERATED: 20260907013549
-- ==============================================
INSERT INTO `conditions`
(
    `condition_entry`,
    `type`,
    `value1`,
    `value2`,
    `value3`,
    `value4`,
    `flags`
)
VALUES
(41709, 9, 41709, 1, 0, 0, 0);

DELETE FROM `creature`
WHERE `guid` = 2599165;

INSERT INTO `creature_questrelation`
(
    `id`,
    `quest`
)
VALUES
(62460, 41709);

INSERT INTO `creature_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(62460, 41709);

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
(4188102, '<Inspect the altar further.>', '<Inspect the altar further.>', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4188103, '<Examining the altar, you notice that many tiny shards have been put into the open crater on the top of the pearl. Almost like a puzzle, it seems the murlocs are trying to reassemble it. You decide to pick one of the shards and bring it to Hydromancer Finnigan.>', '<Examining the altar, you notice that many tiny shards have been put into the open crater on the top of the pearl. Almost like a puzzle, it seems the murlocs are trying to reassemble it. You decide to pick one of the shards and bring it to Hydromancer Finnigan.>', 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(4188102, 4188102, 0, 0);

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
(41881, 0, 0, '<Inspect the altar further.>', 4188102, 1, 1, 4188102, 0, 4188102, 0, 0, '', 0, 41709);

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
(4188102, 0, 0, 17, 41773, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ceaseless Storms - Give Pearlescent Shard');

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
(4188101, 4188101, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(4188102, 4188103, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

-- ==============================================
-- FILE: favor_for_spare_parts.sql
-- GENERATED: 20260907013549
-- ==============================================
INSERT INTO `conditions`
(
    `condition_entry`,
    `type`,
    `value1`,
    `value2`,
    `value3`,
    `value4`,
    `flags`
)
VALUES
(41703, 9, 41703, 1, 0, 0, 0);

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
(249901, 'Where are these goblins?! One would think they''d cherish their precious gold above all else.', 'Where are these goblins?! One would think they''d cherish their precious gold above all else.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249902, 'Are you Markel Smythe? The goblins you are looking for have been stranded on the island of Balor. I''m here to get a spare zeppelin motor from you.', 'Are you Markel Smythe? The goblins you are looking for have been stranded on the island of Balor. I''m here to get a spare zeppelin motor from you.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249903, 'BALOR?! How did they even manage to fly over there? This is the first time I''ve ever heard of any zeppelin routing over that accursed island. Completely dumbfoundere, that''s what I am! They are lucky that I am in desparate need of their cargo. Here, take the motor and make sure they come back here in one piece - with their wares!', 'BALOR?! How did they even manage to fly over there? This is the first time I''ve ever heard of any zeppelin routing over that accursed island. Completely dumbfoundere, that''s what I am! They are lucky that I am in desparate need of their cargo. Here, take the motor and make sure they come back here in one piece - with their wares!', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(249901, 249901, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249903, 249903, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(249901, 249901, 0, 0),
(249902, 249903, 0, 0);

UPDATE `creature_template`
SET `gossip_menu_id` = 249901
WHERE `entry` = 2499;

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
(249901, 0, 0, 'Are you Markel Smythe? The goblins you are looking for have been stranded on the island of Balor. I''m here to get a spare zeppelin motor from you.', 249902, 1, 1, 249902, 0, 249902, 0, 0, '', 0, 41703);

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
(249902, 0, 0, 17, 41765, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41703, 'Favor For Spare Parts - Give Zeppelin Motor');

-- ==============================================
-- FILE: piece_of_a_bigger_picture.sql
-- GENERATED: 20260907013549
-- ==============================================
INSERT INTO `creature_questrelation`
(
    `id`,
    `quest`
)
VALUES
(62460, 41710);

INSERT INTO `creature_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(62460, 41710);

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
(2590174, 62562, 0, 0, 0, 0, -11433.692383, 58.15662, 42.895042, 1.5338329076766968, 300, 300, 10, 100, 100, 1, 0, 0);

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
(62562, 'Crystalmaw', 3635, 100, 1, 0, 0, 0, 10, 15, 18, 20, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `creature_template`
SET `scale` = 1.4,
    `dmg_min` = 46.131252,
    `dmg_max` = 59.760937,
    `attack_power` = 108,
    `ranged_dmg_min` = 45.877144,
    `ranged_dmg_max` = 63.081074,
    `ranged_attack_power` = 88,
    `spell_list_id` = `entry`
WHERE `entry` = 62562;


-- ==============================================
-- FILE: storm_twilight_and_hammer.sql
-- GENERATED: 20260907013549
-- ==============================================
INSERT INTO `creature_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(62466, 41837);

-- ==============================================
-- FILE: to_the_darkest_places.sql
-- GENERATED: 20260907013549
-- ==============================================
INSERT INTO `conditions`
(
    `condition_entry`,
    `type`,
    `value1`,
    `value2`,
    `value3`,
    `value4`,
    `flags`
)
VALUES
(41694, 9, 41694, 1, 0, 0, 0);

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
(6255703, '<His skin is dried and flaky, almost brittling away under your touch. A torn and agonized expression is carved onto his face, and his eyeless sockets send a shiver down your spine.>', '<His skin is dried and flaky, almost brittling away under your touch. A torn and agonized expression is carved onto his face, and his eyeless sockets send a shiver down your spine.>', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6255803, '<The skin of this corpse feels slimy, almost fluid, as if it is about to dissolve on its own. She has been beyond saving for a long time.>', '<The skin of this corpse feels slimy, almost fluid, as if it is about to dissolve on its own. She has been beyond saving for a long time.>', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6255903, '<You are not sure what exactly it is that you''re facing, but judging from the monsters you en encountered so far, it must be something horrifying. Wading through the goop with your hand, your suspicion proves to be correct: in your hand an SI:7 badge. Name: Elroy.>', '<You are not sure what exactly it is that you''re facing, but judging from the monsters you en encountered so far, it must be something horrifying. Wading through the goop with your hand, your suspicion proves to be correct: in your hand an SI:7 badge. Name: Elroy.>', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(6255703, 6255703, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6255803, 6255803, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6255903, 6255903, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6255702, 6255703, 0, 0),
(6255802, 6255803, 0, 0),
(6255902, 6255903, 0, 0);

UPDATE `gossip_menu_option`
SET `action_menu_id` = 6255702,
    `action_script_id` = 6255702,
    `condition_id` = 41694
WHERE `menu_id` = 62557
AND `id` = 0;

UPDATE `gossip_menu_option`
SET `action_menu_id` = 6255802,
    `action_script_id` = 6255802,
    `condition_id` = 41694
WHERE `menu_id` = 62558
AND `id` = 0;

UPDATE `gossip_menu_option`
SET `action_menu_id` = 6255902,
    `action_script_id` = 6255902,
    `condition_id` = 41694
WHERE `menu_id` = 62559
AND `id` = 0;

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
(6255702, 0, 0, 8, 60072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To The Darkest Places - Agent Flynn found'),
(6255802, 0, 0, 8, 60073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To The Darkest Places - Agent Cherys found'),
(6255902, 0, 0, 8, 60074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'To The Darkest Places - Agent Elroy found');

