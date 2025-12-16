-- https://turtle-wow.org/bug-report?id=7277 Item Mageweave Cloth removed from loot of NPCs Gibbering Ghoul and Scourge Warder.
delete from creature_loot_template where item = 4338 and entry in (8525,8531);
-- https://turtle-wow.org/bug-report?id=6932 Item Earthclad Brasers have vendor price now.
update item_template set buy_price = 52082, sell_price = 10416 where entry = 80851;
-- https://turtle-wow.org/bug-report?id=7270 NPC Moonstalker Matriarch stuck in the tree in the Darkshore is free now.
update creature set position_x = 7736.90, position_y = -1063.71, position_z = 38.11 where guid = 36959;
-- https://turtle-wow.org/bug-report?id=7226 Item Recipe: Elixir of Minor Agility can now be stolen from the relevant NPCs.
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ( 485, 2553, 4  , 0, 1, 1, 0);
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ( 580, 2553, 0.5, 0, 1, 1, 0);
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ( 657, 2553, 0.5, 0, 1, 1, 0);
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ( 824, 2553, 0.4, 0, 1, 1, 0);
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (3207, 2553, 0.9, 0, 1, 1, 0);
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (3276, 2553, 0.9, 0, 1, 1, 0);
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (3280, 2553, 3  , 0, 1, 1, 0);
replace into `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (3283, 2553, 0.3, 0, 1, 1, 0);