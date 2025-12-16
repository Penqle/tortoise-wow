-- Remove Breath of Solnius from Solnius' loottable and move it to the Hardmode Cache if its missing from there (idk name of it).
delete from creature_loot_template where item = 61527 and entry = 60748;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(2020042, 61527, 5.9, 2, 1, 1, 0);