-- Reduce respawn time of Hogger.
UPDATE `creature` SET `spawntimesecsmin`=60, `spawntimesecsmax`=60 WHERE `id`=448;
