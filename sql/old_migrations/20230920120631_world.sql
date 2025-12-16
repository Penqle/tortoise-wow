-- Senani Thunderheart
UPDATE `gossip_menu` SET `entry`=4346 WHERE `entry`=1000;
UPDATE `gossip_menu_option` SET `menu_id`=4346 WHERE `menu_id`=1000;
UPDATE `gossip_menu_option` SET `action_menu_id`=4346 WHERE `action_menu_id`=1000;
UPDATE `gossip_menu` SET `entry`=4381 WHERE `entry`=1001;
UPDATE `gossip_menu_option` SET `menu_id`=4381 WHERE `menu_id`=1001;
UPDATE `gossip_menu_option` SET `action_menu_id`=4381 WHERE `action_menu_id`=1001;
UPDATE `gossip_menu` SET `entry`=4383 WHERE `entry`=1002;
UPDATE `gossip_menu_option` SET `menu_id`=4383 WHERE `menu_id`=1002;
UPDATE `gossip_menu_option` SET `action_menu_id`=4383 WHERE `action_menu_id`=1002;
UPDATE `gossip_menu` SET `entry`=4382 WHERE `entry`=1003;
UPDATE `gossip_menu_option` SET `menu_id`=4382 WHERE `menu_id`=1003;
UPDATE `gossip_menu_option` SET `action_menu_id`=4382 WHERE `action_menu_id`=1003;
UPDATE `creature_template` SET `gossip_menu_id`=4346 WHERE `entry`=12696;

-- Fix Curgle Cranklehop's gossip menu.
UPDATE `gossip_menu_option` SET `action_menu_id`=943 WHERE `menu_id`=942 && `id`=0;
UPDATE `gossip_menu_option` SET `action_menu_id`=1002 WHERE `menu_id`=942 && `id`=1;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(943, 1521),
(1002, 1646);

-- Remove wrong race requirement from The Super Egg-O-Matic.
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry`=2741;
