-- Item Voidheart Charm (55200), make bind on equip.
update item_template set bonding = 2 where entry = 55200;
-- Item Runebound Amulet (55204), make bind on equip.
update item_template set bonding = 2 where entry = 55204;

-- Guard direction map marker for Orgrimmar should be called "Asoran's Jewelry House" instead of "Orgrimmar Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Asoran\'s Jewelry House' where entry = 2004;
-- Guard direction map marker for Undercity should be called "Undercity Jewelcrafting Trainer" instead of "Ironforge Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Undercity Jewelcrafting Trainer' where entry = 2001;
-- Guard direction map marker for Ironforge should be called "Ironforge Jewelers Guild" instead of "Ironforge Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Ironforge Jewelers Guild' where entry = 2000;
-- Guard direction map marker for Stormwind should be called "Fencer Family Jewels" instead of "Ironforge Jewelcrafting Trainer"
update points_of_interest set icon_name = 'Fencer Family Jewels' where entry = 2002;

-- Move Item ID 80744 to loot group 1 on NPC ID 7356 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 7356 and item = 80744;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30208, 80744, 0, 1, 1, 1, 0);
-- Move Item ID 80741 and 80742 to loot group 1 on NPC ID 3983 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 3983 and item = 80741;
delete from creature_loot_template where entry = 3983 and item = 80742;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30137,80741, 0, 1, 1, 1, 0),
(30137,80742, 0, 1, 1, 1, 0);
-- Move Item ID 80740 to loot group 1 on NPC ID 6229 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 6229 and item = 80740;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30176,80740, 0, 1, 1, 1, 0);
-- Move Item ID 80743 to loot group 1 on NPC ID 4543 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 4543 and item = 80743;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30149,80743, 0, 1, 1, 1, 0);
-- Move Item ID 80745 to loot group 1 on NPC ID 8567 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 8567 and item = 80745;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30220,80745, 0, 1, 1, 1, 0);
-- Move Item ID 80746 to loot group 1 on NPC ID 7206 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 7206 and item = 80746;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30200,80746, 0, 1, 1, 1, 0);
-- Move Item ID 80747 to loot group 1 on NPC ID 7273 and make sure all the items there have equal drop chances.
update creature_loot_template set ChanceOrQuestChance = 0, groupid = 1 where entry = 7273 and item = 80747;
-- Move Item ID 80758 to loot group 1 on NPC ID 10596 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 10596 and item = 80758;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30298,80758, 0, 1, 1, 1, 0);
-- Move Item ID 80759 to loot group 1 on NPC ID 9736 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 9736 and item = 80759;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30257,80759, 0, 1, 1, 1, 0);
-- Move Item ID 80760 to loot group 1 on NPC ID 9568 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 9568 and item = 80760;
replace INTO  `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30254,80760, 0, 1, 1, 1, 0);
-- Move Item ID 9445 to loot group 1 on NPC ID 7361 and make sure all the items there have equal drop chances.
update creature_loot_template set ChanceOrQuestChance = 25, groupid = 6 where entry = 7361 and item =  9445;
update creature_loot_template set ChanceOrQuestChance = 25, groupid = 6 where entry = 7361 and item = 80737;
update creature_loot_template set ChanceOrQuestChance = 25, groupid = 6 where entry = 7361 and item = 80738;
update creature_loot_template set ChanceOrQuestChance = 25, groupid = 6 where entry = 7361 and item = 80739;

-- The items dropped by 56019 (Dense Gemstone Cluster), and 56020 (Solid Gemstone Cluster), are backwards, and need to be swapped (Example : Dense Gemstone Cluster needs to have the drops of solid gemstone cluster, and vice versa).
delete from item_loot_template where entry in (56019,56020);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56020, 7910, 15, 0, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56020, 30608, 100, 1, -30608, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56020, 55250, 20, 0, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56020, 55251, 15, 0, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56019, 12361, 15, 1, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56019, 12363, 2.5, 1, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56019, 12364, 10, 1, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56019, 12799, 15, 1, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56019, 12800, 5, 1, 1, 1, 0);
replace INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (56019, 30609, 100, 1, -30609, 1, 0);