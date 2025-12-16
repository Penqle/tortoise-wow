-- Set respawn timer of https://database.turtle-wow.org/?object=2010822 to 5 seconds
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2010822;	

-- Set respawn timer of https://database.turtle-wow.org/?object=153123 to 60 seconds
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 153123; 	

-- Increase attack delay on https://database.turtle-wow.org/?npc=52119.  NPC uses a 2-handed staff but attacks as fast as a dual-wielder.  Given it's an elite, this easily tears apart even overleveled players.
UPDATE `creature_template` SET `base_attack_time` = 2000 WHERE `entry` = 52119;

-- Mention that wormholes require money.
UPDATE `item_template` SET `description` = 'Technologically advanced energy-matter scrambler. Insert a coin to continue!' WHERE `entry` = 51313;
UPDATE `item_template` SET `description` = 'Technologically advanced energy-matter scrambler. Insert a coin to continue!' WHERE `entry` = 51312;