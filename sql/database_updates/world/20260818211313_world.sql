-- ==============================================
-- FILE: hardcore_charm_targetting.sql
-- GENERATED: 20260818211313
-- ==============================================
UPDATE `creature_spells`
SET `castFlags_2` = `castFlags_2` | 0x400
WHERE `entry` = 26000
AND `spellId_2` = 14515;

UPDATE `creature_spells`
SET `castFlags_2` = `castFlags_2` | 0x400
WHERE `entry` = 43710
AND `spellId_2` = 7645;

UPDATE `creature_spells`
SET `castFlags_2` = `castFlags_2` | 0x400
WHERE `entry` = 71070
AND `spellId_2` = 12888;

UPDATE `creature_spells`
SET `castFlags_1` = `castFlags_1` | 0x400
WHERE `entry` = 98600
AND `spellId_1` = 12888;

UPDATE `creature_spells`
SET `castFlags_2` = `castFlags_2` | 0x400
WHERE `entry` = 117330
AND `spellId_2` = 19469;

UPDATE `creature_ai_scripts`
SET `datalong2` = `datalong2` | 0x400
WHERE `id` = 1249702
AND `command` = 15
AND `datalong` = 20668;

-- ==============================================
-- FILE: hardcore_shell_coin_quests.sql
-- GENERATED: 20260818211313
-- ==============================================
UPDATE `quest_template`
SET `SpecialFlags` = `SpecialFlags` | 0x400
WHERE `entry` IN (
    39984, 39986, 41176, 80381
    );

-- ==============================================
-- FILE: lunatic_loot.sql
-- GENERATED: 20260818211313
-- ==============================================
INSERT INTO `conditions`
(
    `condition_entry`,
    `type`,
    `value1`,
    `value2`,
    `value3`,
    `value4`,
    `flags`
)
VALUES
(61003, 61, 1, 0, 0, 0, 0);

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 11517 AND `item` = 17041;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 11520 AND `item` = 5235;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 11518 AND `item` IN (55004, 80111);

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 11519 AND `item` = 64;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 11324 AND `item` = 12862;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 3671 AND `item` IN (2189, 2190);

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 61961 AND `item` = 107;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 644 AND `item` = 9496;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 643 AND `item` = 50256;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 645 AND `item` = 9338;

UPDATE `creature_loot_template`
SET `condition_id` = 61003
WHERE `entry` = 639 AND `item` IN (29980, 108);