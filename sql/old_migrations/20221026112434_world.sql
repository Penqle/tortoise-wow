-- Reduce default respawn time for new spawns.
ALTER TABLE `creature`
	CHANGE COLUMN `spawntimesecsmin` `spawntimesecsmin` INT(10) UNSIGNED NOT NULL DEFAULT '120' AFTER `orientation`,
	CHANGE COLUMN `spawntimesecsmax` `spawntimesecsmax` INT(10) UNSIGNED NOT NULL DEFAULT '120' AFTER `spawntimesecsmin`;
