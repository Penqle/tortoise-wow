-- Move dormillion's gossip script for Into the Dream I to database.
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (40961, 9, 40961, 1, 0, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (47031, 30117, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (47032, 30118, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (47033, 30119, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (47034, 30120, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (47035, 30121, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (47036, 30122, 0, 0);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=41396;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (41396, 0, 0, 'Tell me your tale Ralathius.', 0, 1, 1, 47031, 0, 0, 0, 0, NULL, 0, 40957);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (41396, 1, 0, 'I’m ready. Start the ritual.', 0, 1, 1, -1, 0, 41396, 0, 0, NULL, 0, 40961);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (47031, 0, 0, '<Continue the story.>', 0, 1, 1, 47032, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (47032, 0, 0, '<Continue the story.>', 0, 1, 1, 47033, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (47033, 0, 0, '<Continue the story.>', 0, 1, 1, 47034, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (47034, 0, 0, '<Continue the story.>', 0, 1, 1, 47035, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (47035, 0, 0, '<Continue the story.>', 0, 1, 1, 47036, 0, 47035, 0, 0, NULL, 0, 0);
DELETE FROM `gossip_scripts` WHERE `id`=47035;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(47035, 0, 0, 8, 60044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream 1: Grant Kill Credit');

-- The quest id of Into the Dream V was changed, and it has different quest credit.
DELETE FROM `generic_scripts` WHERE `id`=4139602;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(4139602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65017, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(4139602, 3, 0, 10, 61545, 54000, 1, 30, 0, 0, 0, 0, 8, 0, -1, 2, 5527.98, -3700.56, 1595.89, 0.41, 0, 'Into the Dream: Ralathius - Summon Creature Ysera'),
(4139602, 3, 0, 10, 61546, 54000, 1, 30, 0, 0, 0, 0, 8, 0, -1, 2, 5528.81, -3694.41, 1595.86, 5.63, 0, 'Into the Dream: Ralathius - Summon Creature Ursoc'),
(4139602, 3, 0, 10, 61547, 54000, 1, 30, 0, 0, 0, 0, 8, 0, -1, 2, 5533.4, -3703.88, 1596.73, 1.34, 0, 'Into the Dream: Ralathius - Summon Creature Goldrinn'),
(4139602, 4, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65018, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65019, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(4139602, 14, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65020, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65021, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(4139602, 24, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65022, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 29, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65023, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 34, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65024, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 39, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65025, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 44, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65026, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 49, 0, 0, 0, 0, 0, 0, 61546, 30, 8, 2, 65027, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ursoc - Say Text'),
(4139602, 54, 0, 0, 0, 0, 0, 0, 61545, 30, 8, 2, 65028, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ysera - Say Text'),
(4139602, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65029, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(4139602, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65030, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Say Text'),
(4139602, 60, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Stop Casting'),
(4139602, 61, 0, 8, 60045, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Give Kill Credit to Player'),
(4139602, 62, 0, 4, 147, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Into the Dream: Ralathius - Add NPC Flags');

