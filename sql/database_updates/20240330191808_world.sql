-- Fix some mobs dropping scourgestones without condition.
UPDATE `creature_loot_template` SET `condition_id`=17 WHERE `item`=12840 && `condition_id`=0;
