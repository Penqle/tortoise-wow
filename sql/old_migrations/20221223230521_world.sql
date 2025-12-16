-- Change Taskmaster objective to 0/4 instead of 0/10:
UPDATE `quest_template` SET `ReqCreatureOrGOCount1` = 4, `ReqCreatureOrGOCount2` = 4, `ReqCreatureOrGOCount3` = 4, `ReqCreatureOrGOCount4` = 4 WHERE `entry` = 70058;
-- Typo in Deckmaster's Commendation flair:
UPDATE `item_template` SET `description` = 'In service to the Kul Tiran navy.' WHERE `entry` = 61100;
-- NPC Magus Palon set display ID to 18751:
UPDATE `creature_template` SET `display_id1` = 18751 WHERE `entry` = 61065;