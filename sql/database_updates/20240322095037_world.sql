-- Move Item ID 80706 to loot group 1 on NPC ID 644 and make sure all the items there have equal drop chances.
delete from creature_loot_template where entry = 644 and item = 80706;
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30068, 80706, 0, 1, 1, 1, 0);
update reference_loot_template set ChanceOrQuestChance = 0 where entry = 30068;