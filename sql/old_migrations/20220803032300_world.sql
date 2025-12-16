-- Fix respawn time of Chromatic Elite Guard.
UPDATE `creature` SET `spawntimesecsmin`=7200, `spawntimesecsmax`=7200 WHERE `id`=10814;
