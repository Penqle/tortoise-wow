-- Increase respawn time of Lady Katrana Prestor to 10 minutes.
UPDATE `creature` SET `spawntimesecsmin`=600, `spawntimesecsmax`=600 WHERE `id`=1749;
