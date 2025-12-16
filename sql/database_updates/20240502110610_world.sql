-- Fix level of quests Money Down The Drain and Secure the Cargo!.
UPDATE `quest_template` SET `QuestLevel`=41 WHERE `entry` IN (80352, 80405);
