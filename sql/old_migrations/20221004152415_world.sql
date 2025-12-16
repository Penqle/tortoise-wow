-- Remove random movement from Whirlwind Shredder.
UPDATE `creature` SET `wander_distance`=0, `movement_type`=0 WHERE `id`=11578;
