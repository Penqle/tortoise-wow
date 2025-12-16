-- Black Riding Boots are unable to be repaired #6071
update item_template set item_level = 1 where entry = 41258;
-- Unfishable school of fish in strangelthorn #6065
update gameobject set position_x = -12026.2, position_y = 534.563 where guid = 47407;
-- Schematic: Unstable Mining Dynamite bugged loot table #6062
update reference_loot_template set chanceorquestchance = 0 where entry = 36000 and item = 51265;
-- Both Anthion's Parting Words quest versions (horde and alliance) can be picked up by me #6043
update quest_template set requiredraces = 434 where entry = 9018;
-- Simultaneous aggro when combating one of the NPCs.
delete from creature_linking where master_guid in (88064,88063);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (88025, 88064, 3);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (88029, 88064, 3);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (88028, 88063, 3);
REPLACE INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES (88026, 88063, 3);