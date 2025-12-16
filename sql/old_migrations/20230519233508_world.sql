-- Set respawn time of all expedition officers to 5 minutes.
UPDATE `creature` SET `spawntimesecsmin`=300, `spawntimesecsmax`=300 WHERE `id`=60896;
