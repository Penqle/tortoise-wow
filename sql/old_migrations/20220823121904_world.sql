-- Correct drop chance of Eidolon Talisman.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1.4 WHERE `item`=18340 && `entry`=11473;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1.3 WHERE `item`=18340 && `entry`=11475;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1.1 WHERE `item`=18340 && `entry`=11471;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.9 WHERE `item`=18340 && `entry`=11472;
