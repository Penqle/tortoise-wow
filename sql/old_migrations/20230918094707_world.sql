-- Reduce respawn time of Eris Havenfire to 15 minutes.
UPDATE `creature` SET `spawntimesecsmin`=900, `spawntimesecsmax`=900 WHERE `id`=14494;
