-- Fix Thurman Mullby's gossip.
DELETE FROM `npc_text` WHERE `ID` IN (1285, 41083);
DELETE FROM `gossip_menu` WHERE `entry`=41083;
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (687, 1237, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id`=687 WHERE `entry`=1285;
