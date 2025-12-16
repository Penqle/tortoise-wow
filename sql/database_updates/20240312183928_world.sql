-- Quest 41018, change requirement of 5x 61706 corrupt dream shard to 8x.
update quest_template set ReqItemCount1 = 8 where entry = 41018;
-- Item Entry 55152, heavy gritted paper, change to trade goods.
update item_template set class = 7, subclass = 0 where entry = 55152;
-- Item entry 41344, Heavy gemstone cluster, change to junk/misc.
update item_template set class = 15, subclass = 0 where entry = 41344;
-- Item entry 41320, coarse gemstone cluster, change to junk/misc.
update item_template set class = 15, subclass = 0 where entry = 41320;
-- Item entry 2880 and 3466, change description to : "Used by blacksmiths and jewelcrafters to remove impurities."
update item_template set description = 'Used by blacksmiths and jewelcrafters to remove impurities.' where entry in (2880,3466);
-- Item Twilight Opal Cascade (55263), change display ID to 23897.
update item_template set display_id = 23897 where entry = 55263;
-- Item sunburst Tiara (55266), change display ID to 27293.
update item_template set display_id = 27293 where entry = 55266;
-- Item Prism Amulet (entry 55199), change display ID to 31603.
update item_template set display_id = 31603 where entry = 55199;
-- Item Starforge Amulet (entry 55197), change display ID to 9859.
update item_template set display_id = 9859 where entry = 55197;
-- Item Voidheart Charm (entry 55200), change display ID to 68076.
update item_template set display_id = 68076 where entry = 55200;
-- Item Gemmed Citrine Pendant (entry 55202), change display ID to 15420.
update item_template set display_id = 15420 where entry = 55202;
-- Item Runebound Amulet ( entry 55204), change display ID to 2667.
update item_template set display_id = 2667 where entry = 55204;
-- Item Astral Amulet (entry 55195), change display ID to 66201.
update item_template set display_id = 66201 where entry = 55195;
-- Item entry 56031, change display ID to 68097.
update item_template set display_id = 68097 where entry = 56031;

-- Item Heavy Gemstone Cluster (Entry 41344) should be a lootable item, which contains the following items, with the following drop chances.
update item_template set flags = 4 where entry = 41344;
-- (One of the items from group loot 1 should always drop from Coarse Gemstone Cluster).
DELETE FROM `item_loot_template` WHERE `entry` = 41344;
-- Group loot 1:
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30607, 1529, 40, 1, 1, 1, 0), -- Jade - 40%
(30607, 3864, 30, 1, 1, 1, 0), -- Citrine - 30%
(30607, 7909, 30, 1, 1, 1, 0); -- Aqua Marine - 30%

-- Group loot 2:
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(41344, 30607, 100, 1, -30607, 1, 0), -- reference with 100% drop chance.
(41344, 1529,  20, 0,       1, 1, 0), -- Jade - 20%
(41344, 3864,  15, 0,       1, 1, 0), -- Citrine - 15%
(41344, 7909,  10, 0,       1, 1, 0); -- Aqua Marine - 10%

-- Item Dense Gemstone Cluster (Entry 56019) should be a lootable item, which contains the following items, with the following drop chances.
update item_template set flags = 4 where entry = 56019;
-- (One of the items from group loot 1 should always drop from Coarse Gemstone Cluster).
DELETE FROM `item_loot_template` WHERE `entry` = 56019;
-- Group loot 1:
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30608, 55250, 35, 1, 1, 1, 0), -- Emberstone - 35%
(30608, 55251, 35, 1, 1, 1, 0), -- Pure Moonstone - 35%
(30608,  7910, 30, 1, 1, 1, 0); -- Star Ruby - 30%

-- Group loot 2:
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(56019, 30608, 100, 1, -30608, 1, 0), -- reference with 100% drop chance.
(56019, 55250,  20, 0,      1, 1, 0), -- Emberstone - 20%
(56019, 55251,  15, 0,      1, 1, 0), -- Pure Moonstone - 15%
(56019,  7910,  15, 0,      1, 1, 0); -- Star Ruby - 15%

-- Item Solid Gemstone Cluster (Entry 56020) should be a lootable item, which contains the following items, with the following drop chances.
update item_template set flags = 4 where entry = 56020;
-- (One of the items from group loot 1 should always drop from Coarse Gemstone Cluster).
DELETE FROM `item_loot_template` WHERE `entry` = 56020;
-- Group loot 1:
replace INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(30609, 12363, 10, 1, 1, 1, 0), -- Arcane Crystal - 10%
(30609, 12800, 15, 1, 1, 1, 0), -- Azerothian Diamond - 15%
(30609, 12364, 25, 1, 1, 1, 0), -- Huge Emerald - 25%
(30609, 12799, 25, 1, 1, 1, 0), -- Large Opal - 25%
(30609, 12361, 25, 1, 1, 1, 0); -- Blue Sapphire - 25%

-- Group loot 2:
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(56020, 30609, 100, 1, -30609, 1, 0), -- reference with 100% drop chance.
(56020, 12363, 2.5, 1,      1, 1, 0), -- Arcane Crystal - 2.5%
(56020, 12800,   5, 1,      1, 1, 0), -- Azerothian Diamond - 5%
(56020, 12364,  10, 1,      1, 1, 0), -- Huge Emerald - 10%
(56020, 12799,  15, 1,      1, 1, 0), -- Large Opal - 15%
(56020, 12361,  15, 1,      1, 1, 0); -- Blue Sapphire - 15%