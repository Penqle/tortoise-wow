REPLACE INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (50305, '%s completed 2700 quests and is now known as the Seeker of Knowledge, inspiring fellow adventurers to explore the unknown!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

UPDATE `spell_template` SET `name` = 'Vagrant\'s Endeavor', `description` = 'You are only allowed to equip items with a rarity of poor and common.' WHERE `entry` = 50014;

UPDATE `spell_template` SET `name` = 'Vagrant\'s Endeavor', `description` = 'Enable the Vargant\'s Endeavor challenge.' WHERE `entry` = 50030;
 