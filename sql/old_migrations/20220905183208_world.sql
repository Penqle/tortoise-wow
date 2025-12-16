-- Increase respawn time of ZG bosses so hopefully they don't respawn before reset.
UPDATE `creature` SET `spawntimesecsmin`=604800, `spawntimesecsmax`=604800 WHERE `map`=309 && `spawntimesecsmin`=259200;
