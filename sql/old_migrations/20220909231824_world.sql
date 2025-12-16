-- 8309: Target Has Quest 8309 In Log
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (8309, 9, 8309, 0, 0, 0, 0);

-- Hive'Regal
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(6561, 7770);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(6561, 0, 0, '<Use the transcription device to gather a rubbing.>', 10752, 1, 1, -1, 0, 6561, 0, 0, NULL, 0, 8309);
DELETE FROM `gossip_scripts` WHERE `id`=6561;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6561, 0, 0, 15, 24807, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Regal Glyphed Crystal - Cast Spell Create Hive\'Regal Rubbing DND');
UPDATE `gameobject_template` SET `script_name`='' WHERE `entry`=180453;

-- Hive\'Ashi
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(6560, 7770);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(6560, 0, 0, '<Use the transcription device to gather a rubbing.>', 10752, 1, 1, -1, 0, 6560, 0, 0, NULL, 0, 8309);
DELETE FROM `gossip_scripts` WHERE `id`=6560;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6560, 0, 0, 15, 24806, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Ashi Glyphed Crystal - Cast Spell Create Hive\'Ashi Rubbing DND');
UPDATE `gameobject_template` SET `script_name`='' WHERE `entry`=180454;

-- Hive'Zora
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(6559, 7770);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`, `condition_id`) VALUES
(6559, 0, 0, '<Use the transcription device to gather a rubbing.>', 10752, 1, 1, -1, 0, 6559, 0, 0, NULL, 0, 8309);
DELETE FROM `gossip_scripts` WHERE `id`=6559;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6559, 0, 0, 15, 24805, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hive\'Zora Glyphed Crystal - Cast Spell Create Hive\'Zora Rubbing DND');
UPDATE `gameobject_template` SET `script_name`='' WHERE `entry`=180455;
