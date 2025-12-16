-- Remove failure condition from In Dreams script after reaching the tower.
UPDATE `creature_movement_scripts` SET `dataint3`=0 WHERE `command`=69 && `id`=184232;
DELETE FROM `generic_scripts` WHERE `command`=69 && `id`=6609;
