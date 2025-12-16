-- Delete wrong Bael'dun Appraiser spawns in the Barrens.
DELETE FROM `creature` WHERE `guid` IN (2568968, 2568975);

-- Delete wrong Bael'dun Digger spawns in the Barrens.
DELETE FROM `creature` WHERE `guid` IN (2568969, 2568974);

-- Delete wrong Bael'dun Rifleman spawn in the Barrens.
DELETE FROM `creature` WHERE `guid`=2568972;
