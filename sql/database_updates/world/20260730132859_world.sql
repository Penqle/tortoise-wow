-- ==============================================
-- FILE: battlefield_mobility.sql
-- GENERATED: 20260730132859
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(20504, 0, 9663676416);

INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(20505, 0, 9663676416);

-- ==============================================
-- FILE: blood_drinker.sql
-- GENERATED: 20260730132859
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warrior_blood_drinker'
WHERE `entry` IN (
    51623, 51624, 51625
    );

-- ==============================================
-- FILE: bloodthirst.sql
-- GENERATED: 20260730132859
-- ==============================================
DELETE FROM `spell_effect_mod`
WHERE `Id` IN (
    23881, 23892, 23893, 23894
    )
  AND `EffectIndex` = 1
  AND `EffectTriggerSpell` IN (
    23885, 23886, 23887, 23888
    );

-- ==============================================
-- FILE: concussion_blow.sql
-- GENERATED: 20260730132859
-- ==============================================
INSERT INTO `spell_threat`
(
    `entry`,
    `Threat`,
    `multiplier`,
    `ap_bonus`
)
VALUES
(12809, 0, 1.5, 0),
(51600, 0, 1.5, 0),
(51601, 0, 1.5, 0),
(51602, 0, 1.5, 0);

-- ==============================================
-- FILE: defensive_tactics.sql
-- GENERATED: 20260730132859
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warrior_defensive_tactics'
WHERE `entry` IN (
    51606, 51607, 51608
    );

-- ==============================================
-- FILE: master_of_arms.sql
-- GENERATED: 20260730132859
-- ==============================================
INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(51644, 51659, 1),
(51644, 51645, 1),
(51644, 51664, 1),
(51644, 51650, 1),
(51655, 51660, 1),
(51655, 51646, 1),
(51655, 51665, 1),
(51655, 51651, 1),
(51656, 51661, 1),
(51656, 51647, 1),
(51656, 51666, 1),
(51656, 51652, 1),
(51657, 51662, 1),
(51657, 51648, 1),
(51657, 51667, 1),
(51657, 51653, 1),
(51658, 51663, 1),
(51658, 51649, 1),
(51658, 51668, 1),
(51658, 51654, 1);

-- ==============================================
-- FILE: master_strike.sql
-- GENERATED: 20260730132859
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warrior_master_strike'
WHERE `entry` = 54023;

UPDATE `spell_template`
SET `script_name` = 'spell_warrior_master_strike_polearm'
WHERE `entry` = 54019;

-- ==============================================
-- FILE: rend.sql
-- GENERATED: 20260730132859
-- ==============================================
UPDATE `spell_template`
SET
    `effectBonusCoefficient1` = 0.05,
    `customFlags` = `customFlags` | 0x800000
WHERE `entry` IN (
    772, 6546, 6547, 6548, 11572, 11573, 11574
    );

-- ==============================================
-- FILE: reprisal.sql
-- GENERATED: 20260730132859
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warrior_revenge'
WHERE `entry` IN (
    6572, 6574, 7379, 11600, 11601, 25288
    );

-- ==============================================
-- FILE: shield_slam.sql
-- GENERATED: 20260730132859
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient2` = 0.2,
    `customFlags` = `customFlags` | 0x800000
WHERE `entry` IN (
    23922, 23923, 23924, 23925, 52315
    );

-- ==============================================
-- FILE: shield_slam_threat.sql
-- GENERATED: 20260730132859
-- ==============================================
INSERT INTO `spell_threat`
(
    `entry`,
    `Threat`,
    `multiplier`,
    `ap_bonus`
)
VALUES
(52315, 280, 1.75, 0);

UPDATE `spell_threat`
SET `multiplier` = 1.75
WHERE `entry` IN (
    23922, 23923, 23924, 23925, 52315
    );

-- ==============================================
-- FILE: two_handed_weapon_specialization.sql
-- GENERATED: 20260730132859
-- ==============================================
INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(12163, 51635, 1),
(12163, 51636, 1),
(12711, 51637, 1),
(12711, 51638, 1),
(12712, 51639, 1),
(12712, 51640, 1);

-- ==============================================
-- FILE: unbridled_wrath.sql
-- GENERATED: 20260730132859
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warrior_unbridled_wrath'
WHERE `entry` = 12964;
