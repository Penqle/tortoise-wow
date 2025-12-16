/* Should include account ID as well */
CREATE TABLE `character_temp_deletion_guids` (
	`guid` INT(10) UNSIGNED NOT NULL,
	`account` INT(11) UNSIGNED NOT NULL,
	PRIMARY KEY (`guid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

INSERT INTO character_temp_deletion_guids SELECT guid, account
FROM nd_char.characters
JOIN tw_logon_backup.account ON nd_char.characters.account = tw_logon_backup.account.id
WHERE tw_logon_backup.account.last_login < '2023-05-30 00:00:00'
AND nd_char.characters.totaltime < 3600
AND nd_char.characters.level < 20
AND nd_char.characters.money < 10000
ORDER BY tw_logon_backup.account.last_login, nd_char.characters.totaltime, nd_char.characters.level;


DELETE FROM mail WHERE deliver_time < 1708392314 AND isDeleted = 1;


DELETE character_battleground_data FROM character_battleground_data INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_battleground_data.guid;
DELETE character_aura FROM character_aura INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_aura.guid;
DELETE character_aura_suspended FROM character_aura_suspended INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_aura_suspended.guid;
DELETE character_action FROM character_action INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_action.guid;
DELETE character_instance FROM character_instance INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_instance.guid;
DELETE character_account_data FROM character_account_data INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_account_data.guid;
DELETE character_homebind FROM character_homebind INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_homebind.guid;
DELETE character_queststatus FROM character_queststatus INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_queststatus.guid;
DELETE character_item_logs FROM character_item_logs INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_item_logs.guid;
DELETE character_inventory FROM character_inventory INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_inventory.guid;
DELETE character_reputation FROM character_reputation INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_reputation.guid;
DELETE character_spell FROM character_spell INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_spell.guid;
DELETE character_skills FROM character_skills INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_skills.guid;
DELETE character_social FROM character_social INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_social.guid;
DELETE character_social FROM character_social INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_social.friend;
DELETE guild_member FROM guild_member INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = guild_member.guid;
DELETE item_instance FROM item_instance INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = item_instance.owner_guid;

/* Extra commands added by Bowser run after first cleanup* */

DELETE character_item_logs FROM character_item_logs INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_item_logs.playerLowGuid;
DELETE character_transmogs FROM character_transmogs INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_transmogs.guid;
DELETE character_account_data FROM character_account_data INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_account_data.guid;
DELETE guild_bank_log FROM guild_bank_log INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = guild_bank_log.player;
DELETE character_pet FROM character_pet INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_pet.owner;
DELETE character_spell_dual_spec FROM character_spell_dual_spec INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.guid = character_spell_dual_spec.guid;

/* Requires the command column for the character_temp_deletion_guids table */
DELETE character_tutorial FROM character_tutorial INNER JOIN character_temp_deletion_guids ON character_temp_deletion_guids.account = character_tutorial.account;

/* Many smaller tables such as pet_spell, pet_aura and other small tables are still not being cleaned */
