-- The low-level cloth has been removed and runecloth added for NPCs Southsea Outlaw and Southsea Miner. https://turtle-wow.org/bug-report?id=7446
delete from creature_loot_template where item = 4338 and entry in (92139,92134);
delete from creature_loot_template where item = 4306 and entry in (92139,92134);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (92134, 14047, 23.8417, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (92139, 14047, 23.8417, 0, 1, 2, 0);