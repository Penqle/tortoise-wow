-- Reduce respawn time of Dreadmaw Crocolisk.
UPDATE `creature` SET `spawntimesecsmin`=120, `spawntimesecsmax`=120 WHERE `id` IN (3110, 3231);
