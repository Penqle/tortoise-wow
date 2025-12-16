-- Fix low respawn time on some Venomflayer Serpent spawns.
UPDATE `creature` SET `spawntimesecsmin`=280, `spawntimesecsmax`=300 WHERE `id`=61096;
