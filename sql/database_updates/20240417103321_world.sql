-- Item 12841 removed from NPC 10901 and item 12843 has been added to loot table.
delete from creature_loot_template where entry = 12841 and entry = 10901;
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (10901, 12843, 100, 0, 1, 1, 17);