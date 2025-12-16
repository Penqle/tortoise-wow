-- Remove wrong pick pocket loot from Hazzuri Hexxer and Speaker.
UPDATE `creature_template` SET `pickpocket_loot_id`=0 WHERE `entry` IN (91811, 91856);
