-- Delete wrong AV spawns in the middle.
DELETE FROM `creature` WHERE `id` IN (20110, 20111, 20112);
DELETE FROM `creature_template` WHERE `entry` IN (20110, 20111, 20112);
