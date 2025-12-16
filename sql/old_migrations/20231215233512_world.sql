-- Add directions to Thalassian Sentinel.
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (61770, 933, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (61771, 933, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (61772, 933, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (61774, 933, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES 
(61770, 0, 0, 'Class Trainer', 0, 1, 1, 61771, 0, 0, 0, 0, NULL, 0, 0),
(61770, 1, 0, 'Profession Trainer', 0, 1, 1, 61772, 0, 0, 0, 0, NULL, 0, 0),
(61770, 2, 0, 'Other Directions', 0, 1, 1, 61774, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`) VALUES 
(61771, 0, 0, 'Warrior Trainer', 0, 1, 1, -1, 10001),
(61771, 1, 0, 'Paladin Trainer', 0, 1, 1, -1, 10003),
(61771, 2, 0, 'Hunter Trainer', 0, 1, 1, -1, 10019),
(61771, 3, 0, 'Rogue Trainer', 0, 1, 1, -1, 10013),
(61771, 4, 0, 'Priest Trainer', 0, 1, 1, -1, 10002),
(61771, 5, 0, 'Mage Trainer', 0, 1, 1, -1, 10006),
(61772, 0, 0, 'Cooking Trainer', 0, 1, 1, -1, 10009),
(61772, 1, 0, 'Fishing Trainer', 0, 1, 1, -1, 10004),
(61772, 2, 0, 'Enchanting Trainer', 0, 1, 1, -1, 10005),
(61772, 3, 0, 'Alchemy Trainer', 0, 1, 1, -1, 10010),
(61772, 4, 0, 'Leatherworking Trainer', 0, 1, 1, -1, 10014),
(61772, 5, 0, 'Skinning Trainer', 0, 1, 1, -1, 10015),
(61772, 6, 0, 'Tailoring Trainer', 0, 1, 1, -1, 10016),
(61772, 7, 0, 'Herbalism Trainer', 0, 1, 1, -1, 10017),
(61772, 8, 0, 'Engineering Trainer', 0, 1, 1, -1, 10007),
(61772, 9, 0, 'Mining Trainer', 0, 1, 1, -1, 10020),
(61774, 0, 0, 'Innkeeper', 0, 1, 1, -1, 10008),
(61774, 1, 0, 'Auctioneer', 0, 1, 1, -1, 10011),
(61774, 2, 0, 'Bank', 0, 1, 1, -1, 10012),
(61774, 3, 0, 'Silvermoon Quartermaster', 0, 1, 1, -1, 10018);
INSERT INTO `points_of_interest` (`entry`, `icon_name`, `x`, `y`, `icon`, `flags`, `data`) VALUES 
(10001, 'Warrior Trainer', 3781, -2368, 6, 99, 0),
(10002, 'Priest Trainer', 3915, -2373, 6, 99, 0),
(10003, 'Paladin Trainer', 3915, -2373, 6, 99, 0),
(10004, 'Fishing Trainer', 4073, -2408, 6, 99, 0),
(10005, 'Enchanting Trainer', 4096, -2809, 6, 99, 0),
(10006, 'Mage Trainer', 4096, -2809, 6, 99, 0),
(10007, 'Engineering Trainer', 4096, -2809, 6, 99, 0),
(10008, 'Innkeeper', 4158, -2716, 6, 99, 0),
(10009, 'Cooking Trainer', 4158, -2716, 6, 99, 0),
(10010, 'Alchemy Trainer', 4276, -2738, 6, 99, 0),
(10011, 'Auctioneer', 4271, -2839, 6, 99, 0),
(10012, 'Bank', 4271, -2839, 6, 99, 0),
(10013, 'Rogue Trainer', 4345, -2923, 6, 99, 0),
(10014, 'Leatherworking Trainer', 4455, -2839, 6, 99, 0),
(10015, 'Skinning Trainer', 4455, -2839, 6, 99, 0),
(10016, 'Tailoring Trainer', 4446, -3083, 6, 99, 0),
(10017, 'Herbalism Trainer', 4361, -3101, 6, 99, 0),
(10018, 'Silvermoon Quartermaster', 4307, -3045, 6, 99, 0),
(10019, 'Hunter Trainer', 4238, -2769, 6, 99, 0),
(10020, 'Mining Trainer', 4244, -2794, 6, 99, 0);
UPDATE `creature_template` SET `gossip_menu_id`=61770, `npc_flags`=1 WHERE `entry`=61770;

