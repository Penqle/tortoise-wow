-- Add random movement to Town Crier
DELETE FROM `creature_movement` WHERE `id` = 4185;
UPDATE `creature` SET `movement_type` = 1, `wander_distance` = 20 WHERE `id` = 468;

-- Delete custom spawned Cenarion Hold Infantry
DELETE FROM `creature` WHERE `guid` = 60005;
DELETE FROM `creature` WHERE `guid` = 60004;

-- Correct Cenarion Hold Infantry at Alliance FP
UPDATE `creature` SET `position_x`=-6754.93, `position_y`=755.7, `position_z`=87.689, `orientation`=3.36849 WHERE `guid`=42781; 
UPDATE `creature` SET `position_x`=-6760.2, `position_y`=768.678, `position_z`=88.6902, `orientation`=3.71755 WHERE `guid`=42780; 

-- Delete unused waypoints for Watcher Keefer
-- Uses random movement already
DELETE FROM `creature_movement_template` WHERE `entry` = 495;

-- Ash'ari Crystal should not have random movement
UPDATE `creature` SET `wander_distance` = 0, `movement_type` = 0 WHERE `id` = 10415;
