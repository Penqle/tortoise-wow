-- Make a new `gameobject` "High Quality Ammo Crate" that looks like a crate placed next to Cannon Master Willey (`creature 10997`).
replace INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020091, 3, 335, 'High Quality Ammo Crate', 0, 0, 1, 1085, 2020091, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Add 4-6 stacks of 200 count of item 13377 to its loot table, 4 at 100%, 2 at 50%.
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2020091;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30602, 13377, 100, 1, 200, 200, 0),
(30603, 13377, 50 , 2, 200, 200, 0);

replace INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2020091, 30602, 100, 1, -30602, 4, 0),
(2020091, 30603, 100, 2, -30603, 2, 0);
-- Remove item 13377 from loot table of creature 10997.
delete from creature_loot_template where entry = 10997 and item = 13377;

-- Make a new `gameobject` "High Quality Ammo Crate" that looks like a crate placed next to Shadow Hunter Vosh'gajin (`creature 9236`).
replace INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020092, 3, 335, 'High Quality Ammo Crate', 0, 0, 1, 1085, 2020092, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Add 4-6 stacks of 200 count of item 12654 to its loot table, 4 at 100%, 2 at 50%.
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2020092;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30604, 12654, 100, 1, 200, 200, 0),
(30605, 12654, 50 , 2, 200, 200, 0);

replace INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2020092, 30604, 100, 1, -30604, 4, 0),
(2020092, 30605, 100, 2, -30605, 2, 0);
-- Remove item 12654 from loot table of creature 9236.
delete from creature_loot_template where entry = 9236 and item = 12654;

-- Item Rough Bronze Ring (Entry 55174), change sell value to 50copper, and the buy value to 2s.
update item_template set buy_price = 200, sell_price = 50 where entry = 55174;
-- Item entry (55250) Emberstone, change sell value to 10s, and buy value to 40s.
update item_template set buy_price = 4000, sell_price = 1000 where entry = 55250;
-- Item entry (55251) Pure Moonstone, change sell value to 10s, and buy value to 40s.
update item_template set buy_price = 4000, sell_price = 1000 where entry = 55251;
-- Item Crystal Quartz (55249) , change display ID to 2516.
update item_template set display_id = 2516 where entry = 55249;
-- Change display ID of Rough Thorium Ring (entry 41321) to 68074.
update item_template set display_id = 68074 where entry = 41321;