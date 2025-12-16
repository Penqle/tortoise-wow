-- Add Uldum Pedestal with original guid.
DELETE FROM `gameobject` WHERE `id`=142343;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (17230, 142343, 1, -9619.27, -2815.05, 8.21132, -3.13287, 0, 0, 0.99999, -0.004363, 2, 2, 100, 1, 0, 0);

-- Set respawn time for Sunken Chest (https://database.turtle-wow.org/?object=2010805) to 5 seconds:
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2010805;
-- Set respawn time of Areyntall Strongbox (https://database.turtle-wow.org/?object=3000520) to 5 seconds:
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 3000520;

delete from creature_loot_template where item = 82000;

UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `title` = 'Securing Northpoint';
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `title` = 'Juicy Darkfang Legs!';
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `title` = 'Mannoroc Demonic Sigil';
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `title` = 'The Good Stuff';