-- Remove duplicate Stormpike Mine Layer.
DELETE FROM `creature` WHERE `guid`=1247068;
DELETE FROM `creature_movement` WHERE `id`=1247068;
