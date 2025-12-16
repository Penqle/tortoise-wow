-- Add priority field to scripts to allow defining order of execution of commands with same delay.
ALTER TABLE `creature_ai_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `creature_movement_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `creature_spells_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `event_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `generic_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `gossip_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `gameobject_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `spell_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `quest_end_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;
ALTER TABLE `quest_start_scripts`
	ADD COLUMN `priority` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `delay`;

-- Grand Inquisitor Isillien remove unit flags before starting attack.
UPDATE `creature_ai_scripts` SET `priority`=1 WHERE `id`=184002 && `command`=26;
-- Crimson Elite remove unit flags before starting attack.
UPDATE `creature_ai_scripts` SET `priority`=1 WHERE `id`=1212801 && `command`=26;


