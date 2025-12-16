-- Increase placeholder respawn time for new spawns.
ALTER TABLE `creature`
	CHANGE COLUMN `spawntimesecsmin` `spawntimesecsmin` INT(10) UNSIGNED NOT NULL DEFAULT '3600' AFTER `orientation`,
	CHANGE COLUMN `spawntimesecsmax` `spawntimesecsmax` INT(10) UNSIGNED NOT NULL DEFAULT '3600' AFTER `spawntimesecsmin`;
