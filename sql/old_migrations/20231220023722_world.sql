UPDATE `item_template` SET `buy_price` = 6000 WHERE `entry` IN (81417, 81416, 81418);

UPDATE `item_template` SET `name` = 'Runed Mithril Hammer', `buy_price` = 25141, `sell_price` = 12576 WHERE `entry` = 7946;
UPDATE `item_template` SET `name` = 'Dark Iron Leggings',   `buy_price` = 42165, `sell_price` = 17013 WHERE `entry` = 17013;

-- Item Greatfather's Boots needs its buy value set to 1g, sell value set to 50s
-- Item Mistletoe Gown needs its buy value set to 1g, sell value set to 50s

UPDATE `item_template` SET `name` = 'Mistletoe Gown', `sell_price` = 5000, `buy_price` = 10000 WHERE `entry` = 41086;
UPDATE `item_template` SET `name` = 'Greatfather\'s Boots', `sell_price` = 5000, `buy_price` = 10000 WHERE `entry` = 41096;
