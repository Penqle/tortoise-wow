-- Rename columns to match vmangos and conform to overall naming style..
ALTER TABLE `gossip_menu_option`
	CHANGE COLUMN `OptionBroadcastTextID` `option_broadcast_text` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `option_text`,
	CHANGE COLUMN `BoxBroadcastTextID` `box_broadcast_text` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `box_text`;
