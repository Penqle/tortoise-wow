-- Removed Scarlet Basilica from Cartographer's requirement.
DELETE FROM `cartographer` WHERE `area_id` = 2267;
-- Thorium Greatsword is now disenchantable.
UPDATE `item_template` SET `disenchant_id` = 28 WHERE `entry` = 12764;
-- Quest 'Stealing a Core' should be labeled as a dungeon quest.
UPDATE `quest_template` SET `Type` = 81, `QuestFlags` = 8 WHERE `entry` = 40129;
-- Misc.
UPDATE `item_template` SET `description` = 'Use near a mana rift disturbance.' WHERE `entry` = 7308;