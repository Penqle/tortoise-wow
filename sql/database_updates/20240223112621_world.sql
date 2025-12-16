-- Item Azuresilk Hood, remove the equip spell effect, reduce intellect to 6.
update item_template set spellid_1 = 0, stat_value1 = 7 where entry = 7048;
-- Item Rough Copper Ring (Entry 55156), change sell value to 5c and buy value to 20c.
update item_template set buy_price = 20, sell_price = 5 where entry = 55156;
-- Item Rough Copper Ring (Entry 55156), remove equipable armor effect, change item to trade goods, and allow it to stack to 10.
update item_template set stackable = 10, inventory_type = 0 where entry = 55156;
-- Item Rough Bronze Ring (Entry 55174), remove equipable armor effect, change item to trade goods, and allow it to stack to 10.
update item_template set stackable = 10, inventory_type = 0 where entry = 55174;
-- Item Earthrock Loop, change moving in inventory (Material) sound to jewelry/ring effect.
update item_template set display_id = 3666, material = 4 where entry = 55176;
-- Item Rough Gemstone Cluster (Entry 81032), change sell value to 20c and buy value to 80c.
update item_template set buy_price = 80, sell_price = 20 where entry = 81032;
-- Item Rough Gemstone Cluster (Entry 81032) should always drop a gem in drop table 1 , currently it is not always dropping a gem.
DELETE FROM `item_loot_template` WHERE `entry` = 81032;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30601, 774,   0, 1, 1, 1, 0), -- Malachite
(30601, 818,   0, 1, 1, 1, 0), -- Tigerseye
(30601, 81094, 0, 1, 1, 1, 0), -- Tigerseye
(30601, 1210,  0, 1, 1, 1, 0); -- Shadowgem

-- Drop table 2 should also give it the possibility of a second drop being possible (with less %).
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(81032, 30601, 100, 1, -30601, 1, 0), -- reference with 100% drop chance.
(81032, 774,   5,  0, 1, 1, 0), -- Malachite
(81032, 818,   10, 0, 1, 1, 0), -- Tigerseye
(81032, 81094, 5,  0, 1, 1, 0), -- Tigerseye
(81032, 1210,  10, 0, 1, 1, 0); -- Shadowgem