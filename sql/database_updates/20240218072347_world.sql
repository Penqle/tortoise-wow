-- Remove alchemy requirement for Recipe: Major Mana Potion to drop.
UPDATE `creature_loot_template` SET `condition_id`=0 WHERE `entry`=1853 AND `item`=13501 AND `groupid`=0;


