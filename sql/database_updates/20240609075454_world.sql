-- Add missing durability to farmer items.
UPDATE `item_template` SET `max_durability`=16 WHERE `entry`=51400; -- Farmer's Gloves
UPDATE `item_template` SET `max_durability`=16 WHERE `entry`=51401; -- Farmer's Sash
