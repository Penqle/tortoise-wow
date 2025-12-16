-- Items Tome of Portals: Stonard and Tome of Portals: Theramore are divided by references. Item Tome of Portals: Theramore drops only for alliance, Tome of Portals: Stonard only for horde.
delete from reference_loot_template where entry in (30593,30610);
replace INTO reference_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30593, 92004, 100, 1, 1, 1, 0);
replace INTO reference_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30610, 92002, 100, 1, 1, 1, 0);

replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61192, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61193, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61194, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61195, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61196, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61197, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61198, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61199, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61200, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61205, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61206, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61207, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61209, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61210, 30610, 0.32, 1, -30610, 1, 0);
replace INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61211, 30610, 0.32, 1, -30610, 1, 0);