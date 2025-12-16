-- Fix Goblin Warrior and Hunter starting weapon skills
DELETE FROM playercreateinfo_spell WHERE race = 9 AND class = 1 AND spell IN (196, 197, 199, 202);
REPLACE INTO playercreateinfo_spell VALUES (9, 1, 1180, 'Daggers');

DELETE FROM playercreateinfo_spell WHERE race = 9 AND class = 3 AND spell IN (196, 264);
REPLACE INTO playercreateinfo_spell VALUES (9, 3, 1180, 'Daggers');
REPLACE INTO playercreateinfo_spell VALUES (9, 3, 266, 'Guns');

-- Lower respawn timers on high competition quest objects in Thalassian Highlands and Blackstone
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 2020073;
UPDATE gameobject SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 2020075;
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2020077;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 2020078;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 2020079;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 2020080;
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2020081;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 2020082;
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2020083;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 2020084;

-- Fix typo in item description
UPDATE item_template SET Description = '' WHERE entry = 41197;
