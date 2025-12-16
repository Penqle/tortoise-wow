-- Reduce respawn time of gurubashi tablets.
UPDATE `gameobject` SET `spawntimesecsmin`=5, `spawntimesecsmax`=5 WHERE `guid` IN (6771, 10153, 65, 11028);

