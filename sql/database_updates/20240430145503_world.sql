-- Move Item ID 80746 to loot group 1 for NPC ID 7206, with a 15% chance to drop 1 item, reduce Item ID 9411's drop chance to 35%.
delete from creature_loot_template where entry = 7206 and item = 80746;
replace into reference_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30200, 9410, 50, 1, 1, 1, 0);
replace into reference_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30200, 9411, 35, 1, 1, 1, 0);
replace into reference_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30200, 80746, 15, 1, 1, 1, 0);
-- Move Item ID 80747 to loot group 1 for NPC ID 7273, with a 20% chance to drop 1 item, reduce Item ID 9467's drop chance to 30%.
delete from creature_loot_template where entry = 7273 and item = 80747;
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (7273, 9467, 30, 1, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (7273, 9469, 50, 1, 1, 1, 0);
replace into creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (7273, 80747, 20, 1, 1, 1, 0);