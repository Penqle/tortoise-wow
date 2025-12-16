-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2922
UPDATE `item_template` SET `sell_price` = 1632, `buy_price` = 8161, `item_level` = 27 WHERE `entry` = 81113;
UPDATE `item_template` SET `sell_price` = 2632, `buy_price` = 9161, `item_level` = 27 WHERE `entry` = 81110;
-- Make The unsent letter https://database.turtle-wow.org/?item=2874 lootable by alliance only.
update creature_loot_template set condition_id = 3 where item = 2874;