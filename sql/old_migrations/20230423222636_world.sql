-- 90007: (90004: Target Is Race (High Elf)) Or (90005: Target Is Exalted Or Better With Faction 269)
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (90007, -2, 90004, 90005, 0, 0, 0);

-- Add gossip texts.
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (18925, NULL, 'You\'ll be purchasing no mount here until you\'ve proven your worth and dedication to our people.$b\nDo not return until you are considered exalted among the high elves. Away with you!', 0, 0, 0, 274, 25, 0, 1, 2, 0);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (10305, 1, 0, 0, 0, 0, 0, 0, 0, 18925, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (17907, NULL, 'Unicorns are noble creatures.  Make sure to always treat yours well; there are fewer things more dangerous than an angry unicorn.', 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`) VALUES (10011, 1, 0, 0, 0, 0, 0, 0, 0, 17907, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (8098, 10011, 0, 90007);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (8098, 10305, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (8098, 0, 1, 'I wish to purchase one of these creatures.', 3, 4, 0, 0, 0, 0, 0, NULL, 90007);
UPDATE `creature_template` SET `gossip_menu_id`=8098, `npc_flags` = (`npc_flags` | 1), `script_name`='' WHERE `entry`=80453;

-- Remove reputation requirement from items.
UPDATE `item_template` SET `required_reputation_faction`=0, `required_reputation_rank`=0 WHERE `entry` IN (80459, 80457, 80458);
