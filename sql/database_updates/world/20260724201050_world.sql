-- ==============================================
-- FILE: call_of_earth.sql
-- GENERATED: 20260724201050
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(58238, 0, 1099511627776),
(58239, 0, 1099511627776);

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_call_of_earth'
WHERE `entry` IN (
    58238, 58239
    );

-- ==============================================
-- FILE: calming_winds.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_calming_winds'
WHERE `entry` IN (
    51383, 51384, 51385
    );

-- ==============================================
-- FILE: chain_heal_coefficient.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.6142
WHERE `entry` IN (
    1064, 10622, 10623
    );

-- ==============================================
-- FILE: earthquake.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_earthquake'
WHERE `entry` IN (
    48306, 48307, 48308, 52878
    );

-- ==============================================
-- FILE: elemental_shields.sql
-- GENERATED: 20260724201050
-- ==============================================
DELETE FROM `spell_group`
WHERE `group_id` = 2000;

INSERT INTO `spell_group`
(
    `group_id`,
    `group_spell_id`,
    `spell_id`
)
VALUES
(2000, 0, 324),
(2000, 1, 325),
(2000, 2, 905),
(2000, 3, 945),
(2000, 4, 8134),
(2000, 5, 10431),
(2000, 6, 10432),
(2000, 7, 45527),
(2000, 8, 51533),
(2000, 9, 51534),
(2000, 10, 51535),
(2000, 11, 51536),
(2000, 12, 45525),
(2000, 13, 51525),
(2000, 14, 51526);

INSERT INTO `spell_proc_event`
(
    `entry`,
    `Cooldown`
)
VALUES
(51525, 3),
(51526, 3),
(51533, 3),
(51534, 3),
(51535, 3),
(51536, 3);

INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(16261, 0, 9895604651008),
(16261, 1, 9895604651008),
(16290, 0, 9895604651008),
(16290, 1, 9895604651008),
(16291, 0, 9895604651008),
(16291, 1, 9895604651008);

-- ==============================================
-- FILE: elemental_weapons.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_affect`
SET `SpellFamilyMask` = 8388608
WHERE `entry` IN (
    16266, 29079, 29080
    )
  AND `effectId` = 0;

UPDATE `spell_affect`
SET `SpellFamilyMask` = 2097152
WHERE `entry` IN (
    16266, 29079, 29080
    )
  AND `effectId` = 1;

UPDATE `spell_proc_event`
SET `SpellFamilyMask2` = 0,
    `procFlags` = 332116,
    `procEx` = 65536
WHERE `entry` IN (
    16266, 29079, 29080
    );

INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(16266, 58248, 1),
(29079, 58249, 1),
(29080, 58250, 1);

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_elemental_weapons'
WHERE `entry` IN (
    16266, 29079, 29080
    );

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_earthen_bulwark'
WHERE `entry` IN (
    58128, 58129, 58130
    );

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_frostbrand_attack'
WHERE `entry` IN (
    8034, 8037, 10458, 16352, 16353
    );

-- ==============================================
-- FILE: enhancing_totems.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_stoneskin'
WHERE `entry` IN (
    8072, 8156, 8157, 10403, 10404, 10405
    );

-- ==============================================
-- FILE: healing_way.sql
-- GENERATED: 20260724201050
-- ==============================================
DELETE FROM `spell_affect`
WHERE `entry` IN (
    29206, 29205, 29202
    )
  AND `effectId` = 0;

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_healing_way'
WHERE `entry` = 29203;

-- ==============================================
-- FILE: improved_fire_totems.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_improved_fire_totems'
WHERE `entry` IN (
    16086, 16544
    );

-- ==============================================
-- FILE: improved_water_shield.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_improved_water_shield'
WHERE `entry` IN (
    51369, 51370, 51371
    );

-- ==============================================
-- FILE: lightning_strike.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_lightning_strike_shield'
WHERE `entry` = 52679;

-- ==============================================
-- FILE: molten_blast.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_molten_blast'
WHERE `entry` IN (
    36916, 36917, 36918, 36919, 36920, 36921
    );

-- ==============================================
-- FILE: rockbiter_weapon.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = ''
WHERE `entry` IN (
    8017, 8018, 8019, 10399, 16314, 16315, 16316
    );

-- ==============================================
-- FILE: stormstrike.sql
-- GENERATED: 20260724201050
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
(52412, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_stormstrike'
WHERE `entry` = 52412;

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_lightning_strike_nature_damage'
WHERE `entry` IN (
    51386, 52419, 52421
    );

-- ==============================================
-- FILE: tidal_surge.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_tidal_surge'
WHERE `entry` IN (
    51491, 51492
    );

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
(51491, 0, 0, 0, 0, 0, 16384, 0, 0, 0, 0),
(51492, 0, 0, 0, 0, 0, 16384, 0, 0, 0, 0);

-- ==============================================
-- FILE: totemic_mastery.sql
-- GENERATED: 20260724201050
-- ==============================================
DELETE FROM `spell_affect`
WHERE `entry` = 16189
  AND `effectId` = 0;

INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(16189, 0, 4504286822137856);

-- ==============================================
-- FILE: undertow.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_undertow'
WHERE `entry` IN (
    51372, 51373
    );

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
(51372, 0, 11, 192, 0, 0, 16384, 0, 0, 0, 0),
(51373, 0, 11, 192, 0, 0, 16384, 0, 0, 0, 0);

-- ==============================================
-- FILE: water_shield.sql
-- GENERATED: 20260724201050
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_water_shield'
WHERE `entry` IN (
    45527, 51533, 51534, 51535, 51536
    );

-- ==============================================
-- FILE: weapon_imbue_duration.sql
-- GENERATED: 20260724201050
-- ==============================================
DELETE FROM `spell_effect_mod`
WHERE `Id` IN (
    8017, 8018, 8019, 10399, 16314, 16315, 16316, 8024, 8027, 8030,
    16339, 16341, 16342, 8033, 8038, 10456, 16355, 16356, 8232, 8235,
    10486, 16362
    );
