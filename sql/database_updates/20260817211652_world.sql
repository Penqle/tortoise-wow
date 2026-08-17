-- Northwind quest fixes (PR #390): single consolidated migration, safe to re-apply.

-- 1) Empty Houses (41643): interrogation credit, active-quest gating
DELETE FROM `gossip_scripts` WHERE `id` IN (62489, 62153, 62154);

INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `target_type`, `comments`) VALUES
(62489, 0, 0, 1, 18,    0, 0, 'Judith Flenning - Cry emote on interrogation'),
(62489, 0, 1, 8, 60068, 0, 0, 'Judith Flenning - Quest 41643 objective credit'),
(62153, 0, 0, 8, 60067, 0, 0, 'Bailiff Lancaster - Quest 41643 objective credit'),
(62154, 0, 0, 8, 60066, 0, 0, 'Ignatz - Quest 41643 objective credit');

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES
(41643, 9, 41643, 1, 0, 0, 0),
(41768, 9, 41768, 1, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type`=VALUES(`type`), `value1`=VALUES(`value1`), `value2`=VALUES(`value2`), `flags`=VALUES(`flags`);

UPDATE `gossip_menu_option` SET `action_script_id` = 62489, `condition_id` = 41643 WHERE `menu_id` = 62489 AND `id` = 0;
UPDATE `gossip_menu_option` SET `action_script_id` = 62153, `condition_id` = 41643 WHERE `menu_id` = 62153 AND `id` = 0;
UPDATE `gossip_menu_option` SET `condition_id` = 41768                             WHERE `menu_id` = 62153 AND `id` = 1;
UPDATE `gossip_menu_option` SET `action_script_id` = 62154, `condition_id` = 41643 WHERE `menu_id` = 62154 AND `id` = 0;
UPDATE `gossip_menu_option` SET `condition_id` = 41768                             WHERE `menu_id` = 62164 AND `id` = 0;

-- 2) Cutpurse Warren (41636): crate deal - pay 20s or threaten, one-time
-- drop legacy auto-increment condition ids first (idempotency)
DELETE FROM `conditions` WHERE `type` = 9 AND `value1` = 41636 AND `value2` = 1 AND `flags` = 0;
DELETE FROM `conditions` WHERE `type` = 2 AND `value1` = 41606 AND `value2` = 1 AND `flags` = 1;
DELETE FROM `conditions` WHERE `type` = -1 AND `value1` IN (1678804, 41636) AND `value2` IN (1678815, 4163601);

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES
(41636, 9, 41636, 1, 0, 0, 0),
(4163601, 2, 41606, 1, 0, 0, 1),
(4163602, -1, 41636, 4163601, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type`=VALUES(`type`), `value1`=VALUES(`value1`), `value2`=VALUES(`value2`), `value3`=VALUES(`value3`), `value4`=VALUES(`value4`), `flags`=VALUES(`flags`);

DELETE FROM `npc_vendor` WHERE `entry` = 62298 AND `item` = 41606;
UPDATE `creature_template` SET `npc_flags` = `npc_flags` & ~128 WHERE `entry` = 62298;
UPDATE `item_template` SET `buy_price` = 0 WHERE `entry` = 41606 AND `buy_price` = 2000;

DELETE FROM `gossip_scripts` WHERE `id` IN (6229805, 6229806);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (62298, 30348);

INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(6229805, 0, 0, 22, 14, 3, 'Cutpurse Warren threat: become hostile and attack'),
(6229805, 0, 1, 26, 0, 0, 'Cutpurse Warren threat: attack the player');

INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `comments`) VALUES
(6229806, 0, 0, 17, 41606, 1, 2000, 8, 'Cutpurse Warren deal: charge 20 silver and create the donated-books crate');

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(62298, 0, 7, 'Hand over the crate with donations from Stormwind!', 6229801, 1, 1, 30348, 0, 0, 0, 0, '', 0, 4163602),
(30348, 0, 6, 'Take it and get out of Northwind <Pay 20 silver>', 0, 1, 1, -1, 0, 6229806, 0, 0, '', 0, 4163602),
(30348, 1, 7, 'As if! Today you''ll draw your last breath!', 0, 1, 1, -1, 0, 6229805, 0, 0, '', 0, 4163602)
ON DUPLICATE KEY UPDATE `option_text`=VALUES(`option_text`), `action_menu_id`=VALUES(`action_menu_id`), `action_script_id`=VALUES(`action_script_id`), `condition_id`=VALUES(`condition_id`);

-- 3) Messenger of Northwind (41768): report items, close window
DELETE FROM `gossip_scripts` WHERE `id` IN (6216401, 6215301);

INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(6216401, 0, 0, 17, 41865, 1, 'Sir Amberwood - Quest 41768: give Sir Amberwood''s Report'),
(6215301, 0, 0, 17, 41866, 1, 'Bailiff Lancaster - Quest 41768: give Bailiff Lancaster''s Report');

UPDATE `gossip_menu_option` SET `action_script_id` = 6216401 WHERE `menu_id` = 62164 AND `id` = 0;
UPDATE `gossip_menu_option` SET `action_script_id` = 6215301, `action_menu_id` = -1 WHERE `menu_id` = 62153 AND `id` = 1;

-- 4) School Assistance (41637): quiz objective credit
DELETE FROM `gossip_scripts` WHERE `id` IN (62300, 62301, 62302, 62303);

INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(62300, 0, 0, 8, 60078, 0, 'Lloyd - Quest 41637 objective credit (Daria Balor)'),
(62301, 0, 0, 8, 60063, 0, 'Ellie - Quest 41637 objective credit (Gold veins)'),
(62302, 0, 0, 8, 60064, 0, 'Randolph - Quest 41637 objective credit (Barathen Wrynn)'),
(62303, 0, 0, 8, 60065, 0, 'Tio - Quest 41637 objective credit (Prestor family)');

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES
(41637, 9, 41637, 1, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type`=VALUES(`type`), `value1`=VALUES(`value1`), `value2`=VALUES(`value2`), `flags`=VALUES(`flags`);

UPDATE `gossip_menu_option` SET `action_script_id` = 62300, `condition_id` = 41637 WHERE `menu_id` = 62300 AND `id` = 2;
UPDATE `gossip_menu_option` SET `action_script_id` = 62301, `condition_id` = 41637 WHERE `menu_id` = 62301 AND `id` = 0;
UPDATE `gossip_menu_option` SET `action_script_id` = 62302, `condition_id` = 41637 WHERE `menu_id` = 62302 AND `id` = 1;
UPDATE `gossip_menu_option` SET `action_script_id` = 62303, `condition_id` = 41637 WHERE `menu_id` = 62303 AND `id` = 2;

-- 5) Randolph (41637): drop duplicate quiz options
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 62302 AND `id` IN (3, 4);

-- 6) Quiz (41637): try-again replies, Tio validation text
UPDATE `gossip_menu_option` SET `action_menu_id` = 30355 WHERE `menu_id` = 62300 AND `id` IN (0, 1);
UPDATE `gossip_menu_option` SET `action_menu_id` = 30355 WHERE `menu_id` = 62301 AND `id` IN (1, 2);
UPDATE `gossip_menu_option` SET `action_menu_id` = 30355 WHERE `menu_id` = 62302 AND `id` IN (0, 2);
UPDATE `gossip_menu_option` SET `action_menu_id` = 30355 WHERE `menu_id` = 62303 AND `id` IN (0, 1);

INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`)
VALUES (6230306, 'Yes, it was the Prestor family! Thank you for reminding me!', 'Yes, it was the Prestor family! Thank you for reminding me!', 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `male_text`=VALUES(`male_text`), `female_text`=VALUES(`female_text`);

INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES (6230304, 6230306)
ON DUPLICATE KEY UPDATE `BroadcastTextID0`=VALUES(`BroadcastTextID0`);

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (30356, 6230304)
ON DUPLICATE KEY UPDATE `text_id`=VALUES(`text_id`);

UPDATE `gossip_menu_option` SET `action_menu_id` = 30356 WHERE `menu_id` = 62303 AND `id` = 2;

-- 7) Quiz (41637): gate options, Ellie joke reply
UPDATE `gossip_menu_option` SET `condition_id` = 41637 WHERE `menu_id` = 62300 AND `id` IN (0, 1);
UPDATE `gossip_menu_option` SET `condition_id` = 41637 WHERE `menu_id` = 62301 AND `id` IN (1, 2);
UPDATE `gossip_menu_option` SET `condition_id` = 41637 WHERE `menu_id` = 62302 AND `id` IN (0, 2);
UPDATE `gossip_menu_option` SET `condition_id` = 41637 WHERE `menu_id` = 62303 AND `id` IN (0, 1);

INSERT INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`)
VALUES (6230106, 'Hehe, you''re funny!', 'Hehe, you''re funny!', 0, 0, 0, 0, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `male_text`=VALUES(`male_text`), `female_text`=VALUES(`female_text`);

INSERT INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES (6230104, 6230106)
ON DUPLICATE KEY UPDATE `BroadcastTextID0`=VALUES(`BroadcastTextID0`);

INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (30358, 6230104)
ON DUPLICATE KEY UPDATE `text_id`=VALUES(`text_id`);

UPDATE `gossip_menu_option` SET `action_menu_id` = 30358 WHERE `menu_id` = 62301 AND `id` = 2;

-- 8) Balor lore books: link page chains (50734-50757)
UPDATE `page_text` SET `next_page` = `entry` + 1 WHERE `entry` BETWEEN 50734 AND 50746;
UPDATE `page_text` SET `next_page` = `entry` + 1 WHERE `entry` BETWEEN 50748 AND 50756;

-- 9) Deathcap And Widow's Frill (41648): Sara's Comb from corpse
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES
(41648, 9, 41648, 1, 0, 0, 0)
ON DUPLICATE KEY UPDATE `type`=VALUES(`type`), `value1`=VALUES(`value1`), `value2`=VALUES(`value2`), `flags`=VALUES(`flags`);

INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(62490, 0, 0, 17, 41695, 1, 'Sara Flenning corpse - Quest 41648: give Sara''s Comb');

INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(62490, 0, 0, 'Search the body for anything useful.', 0, 1, 1, -1, 0, 62490, 0, 0, '', 0, 41648)
ON DUPLICATE KEY UPDATE `option_text`=VALUES(`option_text`), `action_menu_id`=VALUES(`action_menu_id`), `action_script_id`=VALUES(`action_script_id`), `condition_id`=VALUES(`condition_id`);

-- 10) Shadow's Vision (41684): native kill credit
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 62265 WHERE `entry` = 41684;

-- 11) Cleanup: drop reverted quest-based crate deal (41839)
DELETE FROM `creature_involvedrelation` WHERE `quest` = 41839;
DELETE FROM `creature_questrelation` WHERE `quest` = 41839;
DELETE FROM `quest_template` WHERE `entry` = 41839;
