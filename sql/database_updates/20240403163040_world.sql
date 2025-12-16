-- Item 55336 change display ID to 66456.
update item_template set display_id = 66456 where entry = 55336;
-- Item 55338 change display ID to 27606.
update item_template set display_id = 27606 where entry = 55338;
-- Item 55335 change display ID to 27650.
update item_template set display_id = 27650 where entry = 55335;
-- Item 55335 rename to Netherbane Rod, Item 70190 rename to Plans: Netherbane Rod.
update item_template set name = 'Netherbane Rod' where entry = 55335;
update item_template set name = 'Plans: Netherbane Rod' where entry = 70190;
-- Rename spell 41635 and 41736 to 'Netherbane Rod'.
update spell_template set name = 'Netherbane Rod' where entry = 41635;
-- Item 55333 rename to Shadowmoon Orb, Item 70188 rename to Plans: Shadowmoon Orb.
update item_template set name = 'Shadowmoon Orb' where entry = 55333;
update item_template set name = 'Plans: Shadowmoon Orb' where entry = 70188;
-- Item 55333 change display ID to 24122.
update item_template set display_id = 24122 where entry = 55333;
-- Rename spell 41731, and 41732 to Shadowmoon Orb.
update spell_template set name = 'Shadowmoon Orb' where entry in (41731,41732);

-- Need a new object created called 'Gemstone Deposit' which looks like the model Gemrock01.m2 , this object should require mining 310 and require a mining pick. It should also use the mining animation similar to all other ore deposits.
-- Upon looting the Gemstone deposit should have the following drop tables
-- Loot Group 1 - 55252 (100%)
-- Loot Group 2 - 12361 (15%), 12799 (10%), 12364 (10%), 12800 (10%), 12363 (7.5%)
-- Loot Group 3 - 55250 (25%), 55251 (15%), 7910 (15%)
-- Loot Group 4 - 1529 (20%), 3864 (20%),  7909 (10%)
replace INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020095, 3, 23456, 'Gemstone Deposit', 0, 0, 1, 1650, 2020095, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2020095, 55252, 100, 1, 1, 1, 0),
(2020095, 12361,  15, 2, 1, 1, 0),
(2020095, 12799,  10, 2, 1, 1, 0),
(2020095, 12364,  10, 2, 1, 1, 0),
(2020095, 12800,  10, 2, 1, 1, 0),
(2020095, 12363, 7.5, 2, 1, 1, 0),
(2020095, 55250,  25, 3, 1, 1, 0),
(2020095, 55251,  15, 3, 1, 1, 0),
(2020095,  7910,  15, 3, 1, 1, 0),
(2020095,  1529,  20, 4, 1, 1, 0),
(2020095,  3864,  20, 4, 1, 1, 0),
(2020095,  7909,  10, 4, 1, 1, 0);