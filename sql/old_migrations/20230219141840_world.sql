-- Add Missing Creatures
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
(3526, 16005, 0, 0, 0, 0, -8813.1, 613.857, 95.2532, 3.15905, 120, 120, 0, 100, 100, 0, 0, 0),
(3527, 16007, 0, 0, 0, 1, 1617.32, -4399.98, 11.5139, 2.94961, 120, 120, 0, 100, 100, 0, 0, 0),
(3528, 16008, 0, 0, 0, 1, -1268.37, 49.4112, 128.258, 5.51524, 120, 120, 0, 100, 100, 0, 0, 0),
(3529, 16009, 0, 0, 0, 0, -4918.69, -971.674, 501.555, 2.11185, 120, 120, 0, 100, 100, 0, 0, 0);

INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(3526, 8),
(3527, 8),
(3528, 8),
(3529, 8);

-- Quests 9024 and 9025 Should be Chained
UPDATE `quest_template` SET `NextQuestInChain` = 9025 WHERE `entry` = 9024;

-- Add Missing Gossips
UPDATE `creature_template` SET `gossip_menu_id` = 7081 WHERE `entry` = 1328;
UPDATE `creature_template` SET `gossip_menu_id` = 6959 WHERE `entry` = 1402;
UPDATE `creature_template` SET `gossip_menu_id` = 6976 WHERE `entry` = 1405;
UPDATE `creature_template` SET `gossip_menu_id` = 6976 WHERE `entry` = 1719;
UPDATE `creature_template` SET `gossip_menu_id` = 6981 WHERE `entry` = 1750;
UPDATE `creature_template` SET `gossip_menu_id` = 6976 WHERE `entry` = 3628;
UPDATE `creature_template` SET `gossip_menu_id` = 6976 WHERE `entry` = 7917;
UPDATE `creature_template` SET `gossip_menu_id` =  7017 WHERE `entry` = 11750;
UPDATE `creature_template` SET `gossip_menu_id` =  7081 WHERE `entry` = 12805;
UPDATE `creature_template` SET `gossip_menu_id` =  6981 WHERE `entry` = 16002;

-- NOTE: MOST OF THESE TEXT_ID's ARE PLACEHOLDERS
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(7081, 8245, 461),
(7081, 8282, 459),
(7081, 8285, 454),
(7081, 8286, 458),
(7081, 8296, 460),
(7081, 8298, 455);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(6959, 8235, 461),
(6959, 8293, 459),
(6959, 8285, 454),
(6959, 8295, 458),
(6959, 8296, 460),
(6959, 8294, 455);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(6976, 8235, 461),
(6976, 8284, 459),
(6976, 8285, 454),
(6976, 8291, 458),
(6976, 8242, 460),
(6976, 8290, 455);

INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(6981, 8245, 461),
(6981, 8282, 459),
(6981, 8285, 454),
(6981, 8286, 458),
(6981, 8243, 460),
(6981, 8298, 455);

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(7081, 1, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 402, 0, 0, NULL, 0, 462),
(7081, 2, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 403, 0, 0, NULL, 0, 461);

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(6959, 1, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 402, 0, 0, NULL, 0, 462),
(6959, 2, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 403, 0, 0, NULL, 0, 461);

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(6976, 1, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 402, 0, 0, NULL, 0, 462),
(6976, 2, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 403, 0, 0, NULL, 0, 461);

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(6981, 1, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 402, 0, 0, NULL, 0, 462),
(6981, 2, 0, 'Here, I\'d like to give you this token of my love.', 11723, 1, 1, -1, 0, 403, 0, 0, NULL, 0, 461);

-- Add missing texts.
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (8293, 11801, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (8294, 11802, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`) VALUES (8295, 11803, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (7017, 8270, 461);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (7017, 8283, 459);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (7017, 8285, 454);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (7017, 8290, 455);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (7017, 8291, 458);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (7017, 8296, 460);
UPDATE `gossip_menu` SET `condition_id`=0 WHERE `entry`=6981 && `text_id`=8245;

-- Enable Love Fool.
DELETE FROM `spell_disabled` WHERE `entry`=27661;

-- Remove events from Renato Gallina
DELETE FROM `creature_ai_events` WHERE `creature_id`=1432;
DELETE FROM `creature_ai_scripts` WHERE `id` IN (3001078);
UPDATE `creature_template` SET `ai_name`='' WHERE `entry`=1432;
