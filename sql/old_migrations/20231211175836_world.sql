-- Make Combat Healing Potion and Combat Mana Potion stack to 10.
UPDATE `item_template` SET `max_count`=10, `stackable`=10 WHERE `entry` IN (18839, 18841);
