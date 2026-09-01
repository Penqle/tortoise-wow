-- ==============================================
-- FILE: book_of_prayer.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_priest_book_of_prayer'
WHERE `entry` IN (
    52943, 52944
    );

-- ==============================================
-- FILE: chastise.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.65
WHERE `entry` IN (
    51478, 51479, 51480
    );

UPDATE `spell_template`
SET `script_name` = 'spell_priest_chastise'
WHERE `entry` IN (
    51478, 51479, 51480
    );

-- ==============================================
-- FILE: desperate_prayer.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.2278
WHERE `entry` = 13908;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.3366
WHERE `entry` = 19236;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.36465
WHERE `entry` IN (
    19238, 19240, 19241, 19242, 19243
    );

-- ==============================================
-- FILE: enlighten.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_priest_enlighten'
WHERE `entry` = 51475;

UPDATE `spell_template`
SET `script_name` = 'spell_priest_enlighten_link'
WHERE `entry` = 51476;

DELETE FROM `spell_proc_event`
WHERE `entry` = 51475;

-- ==============================================
-- FILE: flash_heal.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.36465
WHERE `entry` IN (
    2061, 9472, 9473, 9474, 10915, 10916, 10917
    );

-- ==============================================
-- FILE: force_of_will.sql
-- GENERATED: 20260901101113
-- ==============================================
INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(18544, 52650, 1),
(18547, 52651, 1),
(18548, 52652, 1),
(18549, 52653, 1),
(18550, 52654, 1);

-- ==============================================
-- FILE: greater_heal.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.72845
WHERE `entry` IN (
    2060, 10963, 10964, 10965, 25314
    );

-- ==============================================
-- FILE: heal.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.61965
WHERE `entry` = 2054;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.72845
WHERE `entry` IN (
    2055, 6063, 6064
    );

-- ==============================================
-- FILE: holy_fire.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 1
WHERE `entry` IN (
    14914, 15262, 15263, 15264, 15265, 15266, 15267, 15261
    );

-- ==============================================
-- FILE: holy_nova.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.15
WHERE `entry` IN (
    15237, 15430, 15431, 27799, 27800, 27801
    );

UPDATE `spell_threat`
SET `multiplier` = 0.75
WHERE `entry` = 15237;

UPDATE `spell_template`
SET `script_name` = 'spell_priest_holy_nova'
WHERE `entry` IN (
    23455, 23458, 23459, 27803, 27804, 27805
    );

-- ==============================================
-- FILE: holy_reach.sql
-- GENERATED: 20260901101113
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(27789, 0, 10738466944),
(27790, 0, 10738466944);


-- ==============================================
-- FILE: lesser_heal.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.10455
WHERE `entry` = 2050;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.19465
WHERE `entry` = 2052;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.3791
WHERE `entry` = 2053;

-- ==============================================
-- FILE: lightwell.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.17
WHERE `entry` = 7001;

UPDATE `spell_template`
SET `script_name` = 'spell_priest_lightwell'
WHERE `entry` = 724;

-- ==============================================
-- FILE: mind_blast.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.6
WHERE `entry` IN (
    8103, 8104, 8105, 8106, 10945, 10946, 10947
    );

UPDATE `spell_threat`
SET `multiplier` = 1.7
WHERE `entry` = 8092;

-- ==============================================
-- FILE: mind_flay.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.3
WHERE `entry` IN (
    15407, 17311, 17312, 17313, 17314, 18807
    );

-- ==============================================
-- FILE: night_elf_racial_quest.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `quest_template`
SET `RewSpell` = 52648
WHERE `entry` IN (
    5672, 5673, 5674, 5675
    );

-- ==============================================
-- FILE: pain_spike.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.43
WHERE `entry` IN (
    45555, 57701, 57704, 57707
    );

UPDATE `spell_template`
SET `script_name` = 'spell_priest_pain_spike'
WHERE `entry` IN (
    57701, 57704, 57707
    );

DELETE FROM `spell_chain`
WHERE `spell_id` = 45556;

UPDATE `spell_chain`
SET `prev_spell` = 0,
    `first_spell` = 45555,
    `rank` = 1,
    `req_spell` = 0
WHERE `spell_id` = 45555;

INSERT INTO `spell_chain`
(
    `spell_id`,
    `prev_spell`,
    `first_spell`,
    `rank`,
    `req_spell`
)
VALUES
(57701,45555,45555,2,0),
(57704,57701,45555,3,0),
(57707,57704,45555,4,0);

-- ==============================================
-- FILE: power_word_shield.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.35
WHERE `entry` IN (
    3747, 6065, 6066, 10898, 10899, 10900, 10901
    );

-- ==============================================
-- FILE: prayer_of_healing.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.2431
WHERE `entry` IN (
    596, 996, 10960, 10961, 25316
    );

-- ==============================================
-- FILE: renew.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.09350
WHERE `entry` = 139;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.13175
WHERE `entry` = 6074;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.17
WHERE `entry` IN (
    6075, 6076, 6077, 6078, 10927, 10928, 10929, 25315
    );

-- ==============================================
-- FILE: searing_shot.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.33
WHERE `entry` IN (
    52638, 52640, 52642, 52644, 52646
    );

-- ==============================================
-- FILE: shadow_mend.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.5
WHERE `entry` = 45554;

UPDATE `spell_template`
SET `script_name` = 'spell_priest_shadow_mend'
WHERE `entry` = 45554;

-- ==============================================
-- FILE: smite.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.12915
WHERE `entry` = 585;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.28455
WHERE `entry` = 591;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.5817
WHERE `entry` = 598;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.7497
WHERE `entry` IN (
    984, 1004, 6060, 10933, 10934, 45968
    );

-- ==============================================
-- FILE: spirit_tap.sql
-- GENERATED: 20260901101113
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
(15270, 0, 6, 8192, 0, 0, 65538, 2, 0, 0, 0),
(15335, 0, 6, 8192, 0, 0, 65538, 2, 0, 0, 0),
(15336, 0, 6, 8192, 0, 0, 65538, 2, 0, 0, 0),
(15337, 0, 6, 8192, 0, 0, 65538, 2, 0, 0, 0),
(15338, 0, 6, 8192, 0, 0, 65538, 2, 0, 0, 0);

-- ==============================================
-- FILE: starshards.sql
-- GENERATED: 20260901101113
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.2
WHERE `entry` = 10797;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.35
WHERE `entry` = 19296;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.4
WHERE `entry` IN (
    19299, 19302, 19303, 19304, 19305
    );

-- ==============================================
-- FILE: vampiric_embrace.sql
-- GENERATED: 20260901101113
-- ==============================================
INSERT INTO `spell_threat`
(
    `entry`,
    `Threat`,
    `multiplier`,
    `ap_bonus`
)
VALUES
(45966, 0, 0, 0);

