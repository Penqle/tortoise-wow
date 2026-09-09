-- ==============================================
-- FILE: dragonfire_bombs.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE `quest_template`
SET `SrcItemCount` = 3
WHERE `entry` = 41806;

-- ==============================================
-- FILE: expelling_evil.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE `creature_template`
SET `scale` = 2.5,
    `spell_list_id` = `entry`
WHERE `entry` = 62585;

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
(41742, 9, 41742, 1, 0, 0, 0);

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
(4190401, '<The fire burns ominously.>', '<The fire burns ominously.>', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4190402, 'Throw the Dust of Conjuration on the fire.', 'Throw the Dust of Conjuration on the fire.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4190403, 'The Flame of Dagoth swirls with magic.', 'The Flame of Dagoth swirls with magic.', 2, 0, 0, 0, 0, 0, 0, 0, 0);

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
(4190401, 4190401, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(41904, 4190401, 0, 0);

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
(41904, 0, 0, 'Throw the Dust of Conjuration on the fire.', 4190402, 1, 1, -1, 0, 4190402, 0, 0, '', 0, 41742);

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
(4190402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4190403, 0, 0, 0, 0, 0, 0, 0, 0, 'Expelling Evil - Flame of Dagnoth Emote'),
(4190402, 3, 0, 10, 62585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -5902.099121, -4878.276367, 228.351318, 0, 0, 'Expelling Evil - Summon Flame of Dagnoth');

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
    `scriptId_2`
)
VALUES
(62585, 'Flame of Dagnoth', 14145, 100, 1, 0, 0, 0, 0, 0, 10, 12, 0, 16046, 100, 1, 0, 0, 0, 3, 3, 15, 15, 0);

-- ==============================================
-- FILE: i_am_become_death.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE `gameobject_template`
SET `flags` = 4
WHERE `entry` = 2020229;

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
(5025863, 2020229, 0, -14616.900390625, 339.44000244140625, 2.6649699211120605, 0.08519410341978073, 0, 0, 0.0425841708, 0.999092883, 300, 300, 100, 1, 0, 0);
-- ==============================================
-- FILE: rebuilding_the_relic.sql
-- GENERATED: 20260908193409
-- ==============================================
INSERT INTO `creature_loot_template`
(
    entry,
    item,
    ChanceOrQuestChance,
    groupid,
    mincountOrRef,
    maxcount,
    condition_id
)
VALUES
(4857, 41800, -100, 0, 1, 1, 0);


-- ==============================================
-- FILE: the_chromatic_servo_motor.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE `creature_template`
SET `gossip_menu_id` = 6256901
WHERE `entry` = 62569;

INSERT INTO `creature_questrelation`
(
    `id`,
    `quest`
)
VALUES
(62569, 41894);

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
(6256901, 'Complicated schematics often require complicated materials. Sometimes more progress can be made by sticking to more reliable, and less complex construction. Unless you''re trying to make something truly groundbreaking I wouldn''t waste time over-engineering a gizmo.', 'Complicated schematics often require complicated materials. Sometimes more progress can be made by sticking to more reliable, and less complex construction. Unless you''re trying to make something truly groundbreaking I wouldn''t waste time over-engineering a gizmo.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(6256901, 6256901, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6256901, 6256901, 0, 0);

INSERT INTO `creature_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(62569, 41894);

-- ==============================================
-- FILE: the_ritual_of_uthokk.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE `quest_template`
SET `StartScript` = 41731
WHERE `entry` = 41731;

UPDATE `creature_template`
SET `gossip_menu_id` = 6243201
WHERE `entry` = 62432;

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
(6243201, 'Can you feel the power here, it drifts upon the air, waiting to be seized.', 'Can you feel the power here, it drifts upon the air, waiting to be seized.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6243202, 'Far Seer Mothand begins the ritual', 'Far Seer Mothand begins the ritual', 2, 0, 0, 0, 0, 0, 0, 0, 0),
(6243203, 'I can feel the power flowing through my veins!', 'I can feel the power flowing through my veins!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6243204, 'It is complete! The power of the Uth''okk is mine! Behold the energy flowing through my veins!', 'It is complete! The power of the Uth''okk is mine! Behold the energy flowing through my veins!', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(6243201, 6243201, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6243201, 6243201, 0, 0);

INSERT INTO `quest_start_scripts`
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
(41731, 0, 2, 4, 147, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Remove NPC Flags'),
(41731, 0, 1, 15, 13236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Cast Nature Channeling'),
(41731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6243202, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Begins Ritual Emote'),
(41731, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6243203, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Say Power Flowing'),
(41731, 18, 0, 5, 0, 13236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Stop Nature Channeling'),
(41731, 18, 1, 15, 51206, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Cast Enrage'),
(41731, 18, 2, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Emote Roar'),
(41731, 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6243204, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Say Ritual Complete'),
(41731, 19, 0, 8, 60079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Give Kill Credit'),
(41731, 20, 1, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Emote Laugh'),
(41731, 20, 0, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Ritual of Uth''okk - Far Seer Mothang - Add NPC Flags');

-- ==============================================
-- FILE: the_skardyn.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE `creature_template`
SET `gossip_menu_id` = 6242101
WHERE `entry` = 62421;

DELETE FROM `conditions`
WHERE `condition_entry` = 41803;

DELETE FROM `gossip_scripts`
WHERE `id` = 6242104;

DELETE FROM `gossip_menu_option`
WHERE `menu_id` IN (6242101, 6242102, 6242103, 6242104);

DELETE FROM `gossip_menu`
WHERE `entry` IN (6242101, 6242102, 6242103, 6242104, 6242105);

DELETE FROM `npc_text`
WHERE `ID` IN (6242101, 6242103, 6242104, 6242105, 6242106);

DELETE FROM `broadcast_text`
WHERE `entry` IN (6242101, 6242102, 6242103, 6242104, 6242105, 6242106, 6242109);

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
(41803, 9, 41803, 1, 0, 0, 0);

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
(6242101, 'A mortal? Here, in Grim Hollow?', 'A mortal? Here, in Grim Hollow?', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6242102, 'Tell me about the Skardyn.', 'Tell me about the Skardyn.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6242103, 'After the civil war between the Bronzebeards, Dark Irons and Wildhammer clan, Thane Khardros of the Wildhammers led his people northward, passing through the barrier gates of Dun Algaz to forge a new kingdom within the mighty mountain of Grim Batol.$B$BBitterness from the war festered like a wound. From his city of Thaurissan in the Redridge Mountains, Sorcerer-Thane Thaurissan of the Dark Irons plotted his vengeance. He unleashed a two-pronged assault against the Bronzebeards and the Wildhammers, seeking to claim all of Khaz Modan. While he marched against Ironforge, his sorceress wife, Modgud, led a separate force to assail the Wildhammers at Grim Batol.', 'After the civil war between the Bronzebeards, Dark Irons and Wildhammer clan, Thane Khardros of the Wildhammers led his people northward, passing through the barrier gates of Dun Algaz to forge a new kingdom within the mighty mountain of Grim Batol.$B$BBitterness from the war festered like a wound. From his city of Thaurissan in the Redridge Mountains, Sorcerer-Thane Thaurissan of the Dark Irons plotted his vengeance. He unleashed a two-pronged assault against the Bronzebeards and the Wildhammers, seeking to claim all of Khaz Modan. While he marched against Ironforge, his sorceress wife, Modgud, led a separate force to assail the Wildhammers at Grim Batol.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6242104, 'Thaurissan''s assault on Ironforge failed, and his forces were driven back. Yet, Modgud, wielding dark sorcery, had greater success. Her war golems battered the gates of Grim Batol, and she summoned living shadows from the depths of the earth to terrorize the dwarves within. The Wildhammers fought valiantly, their spirits unbroken despite the horrors they faced. Thane Khardros, with unyielding resolve, led his warriors into the heart of the battle. It was there, amidst the chaos, that he confronted Modgud herself. With one mighty swing of his hammer, Khardros struck her down, ending her dark reign.', 'Thaurissan''s assault on Ironforge failed, and his forces were driven back. Yet, Modgud, wielding dark sorcery, had greater success. Her war golems battered the gates of Grim Batol, and she summoned living shadows from the depths of the earth to terrorize the dwarves within. The Wildhammers fought valiantly, their spirits unbroken despite the horrors they faced. Thane Khardros, with unyielding resolve, led his warriors into the heart of the battle. It was there, amidst the chaos, that he confronted Modgud herself. With one mighty swing of his hammer, Khardros struck her down, ending her dark reign.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6242105, 'The Wildhammers drove the retreating Dark Irons from their halls, but not all the invaders escaped. Those who delved too deep into Grim Batol''s cursed depths were twisted by Modgud''s vile magic, their bodies and minds corrupted until they became the skardyn - creatures of shadow and malice, far removed from their former selves.$B$BThe curse that befell Grim Batol rendered it uninhabitable, its halls steeped in a darkness so profound that even the Wildhammers could not reclaim their home. The skardyn, however, thrived within this taint, claiming the deepest, darkest reaches of the fortress as their domain. Few knew of their existence, for the Red Dragonflight sealed Grim Batol after Modgud''s fall. For centuries, its darkness was contained - until the Second War, when the Dragonmaw clan made the fortress their stronghold. Even then, the orcs dared only to occupy the upper levels, unwilling to venture into the depths where shadows held dominion.', 'The Wildhammers drove the retreating Dark Irons from their halls, but not all the invaders escaped. Those who delved too deep into Grim Batol''s cursed depths were twisted by Modgud''s vile magic, their bodies and minds corrupted until they became the skardyn - creatures of shadow and malice, far removed from their former selves.$B$BThe curse that befell Grim Batol rendered it uninhabitable, its halls steeped in a darkness so profound that even the Wildhammers could not reclaim their home. The skardyn, however, thrived within this taint, claiming the deepest, darkest reaches of the fortress as their domain. Few knew of their existence, for the Red Dragonflight sealed Grim Batol after Modgud''s fall. For centuries, its darkness was contained - until the Second War, when the Dragonmaw clan made the fortress their stronghold. Even then, the orcs dared only to occupy the upper levels, unwilling to venture into the depths where shadows held dominion.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6242106, 'Now, I fear the darkness has at last seeped into the hearts of the Red Dragonflight defenders who stood watch over Grim Batol. The corruption festering there may have broken their resolve, making it possible for the skardyn to emerge from their realm and spread their malevolence into the world once more.$B$BAs for the powers that cursed Grim Batol and twisted the skardyn into what they have become - this knowledge is lost, even to me. Whatever forces are at work here are older and far mightier than we can comprehend. Take caution, mortal. The darkness within Grim Batol is no ordinary shadow - it is ancient, insidious, and ever hungry.', 'Now, I fear the darkness has at last seeped into the hearts of the Red Dragonflight defenders who stood watch over Grim Batol. The corruption festering there may have broken their resolve, making it possible for the skardyn to emerge from their realm and spread their malevolence into the world once more.$B$BAs for the powers that cursed Grim Batol and twisted the skardyn into what they have become - this knowledge is lost, even to me. Whatever forces are at work here are older and far mightier than we can comprehend. Take caution, mortal. The darkness within Grim Batol is no ordinary shadow - it is ancient, insidious, and ever hungry.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6242109, '<Continue>', '<Continue>', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(6242101, 6242101, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6242103, 6242103, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6242104, 6242104, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6242105, 6242105, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6242106, 6242106, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6242101, 6242101, 0, 0),
(6242102, 6242103, 0, 0),
(6242103, 6242104, 0, 0),
(6242104, 6242105, 0, 0),
(6242105, 6242106, 0, 0);

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
(6242101, 0, 0, 'Tell me about the Skardyn.', 6242102, 1, 1, 6242102, 0, 0, 0, 0, '', 0, 41803),
(6242102, 0, 0, '<Continue>', 6242109, 1, 1, 6242103, 0, 0, 0, 0, '', 0, 0),
(6242103, 0, 0, '<Continue>', 6242109, 1, 1, 6242104, 0, 0, 0, 0, '', 0, 0),
(6242104, 0, 0, '<Continue>', 6242109, 1, 1, 6242105, 0, 6242104, 0, 0, '', 0, 0);

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
(6242104, 0, 0, 8, 60081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41803, 'The Skardyn - Listen to Sarthyss');

-- ==============================================
-- FILE: to_cure_the_whithered.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE `quest_template`
SET `SpecialFlags` = `SpecialFlags` | 2
WHERE `entry` = 41848;

INSERT INTO `areatrigger_involvedrelation`
(
    `id`,
    `quest`
)
VALUES
(5601, 41848);
-- ==============================================
-- FILE: tomb_of_ancestors.sql
-- GENERATED: 20260908193409
-- ==============================================
UPDATE quest_template
SET SpecialFlags = SpecialFlags | 2
WHERE entry = 41802;

INSERT INTO areatrigger_involvedrelation
(
    id,
    quest
)
VALUES
(700, 41802);
