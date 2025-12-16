-- remove skinning from some mobs
UPDATE `creature_template` SET `skinning_loot_id` = 0 WHERE entry IN(5982, 2565);


