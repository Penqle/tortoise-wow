-- ==============================================
-- FILE: consecration_tick_profile.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_paladin_consecration'
WHERE `entry` IN (
    26573, 20116, 20922, 20923, 20924
    );

-- ==============================================
-- FILE: crusader_strike_scaling.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient2` = 0.20
WHERE `entry` IN (
    2537, 8823, 8824, 10336, 10337
    );

-- ==============================================
-- FILE: daybreak_scaling.sql
-- GENERATED: 20260726112016
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
(51323, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);

UPDATE `spell_template`
SET `script_name` = 'spell_paladin_daybreak_proc'
WHERE `entry` = 51322;

UPDATE `spell_template`
SET
    `effectBonusCoefficient1` = 0.32,
    `script_name` = 'spell_paladin_daybreak_heal'
WHERE `entry` = 50931;

-- ==============================================
-- FILE: holy_shield_scaling_threat.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient2` = 0.33
WHERE `entry` IN (
    20169, 20925, 20927, 20928
    );

INSERT INTO `spell_threat`
(
    `entry`,
    `Threat`,
    `multiplier`,
    `ap_bonus`
)
VALUES
(20169, 0, 1.5, 0);

UPDATE `spell_threat`
SET `multiplier` = 1.5
WHERE `entry` IN (
    20925, 20927, 20928
    );

-- ==============================================
-- FILE: holy_shock_rank_4.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_paladin_holy_shock',
    `effectBonusCoefficient1` = 1
WHERE `entry` = 51786;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.429,
    `customFlags` = `customFlags` | 128
WHERE `entry` = 52012;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.429
WHERE `entry` = 51787;

INSERT INTO `spell_chain`
(
    `spell_id`,
    `prev_spell`,
    `first_spell`,
    `rank`,
    `req_spell`
)
VALUES
(51786, 20930, 20473, 4, 0);

-- ==============================================
-- FILE: holy_strike_scaling.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient2` = 0.71
WHERE `entry` IN (
    679, 678, 1866, 680, 2495, 5569, 10332, 10333
    );

-- ==============================================
-- FILE: judgement_of_wisdom_ranks.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_paladin_judgement_of_light_wisdom',
    `customFlags` = `customFlags` | 256
WHERE `entry` IN (
    51751, 51752
    );

INSERT INTO `spell_chain`
(
    `spell_id`,
    `prev_spell`,
    `first_spell`,
    `rank`,
    `req_spell`
)
VALUES
(51745, 20357, 20166, 4, 0),
(51746, 51745, 20166, 5, 0);

-- ==============================================
-- FILE: repentance_repent_scaling.sql
-- GENERATED: 20260726112016
-- ==============================================
INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(20066, 51362, 1);

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
(51362, 0, 10, 4, 0, 0, 69888, 264, 0, 0, 0),
(51360, 0, 0, 0, 0, 0, 69892, 0, 0, 0, 0),
(51561, 0, 0, 0, 0, 0, 69892, 0, 0, 0, 0),
(51562, 0, 0, 0, 0, 0, 69892, 0, 0, 0, 0);

UPDATE `spell_template`
SET `script_name` = 'spell_paladin_repentance_passive'
WHERE `entry` = 51362;

UPDATE `spell_template`
SET `script_name` = 'spell_paladin_repent'
WHERE `entry` IN (
    51360, 51561, 51562
    );

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.08,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` IN (
    51361, 51559, 51560
    );

-- ==============================================
-- FILE: righteous_strikes_zealous_defense.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_paladin_crusader_strike'
WHERE `entry` IN (
    2537, 8823, 8824, 10336, 10337
    );

-- ==============================================
-- FILE: seal_of_command_ppm.sql
-- GENERATED: 20260726112016
-- ==============================================
DELETE FROM `spell_mod`
WHERE `Id` = 33006;

UPDATE `spell_proc_event`
SET `ppmRate` = 9
WHERE `entry` IN (
    20375, 20915, 20918, 20919, 20920
    );

-- ==============================================
-- FILE: shield_specialization_cooldown.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_proc_event`
SET `Cooldown` = 5
WHERE `entry` IN (
    20148, 20149, 20150
    );

-- ==============================================
-- FILE: vengeance_righteous_fury_threat.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_paladin_vengeance'
WHERE `entry` IN (
    20050, 20052, 20053, 20054, 20055
    );

-- ==============================================
-- FILE: vengeful_strikes_masks.sql
-- GENERATED: 20260726112016
-- ==============================================
UPDATE `spell_affect`
SET `SpellFamilyMask` = 34359738368
WHERE `entry` IN (
    51355, 51356, 51357, 51358, 51359
    )
  AND `effectId` = 1;

UPDATE `spell_affect`
SET `SpellFamilyMask` = 549755813888
WHERE `entry` IN (
    51355, 51356, 51357, 51358, 51359
    )
  AND `effectId` = 2;

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
(51355, 0, 10, 4294967296, 0, 0, 0, 0, 0, 0, 0),
(51356, 0, 10, 4294967296, 0, 0, 0, 0, 0, 0, 0),
(51357, 0, 10, 4294967296, 0, 0, 0, 0, 0, 0, 0),
(51358, 0, 10, 4294967296, 0, 0, 0, 0, 0, 0, 0),
(51359, 0, 10, 4294967296, 0, 0, 0, 0, 0, 0, 0);
