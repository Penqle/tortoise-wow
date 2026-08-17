-- ==============================================
-- FILE: accelerated_arcana.sql
-- GENERATED: 20260806181419
-- ==============================================
INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(51981, 51979, 1),
(51981, 51980, 1);

INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51979, 0, 0),
(51980, 0, 10737418240);
-- ==============================================
-- FILE: amplify_dampen_magic.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_amplify_dampen_magic'
WHERE `entry` IN (
    604, 1008
    );

UPDATE `spell_template`
SET
    `script_name` = 'spell_mage_amplify_dampen_magic_aura',
    `customFlags` = 2
WHERE `entry` IN (
    8450, 8455
    );

UPDATE `spell_template`
SET
    `script_name` = 'spell_mage_amplify_dampen_magic_aura',
    `customFlags` = 4
WHERE `entry` IN (
    8451, 10169
    );

UPDATE `spell_template`
SET `script_name` = 'spell_mage_magic_attunement'
WHERE `entry` = 11247;

-- ==============================================
-- FILE: arcane_concentration.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_proc_event`
SET `Cooldown` = 8
WHERE `entry` IN (
    11213, 12574, 12575, 12576, 12577
    );

-- ==============================================
-- FILE: arcane_focus.sql
-- GENERATED: 20260806181419
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(11222, 0, 9666035712),
(12839, 0, 9666035712),
(12840, 0, 9666035712),
(12841, 0, 9666035712);

UPDATE `spell_affect`
SET `SpellFamilyMask` = 9666035712
WHERE `entry` = 12842
AND `effectId` = 0;

-- ==============================================
-- FILE: arcane_impact.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_affect`
SET `SpellFamilyMask` = 12887003136
WHERE `entry` = 11242
AND `effectId` = 0;

UPDATE `spell_affect`
SET `SpellFamilyMask` = 12887003136
WHERE `entry` = 12467
AND `effectId` = 0;

UPDATE `spell_affect`
SET `SpellFamilyMask` = 12887003136
WHERE `entry` = 12469
AND `effectId` = 0;

-- ==============================================
-- FILE: arcane_meditation.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_arcane_meditation'
WHERE `entry` IN (
    18462, 18463, 18464
    );

-- ==============================================
-- FILE: arcane_potency.sql
-- GENERATED: 20260806181419
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(24544, 0, 13961003008),
(24544, 1, 13961003008);

-- ==============================================
-- FILE: arcane_power.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_arcane_power'
WHERE `entry` = 12042;

