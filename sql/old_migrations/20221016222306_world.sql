-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2286
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2280
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2281
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2279
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2276
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2274
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2273
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2272
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2270
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2271
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2269
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2266

UPDATE `quest_template` SET `OfferRewardText` = 'This pleases me greatly, $N!\n\nYou\'ve begun your way towards my respect, thank you.' WHERE `entry` = 40355;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 55221;
UPDATE `quest_template` SET `RewOrReqMoney` = 50 WHERE `entry` = 80250;
UPDATE `spell_template` SET `auraDescription` = 'Increases Intellect by $s1\nIncreases Spirit by $s2\nIncreases Frost Damage done by $s3' WHERE `entry` = 8733;
DELETE FROM `npc_trainer` WHERE `entry` = 3597;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3597, 1420, 90, 0, 0, 6);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3597, 1428, 100, 0, 0, 4);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3597, 5181, 90, 0, 0, 6);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3597, 5231, 10, 0, 0, 1);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3597, 8922, 45, 0, 0, 4);
DELETE FROM `npc_trainer` WHERE `entry` = 3060;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3060, 1420, 90, 0, 0, 6);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3060, 1428, 100, 0, 0, 4);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3060, 5181, 90, 0, 0, 6);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3060, 5231, 10, 0, 0, 1);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (3060, 8922, 45, 0, 0, 4);
UPDATE `item_template` SET `max_count` = 1 WHERE `entry` = 51855;
UPDATE `creature_template` SET `armor` = 432 WHERE `entry` = 423;
UPDATE `gameobject` SET `spawntimesecsmin` = 5, `spawntimesecsmax` = 15 WHERE `guid` = 11418;
UPDATE `quest_template` SET `ZoneOrSort` = 45 WHERE `entry` = 50241;
UPDATE `creature_template` SET `skinning_loot_id` = 0 WHERE `entry` = 2831;
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `guid` = 1027;
DELETE FROM `creature_loot_template` WHERE `entry` = 5426 AND `item` = 30019 AND `groupid` = 0;