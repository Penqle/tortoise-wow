-- Fix duplicate Cla'ckora creatures.
DELETE FROM `creature_template` WHERE `entry`=59963;
UPDATE `creature_template` SET `entry`=59963, `spell_list_id`=599630, `loot_id`=59963 WHERE `entry`=61993;
UPDATE `creature_loot_template` SET `entry`=59963 WHERE `entry`=61993;
UPDATE `creature` SET `id`=59963 WHERE `id`=61993;

