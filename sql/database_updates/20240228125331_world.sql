-- Added the following items:
-- 55155 (jewelers kit)
-- 55245 (polishing oil)
-- 55246 (shimmering oil)
-- 55247 (gemstone oil)
-- 40082 (Schematic: jewelry lens)

-- to the following vendors sell list: 61922, 61920, 61926.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55155, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55245, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55246, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 55247, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61920, 40082, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55155, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55245, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55246, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 55247, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61922, 40082, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55155, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55245, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55246, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 55247, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61926, 40082, 0, 0, 0, 0);
-- Item 40084, add item to the vendor list of npc Ranik (Entry 3499) with a limited stock of 3 that restocks every 2hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (3499, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Kersok Prond (Entry 1456), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (1456, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Christoph Jeffcoat (Entry 2393), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (2393, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Zixil (Entry 3537), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (3537, 40084, 3, 7200, 0, 0);
-- item 40084, add item to the vendor list of npc Kersok Prond (Entry 1456), with a limited stock of 3 that restocks every 2 hrs.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (1456, 40084, 3, 7200, 0, 0);
-- Item 40083, set to limited stock of 2 on npc Gonzo Snaphands with a restock every 2 hrs (He already sells this item).
update npc_vendor set maxcount = 2, incrtime = 7200 where entry = 61914 and item = 40083;

-- Item 40083, add as a drop to Tinkerer Gizlock (Entry 13601) on its own loot table with a drop % of 8%.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(13601, 40083, 8, 0, 1, 1, 0);
-- Item 40084, add as a drop to to Mekgineer Thermaplugg (Entry 7800) on its own loot table with a drop % of 4%.
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7800, 40084, 4, 0, 1, 1, 0);

-- Item entry 40082, rename to Schematic: Jewelry Lens.
update item_template set name = 'Schematic: Jewelry Lens' where entry = 40082;
-- Item entry 40083, rename to Schematic: Jewelry Scope.
update item_template set name = 'Schematic: Jewelry Scope' where entry = 40083;
-- Item entry 40084, rename to Schematic: Precision Jewelers Kit.
update item_template set name = 'Schematic: Precision Jewelers Kit' where entry = 40084;