-- Remove XP from repeatable quests for Armor Scraps, Stormpike Soldier's Blood and Storm Crystal.
UPDATE `quest_template` SET `RewXP`=0, `RewMoneyMaxLevel`=0 WHERE `entry` IN (6801, 6881, 6741, 6781, 7385, 7386);
