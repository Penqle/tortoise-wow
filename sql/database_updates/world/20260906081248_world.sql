-- ==============================================
-- FILE: a_dark_knight_rises.sql
-- GENERATED: 20260906081248
-- ==============================================
INSERT INTO `event_scripts`
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
(2020170, 0, 0, 22, 14, 3, 0, 0, 2589264, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Sealed Chest - The Dark Knight - Set temporary hostile faction'),
(2020170, 0, 1, 26, 0, 0, 0, 0, 2589264, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Black Sealed Chest - The Dark Knight - Attack player');

UPDATE `quest_template`
SET `NextQuestId` = 41665
WHERE `entry` = 41664;
-- ==============================================
-- FILE: among_the_jousters.sql
-- GENERATED: 20260906081248
-- ==============================================
UPDATE `quest_template`
SET `NextQuestId` = 41664
WHERE `entry` = 41663;

-- ==============================================
-- FILE: darker_than_iron.sql
-- GENERATED: 20260906081248
-- ==============================================
DELETE FROM `creature`
WHERE `guid` IN (
    2599290, 2599291, 2599292, 2599293, 2599294, 2599295, 2599296, 2599330, 2599331, 2599332,
    2599333, 2599334, 2599335, 2599336, 2599349, 2599378, 2599379, 2599380, 2599381, 2599382,
    2599383, 2599384, 2600047, 2600048, 2600049, 2600050, 2600051, 2600052, 2600053, 2600054,
    2600055, 2600056, 2600057, 2600058, 2600059, 2600060, 2600061
    );

DELETE FROM `gameobject`
WHERE `id` = 2000838;

-- ==============================================
-- FILE: deathcap_and_widows_frill.sql
-- GENERATED: 20260906081248
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
(41648, 9, 41648, 1, 0, 0, 0);

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
(6248904, 'Greetings Judith. I am sorry to bother you again, but do you have something personal from one of your children? It may help me locate them', 'Greetings Judith. I am sorry to bother you again, but do you have something personal from one of your children? It may help me locate them', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6248905, 'What? Something Personal? Excuse me, this comes as a bit of a surprise. What on Azeroth would you use it for...? I am sorry, I should not interfere with your work. If you need it, I have this comb of my dear Sara. I brushed her hair just before I left for... Please, bring back my sweet darlings, the thought of Sara and Timothy all frightened breaks my heart!', 'What? Something Personal? Excuse me, this comes as a bit of a surprise. What on Azeroth would you use it for...? I am sorry, I should not interfere with your work. If you need it, I have this comb of my dear Sara. I brushed her hair just before I left for... Please, bring back my sweet darlings, the thought of Sara and Timothy all frightened breaks my heart!', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(6248905, 6248905, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6248905, 6248905, 0, 0);

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
(62489, 1, 0, 'Greetings Judith. I am sorry to bother you again, but do you have something personal from one of your children? It may help me locate them', 6248904, 1, 1, 6248905, 0, 6248904, 0, 0, '', 0, 41648);

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
(6248904, 0, 0, 17, 41695, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41648, 'Deathcap And Widow''s Frill - Judith Flenning - Give Sara''s Comb');

-- ==============================================
-- FILE: empty_houses.sql
-- GENERATED: 20260906081248
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
(41643, 9, 41643, 1, 0, 0, 0);

UPDATE `gossip_menu_option`
SET `action_script_id` = 6248901,
    `condition_id` = 41643
WHERE `menu_id` = 62489
  AND `id` = 0;

UPDATE `gossip_menu_option`
SET `action_script_id` = 6215301,
    `condition_id` = 41643
WHERE `menu_id` = 62153
  AND `id` = 0;

UPDATE `gossip_menu_option`
SET `action_script_id` = 6215401,
    `condition_id` = 41643
WHERE `menu_id` = 62154
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
(6248901, 0, 0, 8, 60068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41643, 'Empty Houses - Judith Flenning - Quest Credit'),
(6215301, 0, 0, 8, 60067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41643, 'Empty Houses - Bailiff Lancaster - Quest Credit'),
(6215401, 0, 0, 8, 60066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41643, 'Empty Houses - Ignatz - Quest Credit');

-- ==============================================
-- FILE: goody_bag.sql
-- GENERATED: 20260906081248
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
(41668, 9, 41668, 1, 0, 0, 0);

UPDATE `gossip_menu_option`
SET `action_menu_id` = 0,
    `action_script_id` = 62146,
    `condition_id` = 41668
WHERE `menu_id` = 62146;

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
(62146, 0, 0, 17, 41737, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41668, 'Goody Bag - Marisa Arello - Give Bundle of Apples');

UPDATE `quest_template`
SET `NextQuestId` = 41669
WHERE `entry` = 41668;
-- ==============================================
-- FILE: in_need_of_shoes.sql
-- GENERATED: 20260906081248
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
(41667, 9, 41667, 1, 0, 0, 0);

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
(8045202, 'I am here to collect the enchanted horseshoes', 'I am here to collect the enchanted horseshoes', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8045203, 'Indeed. I have already received word and payment, they are yours to carry back to where they now belong.', 'Indeed. I have already received word and payment, they are yours to carry back to where they now belong.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(8045202, 8045203, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(8045202, 8045202, 0, 0);

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
(59138, 0, 0, 'I am here to collect the enchanted horseshoes', 8045202, 1, 1, 8045202, 0, 8045202, 0, 0, NULL, 0, 41667);

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
(8045202, 0, 0, 17, 41735, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41667, 'In Need of Shoes - Give Enchanted Horse Shoes');

-- ==============================================
-- FILE: lonesome_arnold.sql
-- GENERATED: 20260906081248
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
(41642, 9, 41642, 1, 0, 0, 0);

UPDATE `gossip_menu_option`
SET `action_menu_id` = -1,
    `action_script_id` = 62492,
    `condition_id` = 41642
WHERE `menu_id` = 62492
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
(62492, 0, 0, 17, 41687, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41642, 'Lonesome Arnold - Give Broken Locket');

-- ==============================================
-- FILE: school_assistance.sql
-- GENERATED: 20260906081248
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
(41637, 9, 41637, 1, 0, 0, 0);

DELETE FROM `gossip_menu`
WHERE `entry` IN (
    62300,62301,62302,62303, 30357, 30360, 30367, 30355
    );

DELETE FROM `gossip_menu_option`
WHERE `menu_id` IN (
    62300, 62301, 62302, 62303, 30357, 30360, 30367, 30355
    );

DELETE FROM `npc_text`
WHERE `ID` IN (
    6230203, 6230204, 6230302, 6230303, 6230002, 6230102, 6230202, 6230001, 6230101, 6230201,
    6230301
    );

DELETE FROM `broadcast_text`
WHERE `entry` IN (
    6230001, 6230002, 6230003, 6230004, 6230005, 6230101, 6230102, 6230103, 6230104, 6230105,
    6230201, 6230202, 6230203, 6230204, 6230205, 6230206, 6230301, 6230302, 6230303, 6230304,
    6230305
    );

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
(6230001, 'When I am all grown up, I''ll be a guard; protecting people, just like my big brother!', 'When I am all grown up, I''ll be a guard; protecting people, just like my big brother!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230002, 'I can''t remember who fought against the pirates... I hope Sister Argent is not mad at me...', 'I can''t remember who fought against the pirates... I hope Sister Argent is not mad at me...', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230003, 'Florien Balor.', 'Florien Balor.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230004, 'Priscilla Balor.', 'Priscilla Balor.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230005, 'Daria Balor.', 'Daria Balor.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230006, 'Yes, it was Duke Balor''s daughter! Thank you very much!', 'Yes, it was Duke Balor''s daughter! Thank you very much!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230101, 'My grandfather used to be mayor, you know. I love him very much, I visit him every Wednesday with my mother!', 'My grandfather used to be mayor, you know. I love him very much, I visit him every Wednesday with my mother!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230102, 'Excuse me, do you know what they found on that island with the... uhm, what was it? Beelor?', 'Excuse me, do you know what they found on that island with the... uhm, what was it? Beelor?', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230103, 'Gold veins.', 'Gold veins.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230104, 'Treasures.', 'Treasures.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230105, 'Heaps of candy.', 'Heaps of candy.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230106, 'Oh! The shiny yellow stones, I saw one of those at the blacksmith once!', 'Oh! The shiny yellow stones, I saw one of those at the blacksmith once!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230107, 'Hehe, you''re funny!', 'Hehe, you''re funny!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230201, 'School is so boring. I''d rather throw some punches with Brick, atleast he knows how to have fun!', 'School is so boring. I''d rather throw some punches with Brick, atleast he knows how to have fun!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230202, 'The others always laugh at me for forgetting the name of Stormwind''s second king. It''s getting embarrassing...', 'The others always laugh at me for forgetting the name of Stormwind''s second king. It''s getting embarrassing...', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230203, 'Theoden Wrynn.', 'Theoden Wrynn.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230204, 'Barathen Wrynn.', 'Barathen Wrynn.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230205, 'Llane Wrynn.', 'Llane Wrynn.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230206, 'Of course! I should really memorize his name. Thank you!', 'Of course! I should really memorize his name. Thank you!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230301, 'Father said I should speak more with the others here at the church, but I am a bit shy...', 'Father said I should speak more with the others here at the church, but I am a bit shy...', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230302, 'I took a small nap during last week''s school and missed who was very close to Duke Balor and Stormwind - can you remind me? I don''t want to disappoint Sister Argent.', 'I took a small nap during last week''s school and missed who was very close to Duke Balor and Stormwind - can you remind me? I don''t want to disappoint Sister Argent.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230303, 'Arnor family.', 'Arnor family.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230304, 'Grahan family.', 'Grahan family.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230305, 'Prestor family.', 'Prestor family.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230306, 'Thank you! Sister Argent is a very nice woman, so I want to do my best to make her smile!', 'Thank you! Sister Argent is a very nice woman, so I want to do my best to make her smile!', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6244701, 'I am the altar boy! Brother Graham said that is a huge responsibility.', 'I am the altar boy! Brother Graham said that is a huge responsibility.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6230099, 'Hm, I''m not sure that''s what it was...', 'Hm, I''m not sure that''s what it was...', 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6230001, 6230001, 0, 0),
(6230001, 6230002, 0, 41637),
(6230003, 6230006, 0, 0),
(6230101, 6230101, 0, 0),
(6230101, 6230102, 0, 41637),
(6230103, 6230107, 0, 0),
(6230104, 6230106, 0, 0),
(6230201, 6230201, 0, 0),
(6230201, 6230202, 0, 41637),
(6230203, 6230206, 0, 0),
(6230301, 6230301, 0, 0),
(6230301, 6230302, 0, 41637),
(6230303, 6230306, 0, 0),
(62447, 6244701, 0, 0),
(6230099, 6230099, 0, 0);

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
(6230001, 6230001, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230002, 6230002, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230006, 6230006, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230101, 6230101, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230102, 6230102, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230106, 6230106, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230107, 6230107, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230201, 6230201, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230202, 6230202, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230206, 6230206, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230301, 6230301, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230302, 6230302, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230306, 6230306, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6244701, 6244701, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6230099, 6230099, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

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
(6230001, 0, 7, 'Florien Balor.', 6230003, 1, 1, 6230099, 0, 0, 0, 0, '', 0, 41637),
(6230001, 1, 7, 'Priscilla Balor.', 6230004, 1, 1, 6230099, 0, 0, 0, 0, '', 0, 41637),
(6230001, 2, 7, 'Daria Balor.', 6230005, 1, 1, 6230003, 0, 6230005, 0, 0, '', 0, 41637),
(6230101, 0, 7, 'Gold veins.', 6230103, 1, 1, 6230104, 0, 6230103, 0, 0, '', 0, 41637),
(6230101, 1, 7, 'Treasures.', 6230104, 1, 1, 6230099, 0, 0, 0, 0, '', 0, 41637),
(6230101, 2, 7, 'Heaps of candy.', 6230105, 1, 1, 6230103, 0, 0, 0, 0, '', 0, 41637),
(6230201, 0, 7, 'Theoden Wrynn.', 6230203, 1, 1, 6230099, 0, 0, 0, 0, '', 0, 41637),
(6230201, 1, 7, 'Barathen Wrynn.', 6230204, 1, 1, 6230203, 0, 6230204, 0, 0, '', 0, 41637),
(6230201, 2, 7, 'Llane Wrynn.', 6230205, 1, 1, 6230099, 0, 0, 0, 0, '', 0, 41637),
(6230301, 0, 7, 'Arnor family.', 6230303, 1, 1, 6230099, 0, 0, 0, 0, '', 0, 41637),
(6230301, 1, 7, 'Grahan family.', 6230304, 1, 1, 6230303, 0, 6230304, 0, 0, '', 0, 41637),
(6230301, 2, 7, 'Prestor family.', 6230305, 1, 1, 6230099, 0, 0, 0, 0, '', 0, 41637);

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
(6230005, 0, 0, 8, 60078, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41637, 'School Assistance - Lloyd - Quest Credit'),
(6230103, 0, 0, 8, 60063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41637, 'School Assistance - Ellie - Quest Credit'),
(6230204, 0, 0, 8, 60064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41637, 'School Assistance - Randolph - Quest Credit'),
(6230304, 0, 0, 8, 60065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41637, 'School Assistance - Tio - Quest Credit');

UPDATE `creature_template`
SET `gossip_menu_id` = 6230001
WHERE `entry` = 62300;

UPDATE `creature_template`
SET `gossip_menu_id` = 6230101
WHERE `entry` = 62301;

UPDATE `creature_template`
SET `gossip_menu_id` = 6230201
WHERE `entry` = 62302;

UPDATE `creature_template`
SET `gossip_menu_id` = 6230301
WHERE `entry` = 62303;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`
WHERE `entry` = 62447;

-- ==============================================
-- FILE: shadows_vision.sql
-- GENERATED: 20260906081248
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
(41684, 9, 41684, 1, 0, 0, 0);

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
(6249002, '<Inspect the body.>', '<Inspect the body.>', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6249003, '<You turn her body to the side, making her face the cavern ceiling. An expression of dread and terror is carved into her young features. Grey and withered eyes complete the traumatic image.>', '<You turn her body to the side, making her face the cavern ceiling. An expression of dread and terror is carved into her young features. Grey and withered eyes complete the traumatic image.>', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(6249003, 6249003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6249002, 6249003, 0, 0);

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
(62490, 0, 0, '<Inspect the body.>', 6249002, 1, 1, 6249002, 0, 6249002, 0, 0, '', 0, 41684);

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
(6249002, 0, 0, 8, 60071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41684, 'Shadow''s Vision - Quest Credit');

-- ==============================================
-- FILE: the_messenger_of_northwind.sql
-- GENERATED: 20260906081248
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
(41768, 9, 41768, 1, 0, 0, 0);

UPDATE `gossip_menu_option`
SET `action_script_id` = 62164,
    `condition_id` = 41768
WHERE `menu_id` = 62164
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
(62164, 0, 0, 17, 41865, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41768, 'The Messenger Of Northwind - Sir Amberwood - Give Sir Amberwood''s Report');

UPDATE `gossip_menu_option`
SET `action_menu_id` = 6215302,
    `condition_id` = 41768
WHERE `menu_id` = 62153
  AND `id` = 1;

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
(6215305, 'As much as it pains me to disappoint our oh so esteemed Lord, I do not have it on me. Anymore atleast. You see, I was at the Plump Pumpkin conversing with Colonel Driscol of Stormwind about the invasion from the Blackrock Orcs. I gained valuable new insight from his investigation, with which I finalized my report. On my way back to Ambershire however, those fiendish Blackrocks ambushed me and killed my bodyguard. The report is now in their hands; it could be on any one of them, I''m afraid. If you wish to bring Lady Prestor that scroll, you have to tear it from their dead hands first.', 'As much as it pains me to disappoint our oh so esteemed Lord, I do not have it on me. Anymore atleast. You see, I was at the Plump Pumpkin conversing with Colonel Driscol of Stormwind about the invasion from the Blackrock Orcs. I gained valuable new insight from his investigation, with which I finalized my report. On my way back to Ambershire however, those fiendish Blackrocks ambushed me and killed my bodyguard. The report is now in their hands; it could be on any one of them, I''m afraid. If you wish to bring Lady Prestor that scroll, you have to tear it from their dead hands first.', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(6215305, 6215305, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6215302, 6215305, 0, 0);

-- ==============================================
-- FILE: who_will_think_of_the_children.sql
-- GENERATED: 20260906081248
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
(41636, 9, 41636, 1, 0, 0, 0);

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
(6229805, 'Take it and get out of Northwind! <Pay 20 Silver.>', 'Take it and get out of Northwind! <Pay 20 Silver.>', 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(6229802, 6229802, 0, 0);

UPDATE `gossip_menu_option`
SET `action_menu_id` = 6229802,
    `condition_id` = 41636
WHERE `menu_id` = 62298
  AND `id` = 0;

UPDATE `gossip_menu_option`
SET `menu_id` = 6229802,
    `action_script_id` = 6229803,
    `condition_id` = 41636
WHERE `menu_id` = 62298
  AND `id` = 1;

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
(6229802, 0, 0, 'Take it and get out of Northwind! <Pay 20 Silver.>', 6229805, 1, 1, 0, 0, 6229802, 0, 2000, '', 0, 41636);

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
(6229802, 0, 0, 93, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41636, 'Who Will Think Of The Children - Cutpurse Warren - Take 20 Silver'),
(6229802, 0, 1, 17, 41606, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41636, 'Who Will Think Of The Children - Cutpurse Warren - Give Crate of Donated Books'),
(6229803, 0, 0, 22, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41636, 'Who Will Think Of The Children - Cutpurse Warren - Set temporary hostile faction'),
(6229803, 0, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41636, 'Who Will Think Of The Children - Cutpurse Warren - Attack player');

-- ==============================================
-- FILE: horde_gossip.sql
-- GENERATED: 20260906081248
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
(6251701, 'Nobody ever visits the Master and your presence here is already both disturbing and annoying. Please, I beg of you, whatever you need, make it quick.', 'Nobody ever visits the Master and your presence here is already both disturbing and annoying. Please, I beg of you, whatever you need, make it quick.', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6227301, 'Hm? You are not Wiggles - damn ghoul ran off when I needed him most. Wiggles, come back, boy!', 'Hm? You are not Wiggles - damn ghoul ran off when I needed him most. Wiggles, come back, boy!', 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `gossip_menu`
(
    `entry`,
    `text_id`,
    `script_id`,
    `condition_id`
)
VALUES
(62273, 6227301, 0, 0),
(62517, 6251701, 0, 0);

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
(6227301, 6227301, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0),
(6251701, 6251701, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0);

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`
WHERE `entry` = 62273;

UPDATE `creature_template`
SET `gossip_menu_id` = `entry`
WHERE `entry` = 62517;
