-- Southsea Sash should only drop when on the quest.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-50 WHERE `item`=60208 && `ChanceOrQuestChance`=50;
