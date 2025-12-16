-- Food Buff respawns in 20 seconds.
UPDATE `gameobject` SET `spawntimesecsmin`=20, `spawntimesecsmax`=20 WHERE `id`=179904;
-- Berserk Buff respawns in 120 seconds.
UPDATE `gameobject` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id`=179905;
-- Speed Buff respawns in 150 seconds.
UPDATE `gameobject` SET `spawntimesecsmin`=150, `spawntimesecsmax`=150 WHERE `id`=179871;
