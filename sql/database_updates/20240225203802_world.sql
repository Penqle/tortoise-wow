-- Fix Eye of Divinity and Ancient Petrified Leaf not dropping.
UPDATE `gameobject_loot_template` SET `groupid`=2, `condition_id`=0 WHERE `entry`=16719 && `item` IN (18646, 18703);

