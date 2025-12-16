-- Fix quest Hive'Ashi Scout Report.
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(15611, 8064);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(15611, 0, 0, 'I\'m here to retrieve your report.', 11325, 1, 1, -1, 0, 15611, 0, 0, NULL, 0, 8739);
DELETE FROM `gossip_scripts` WHERE `id`=15611;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(15611, 0, 0, 15, 25845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Ashi Scout Report completion spell');
UPDATE `creature_template` SET `gossip_menu_id`=15611 WHERE `entry`=15611;
