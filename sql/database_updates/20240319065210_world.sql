-- Update Idol of Death drop rate to match all the other idols.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1 WHERE `item`=20876;