-- ==============================================
-- FILE: arcane_rupture.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.90
WHERE `entry` IN (
    51949, 51950, 51951, 51952, 51953, 51954
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
(51949, 0, 51949, 1, 0),
(51950, 51949, 51949, 2, 0),
(51951, 51950, 51949, 3, 0),
(51952, 51951, 51949, 4, 0),
(51953, 51952, 51949, 5, 0),
(51954, 51953, 51949, 6, 0);

-- ==============================================
-- FILE: arcane_surge.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.65
WHERE `entry` IN (
    51933, 51934, 51935, 51936
    );

-- ==============================================
-- FILE: arctic_reach.sql
-- GENERATED: 20260806181419
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(16757, 0, 34360262816),
(16758, 0, 34360262816);

-- ==============================================
-- FILE: elemental_precision.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_affect`
SET `SpellFamilyMask` = 34372846327
WHERE `entry` IN (
    29438, 29439, 29440
    )
AND `effectId` = 0;

-- ==============================================
-- FILE: flash_freeze.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_flash_freeze'
WHERE `entry` IN (
    51999, 52501
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
(51999, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0),
(52501, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0);

INSERT INTO `spell_scripts`
(
    `id`,
    `delay`,
    `priority`,
    `command`,
    `datalong`,
    `datalong2`,
    `datalong3`,
    `datalong4`,
    `target_param1`,
    `target_param2`,
    `target_type`,
    `data_flags`,
    `dataint`,
    `dataint2`,
    `dataint3`,
    `dataint4`,
    `x`,
    `y`,
    `z`,
    `o`,
    `condition_id`,
    `comments`
)
VALUES
(52500, 0, 0, 58, 52516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flash Freeze - Remove Icicles Rank 1 cooldown'),
(52500, 0, 0, 58, 51991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flash Freeze - Remove Icicles Rank 2 cooldown'),
(52500, 0, 0, 58, 51995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flash Freeze - Remove Icicles Rank 3 cooldown'),
(52500, 0, 0, 58, 51997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flash Freeze - Remove Icicles Rank 4 cooldown');

-- ==============================================
-- FILE: hot_streak.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_proc_event`
SET `SpellFamilyMask0` = 3,
    `SpellFamilyMask1` = 0,
    `SpellFamilyMask2` = 0
WHERE `entry` IN (
    51927, 51928, 51929
    );

-- ==============================================
-- FILE: ice_shards.sql
-- GENERATED: 20260806181419
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(11207, 0, 103079215840),
(12672, 0, 103079215840),
(15047, 0, 103079215840),
(15052, 0, 103079215840),
(15053, 0, 103079215840);

-- ==============================================
-- FILE: icicles.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_icicles'
WHERE `entry` IN (
    52516, 51991, 51995, 51997
    );

UPDATE `spell_template`
SET `script_name` = 'spell_mage_icicles_root'
WHERE `entry` = 51993;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.4
WHERE `entry` IN (
    52517, 51992, 51996, 51998
    );

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0
WHERE `entry` = 51994;

INSERT INTO `spell_chain`
(
    `spell_id`,
    `prev_spell`,
    `first_spell`,
    `rank`,
    `req_spell`
)
VALUES
(52516, 0, 52516, 1, 0),
(51991, 52516, 52516, 2, 0),
(51995, 51991, 52516, 3, 0),
(51997, 51995, 52516, 4, 0);

-- ==============================================
-- FILE: ignite.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_mage_ignite'
WHERE `entry` = 12654;

UPDATE `spell_proc_event`
SET `SchoolMask` = 4,
    `SpellFamilyName` = 3,
    `SpellFamilyMask0` = 0,
    `SpellFamilyMask1` = 0,
    `SpellFamilyMask2` = 0,
    `procFlags` = 0,
    `procEx` = 2,
    `ppmRate` = 0,
    `CustomChance` = 0,
    `Cooldown` = 0
WHERE `entry` = 11119;

INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES
(11120, 4, 3, 0, 0, 0, 0, 2, 0, 0, 0),
(12846, 4, 3, 0, 0, 0, 0, 2, 0, 0, 0),
(12847, 4, 3, 0, 0, 0, 0, 2, 0, 0, 0),
(12848, 4, 3, 0, 0, 0, 0, 2, 0, 0, 0);

-- ==============================================
-- FILE: magic_absorption.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_proc_event`
SET `procEx` = 1048584,
    `Cooldown` = 2
WHERE `entry` = 29441;

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
(29444, 0, 0, 0, 0, 0, 0, 1048584, 0, 0, 2),
(29445, 0, 0, 0, 0, 0, 0, 1048584, 0, 0, 2),
(52586, 64, 0, 0, 0, 0, 65536, 1048584, 0, 0, 0),
(52589, 64, 0, 0, 0, 0, 65536, 1048584, 0, 0, 0);

-- ==============================================
-- FILE: piercing_ice.sql
-- GENERATED: 20260806181419
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(11151, 0, 103079215840),
(12952, 0, 103079215840),
(12953, 0, 103079215840);

-- ==============================================
-- FILE: resonance_cascade.sql
-- GENERATED: 20260806181419
-- ==============================================
UPDATE `spell_proc_event`
SET `SchoolMask` = 64,
    `SpellFamilyName` = 0,
    `SpellFamilyMask0` = 0,
    `SpellFamilyMask1` = 0,
    `SpellFamilyMask2` = 0,
    `procFlags` = 0,
    `procEx` = 0,
    `ppmRate` = 0,
    `CustomChance` = 0,
    `Cooldown` = 0
WHERE `entry` = 51262;

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
(51987, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51988, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51989, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51990, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: temporal_convergence.sql
-- GENERATED: 20260806181419
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
VALUES (51961, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `spell_proc_event`
SET `Cooldown` = 15
WHERE `entry` IN (
    51963, 51964, 51965
    );

