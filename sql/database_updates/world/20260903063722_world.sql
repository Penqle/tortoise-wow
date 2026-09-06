-- ==============================================
-- FILE: arms_of_thaurissan_unrelenting_strikes.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_unrelenting_strikes'
WHERE `entry` = 49368;

-- ==============================================
-- FILE: avengers_judgement_righteous_command.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51818, 0, 17179870208),
(51819, 0, 17179870208);

-- ==============================================
-- FILE: bonescythe_reduced_threat.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(28811, 0, 549764202496);

-- ==============================================
-- FILE: brotherhood_reduced_ability_costs.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(41361, 0, 34359754816);

-- ==============================================
-- FILE: brotherhood_warrior_5p.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_proc_event`
(
    `entry`,
    `SchoolMask`,
    `SpellFamilyName`,
    `SpellFamilyMask0`,
    `SpellFamilyMask1`,
    `SpellFamilyMask2`,
    `procFlags`,
    `procEx`,
    `ppmRate`,
    `CustomChance`,
    `Cooldown`
)
VALUES
(41363, 0, 4, 8192, 16, 1048576, 16, 524288, 0, 0, 0);

-- ==============================================
-- FILE: cenarion_blessing.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_druid_cenarion_blessing'
WHERE `entry` = 52325;

-- ==============================================
-- FILE: defias_leather_opportunistic_strike.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_opportunistic_strike'
WHERE `entry` = 44072;

-- ==============================================
-- FILE: embrace_of_the_viper_wild_regeneration.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_wild_regeneration'
WHERE `entry` = 44070;

INSERT INTO `spell_proc_event`
(
    `entry`,
    `SchoolMask`,
    `SpellFamilyName`,
    `SpellFamilyMask0`,
    `SpellFamilyMask1`,
    `SpellFamilyMask2`,
    `procFlags`,
    `procEx`,
    `ppmRate`,
    `CustomChance`,
    `Cooldown`
)
VALUES
(44070, 0, 0, 0, 0, 0, 664232, 0, 0, 0, 180);

-- ==============================================
-- FILE: enigma_nether_overcharge.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_evocation'
WHERE `entry` = 12051;

-- ==============================================
-- FILE: frostfire_erupting_shield.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_mana_shield'
WHERE `entry` IN (
    1463, 8494, 8495, 10191, 10192, 10193, 17740, 17741
    );

-- ==============================================
-- FILE: giantstalker_improved_volley_multishot.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(23566, 0, 8589938688);

-- ==============================================
-- FILE: nemesis_corruption_siphon_life_duration.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52601, 0, 4294967298);

-- ==============================================
-- FILE: pursuit_multishot_carve_damage.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(28539, 0, 8589938688);

-- ==============================================
-- FILE: ravenstalker_multishot_carve_cooldown.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52602, 0, 8589938688);

-- ==============================================
-- FILE: redemption_holy_power.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_holy_power'
WHERE `entry` = 51821;

INSERT INTO `spell_proc_event`
(
    `entry`,
    `SchoolMask`,
    `SpellFamilyName`,
    `SpellFamilyMask0`,
    `SpellFamilyMask1`,
    `SpellFamilyMask2`,
    `procFlags`,
    `procEx`,
    `ppmRate`,
    `CustomChance`,
    `Cooldown`
)
VALUES
(51821, 0, 10, 3223347200, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: scarlet_crusade_purging_flames.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_purging_flames'
WHERE `entry` = 44074;

-- ==============================================
-- FILE: stormcaller_elemental_shell.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_earth_shield'
WHERE `entry` IN (
    45525, 51525, 51526
    );

-- ==============================================
-- FILE: stormhowl_3p_bonus.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template` SET
    `script_name` = 'spell_shaman_stormhowl_trigger_elemental_shield'
WHERE `entry` = 52680;
-- ==============================================
-- FILE: stormhowl_improved_clearcasting.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_elemental_focus'
WHERE `entry` = 16164;

INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(46761, 0, 6599486734339);

-- ==============================================
-- FILE: stormreaver_impending_doom.sql
-- GENERATED: 20260903063722
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_impending_doom'
WHERE `entry` = 44080;

INSERT INTO `spell_proc_event`
(
    `entry`,
    `SchoolMask`,
    `SpellFamilyName`,
    `SpellFamilyMask0`,
    `SpellFamilyMask1`,
    `SpellFamilyMask2`,
    `procFlags`,
    `procEx`,
    `ppmRate`,
    `CustomChance`,
    `Cooldown`
)
VALUES
(44080, 32, 0, 0, 0, 0, 655360, 0, 0, 0, 0),
(44081, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);

-- ==============================================
-- FILE: unseen_path_steady_raptor_mongoose_crit.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52684, 0, 68719476738);

-- ==============================================
-- FILE: warrior_intercept_intervene_bonuses.sql
-- GENERATED: 20260903063722
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(22738, 0, 9663676416),
(26111, 0, 9663676416);

