-- Remove waypoints from Melris Malagan.
UPDATE `creature` SET `movement_type`=0 WHERE `id`=12480;
DELETE FROM `creature_movement_template` WHERE `entry`=12480;
DELETE FROM `creature_movement_scripts` WHERE `id` IN (12480, 12481, 12482, 12483, 12484, 12485, 12486);

-- Remove waypoints from Orphan Matron Nightingale.
UPDATE `creature` SET `movement_type`=0 WHERE `id`=14450;
DELETE FROM `creature_movement_template` WHERE `entry`=14450;
DELETE FROM `creature_movement_scripts` WHERE `id` IN (14450);
