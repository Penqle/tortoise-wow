-- Try to fix Bloody Pick and Crossguarded Blade not dropping.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=6 WHERE `item`=61372 && `entry`=3183;
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `item`=61372;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1 WHERE `item`=61375 && `entry`=80205;
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `item`=61375;
