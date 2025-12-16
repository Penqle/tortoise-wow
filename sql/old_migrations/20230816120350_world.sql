-- Item IDs 62001 and 62002 should be sold by NPC ID 11557 with unlimited stock.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(11557, 0, 62001, 0, 0, 0, 0),
(11557, 0, 62002, 0, 0, 0, 0);
-- Item ID 62000 should drop from the following NPC IDs with a 0.1% chance:
-- 7435
-- 7436
-- 7437
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7435, 62000, 0.01, 0, 1, 1, 0),
(7436, 62000, 0.01, 0, 1, 1, 0),
(7437, 62000, 0.01, 0, 1, 1, 0);
-- Item ID 62000 should drop from the following NPC IDs with a 0.05% chance:
-- 10661
-- 10660
-- 10659
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(10661, 62000, 0.05, 0, 1, 1, 0),
(10660, 62000, 0.05, 0, 1, 1, 0),
(10659, 62000, 0.05, 0, 1, 1, 0);
-- Item ID 62000 should drop from the following NPC IDs with a 5% chance:
-- 10196
-- 10663
-- 10202
-- 10662
-- 10664
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(10196, 62000, 5, 0, 1, 1, 0),
(10663, 62000, 5, 0, 1, 1, 0),
(10202, 62000, 5, 0, 1, 1, 0),
(10662, 62000, 5, 0, 1, 1, 0),
(10664, 62000, 5, 0, 1, 1, 0);
-- Item IDs 62003, 62004, 62005, 62006 and 62007 should be sold by NPC ID 12944 with unlimited stock, only visible when you have Exalted reputation with the Thorium Brotherhood.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(12944, 0, 62003, 0, 0, 0, 227),
(12944, 0, 62004, 0, 0, 0, 227),
(12944, 0, 62005, 0, 0, 0, 227),
(12944, 0, 62006, 0, 0, 0, 227),
(12944, 0, 62007, 0, 0, 0, 227);
-- 227: Target Is Exalted Or Better With Faction 59 (Thorium Brotherhood)
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (227, 5, 59, 7, 0, 0, 0);
