-- Tie nearby Winterax troll spawns to Snowfall graveyard being neutral.
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES (1247036, 18, 8);
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES (115984, 18, 8);
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES (115974, 18, 8);
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES (115986, 18, 8);
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES (115976, 18, 8);
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES (115983, 18, 8);
INSERT INTO `creature_battleground` (`guid`, `event1`, `event2`) VALUES (115990, 18, 8);

-- Make gold dropped by Winterax trolls reflect their difficulty.
UPDATE `creature_template` SET `gold_min`=50000, `gold_max`=80000 WHERE `entry` IN (10984, 39999);
UPDATE `creature_template` SET `gold_min`=10000, `gold_max`=20000 WHERE `entry` IN (13956, 12157, 13958, 10983, 39998, 12158, 12156, 13957, 11679);

-- Change max stacks of Runecloth dropped by Wildpaw gnolls.
UPDATE `creature_loot_template` SET `maxcount`=3 WHERE `entry`=11840 && `item`=14047;
UPDATE `creature_loot_template` SET `maxcount`=2 WHERE `entry`=11839 && `item`=14047;
UPDATE `creature_loot_template` SET `maxcount`=2 WHERE `entry`=11838 && `item`=14047;

-- Make Korrak the Bloodrager attackable by guards again.
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=12159;

-- Swap chance of BoE and BoP blues from Korrak.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE `entry`=12159 && `item`=30557;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=12159 && `item`=40001;
