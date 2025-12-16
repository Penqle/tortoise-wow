-- Set Zul'jin respawn time to be same as Thrall.
UPDATE `creature` SET `spawntimesecsmin`=86400, `spawntimesecsmax`=86400 WHERE `id`=80867;
