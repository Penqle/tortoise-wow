-- Gossip script for Terry Palin.
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES (50050, 90338, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (50050, 0, 1, 'I want to browse your goods.', 3370, 3, 4, 0, 0, 0, 0, 0, NULL, 0, 0);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES (50050, 1, 0, 'Do you know anything about stolen pumpkins?', 0, 1, 1, -1, 0, 50050, 0, 0, NULL, 0, 60041);
DELETE FROM `gossip_scripts` WHERE `id`=50050;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(50050, 0, 0, 8, 51299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terry Palin - Quest Credit for The Pumpkin Thieves');
-- 60041: Target Has Quest 60041 In Log
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (60041, 9, 60041, 0, 0, 0, 0);
UPDATE `creature_template` SET `npc_flags`=7, `gossip_menu_id`=50050, `script_name`='' WHERE `entry`=1650;
