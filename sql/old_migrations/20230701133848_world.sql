-- Increase drop chance of Item ID 81369 to 2%.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 49002 AND `item` = 81369 AND `groupid` = 2;

-- NPC Moroes (Entry 61225) change faction to 35, add gossip flags

-- NPC Moroes (Entry 61226) change faction to 35, add gossip flags 

UPDATE `creature_template` SET `faction` = 35, `npc_flags` = 1 WHERE `entry` = 61225;
UPDATE `creature_template` SET `faction` = 35, `npc_flags` = 1 WHERE `entry` = 61226;

-- change zone id of quest The True Enemy to 331 

UPDATE `quest_template` SET `ZoneOrSort` = 331 WHERE `entry` = 40842;

-- Add Item ID 18355 to NPC ID 14308 to a new loot group with a 14% chance to drop.

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (14308, 18355, 14, 1, 1, 1, 0);

-- Add Item ID 18023 to the following loottables with a 0.02% chance:
-- 6006, 6004, 6005, 6009, 6007, 6008

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES 

(6004, 1802, 0.02, 5, 1, 1, 0),
(6005, 1802, 0.02, 5, 1, 1, 0),
(6006, 1802, 0.02, 5, 1, 1, 0),
(6007, 1802, 0.02, 5, 1, 1, 0),
(6008, 1802, 0.02, 5, 1, 1, 0),
(6009, 1802, 0.02, 5, 1, 1, 0);

UPDATE `item_template` SET `quality` = 2 WHERE `entry` = 61368;