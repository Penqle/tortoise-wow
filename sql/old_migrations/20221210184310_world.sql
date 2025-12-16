-- Correct drop chance of Scarlet Belt.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=3 WHERE `item`=10329 && `entry`=4298;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=2 WHERE `item`=10329 && `entry`=4295;
