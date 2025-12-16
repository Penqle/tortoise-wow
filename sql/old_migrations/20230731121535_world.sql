-- NPC 61319 Master Blacksmith Rolfen add the following loot to its own loot table with a drop chance of 1.44%:
-- 61805.
-- 61806.
-- 61807.
-- 61808.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61319, 61805, 1.44, 1, 1, 1, 0),
(61319, 61806, 1.44, 1, 1, 1, 0),
(61319, 61807, 1.44, 1, 1, 1, 0),
(61319, 61808, 1.44, 1, 1, 1, 0);
-- Boots of Flowing Sands, Blackthorn's Blackjack, Grass of Eternity, Consecrated Caduceus, Rod of the Churning Hourglass and Aurastone Bracers needs to be added to Dronormu's vendor stock with infinite stock.
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES
(80943, 0, 61005, 0, 0, 0, 0),
(80943, 0, 84600, 0, 0, 0, 0),
(80943, 0, 84601, 0, 0, 0, 0),
(80943, 0, 84602, 0, 0, 0, 0),
(80943, 0, 84603, 0, 0, 0, 0),
(80943, 0, 84604, 0, 0, 0, 0);