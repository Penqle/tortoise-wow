-- ==============================================
-- FILE: aessinas_bloom.sql
-- GENERATED: 20260721231140
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_druid_aessinas_bloom'
WHERE `entry` IN (
    51446, 51447, 46788, 46789
    );

UPDATE `spell_template`
SET `script_name` = 'spell_druid_healing_touch'
WHERE `entry` IN (
    5185, 5186, 5187, 5188, 5189, 6778, 8903, 9758, 9888, 9889,
    25297
    );

UPDATE `spell_template`
SET `script_name` = ''
WHERE `entry` = 52567;

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
(46788, 0, 7, 32, 0, 0, 16384, 524288, 0, 0, 0),
(46789, 0, 7, 32, 0, 0, 16384, 524288, 0, 0, 0);

-- ==============================================
-- FILE: ancient_brutality.sql
-- GENERATED: 20260721231140
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
(51415, 0, 7, 8523776, 0, 0, 262144, 0, 0, 0, 0),
(51416, 0, 7, 8523776, 0, 0, 262144, 0, 0, 0, 0);

-- ==============================================
-- FILE: balance_of_all_things.sql
-- GENERATED: 20260721231140
-- ==============================================
DELETE FROM `spell_learn_spell`
WHERE `entry` IN (
    51433, 51434, 51435
    )
  AND `SpellID` IN (
    51672, 51673, 51674
    );

DELETE FROM `spell_proc_event`
WHERE `entry` IN (
    51433, 51434, 51435, 51672, 51673, 51674
    );

UPDATE `spell_template`
SET `script_name` = 'spell_druid_balance_of_all_things'
WHERE `entry` IN (
    51433, 51434, 51435
    );

UPDATE `spell_template`
SET `script_name` = 'spell_druid_starfire'
WHERE `entry` IN (
    2912, 8949, 8950, 8951, 9875, 9876, 25298, 26986
    );

-- ==============================================
-- FILE: carnage.sql
-- GENERATED: 20260721231140
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_druid_carnage'
WHERE `entry` IN (
    16998, 16999
    );

UPDATE `spell_proc_event`
SET
    `SpellFamilyMask0` = 137438955520,
    `SpellFamilyMask1` = 8388608,
    `SpellFamilyMask2` = 0,
    `procFlags` = 16,
    `procEx` = 0,
    `Cooldown` = 0
WHERE `entry` IN (
    16998, 16999
    );

-- ==============================================
-- FILE: eclipse.sql
-- GENERATED: 20260721231140
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_druid_eclipse'
WHERE `entry` IN (
    51444, 51445
    );

UPDATE `spell_proc_event`
SET `procEx` = 3,
    `Cooldown` = 30
WHERE `entry` IN (
    51444, 51445
    );

UPDATE `spell_template`
SET `script_name` = 'spell_druid_wrath'
WHERE `entry` IN (
    5176, 5177, 5178, 5179, 5180, 6780, 8905, 9912, 26984
    );

INSERT INTO `spell_mod`
(
    `Id`,
    `SpellIconID`,
    `Comment`
)
VALUES
(51445, 2230, 'Eclipse (Arcane) - distinct icon for stacking heuristic')
ON DUPLICATE KEY UPDATE
    `SpellIconID` = VALUES(`SpellIconID`),
    `Comment` = VALUES(`Comment`);

-- ==============================================
-- FILE: open_wounds.sql
-- GENERATED: 20260721231140
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_druid_open_wounds'
WHERE `entry` IN (
    1082, 3029, 5201, 9849, 9850, 24187
    );

UPDATE `spell_template`
SET `script_name` = 'spell_druid_ferocious_bite'
WHERE `entry` IN (
    22557, 22568, 22827, 22828, 22829, 27557, 31018
    );

-- ==============================================
-- FILE: preservation.sql
-- GENERATED: 20260721231140
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_druid_preservation'
WHERE `entry` IN (
    51448, 51449, 51450
    );

