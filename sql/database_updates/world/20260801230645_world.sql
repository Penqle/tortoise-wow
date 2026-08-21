-- ==============================================
-- FILE: blackjack.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_rogue_blackjack'
WHERE `entry` IN (
    6770, 2070, 11297, 2094
);

-- ==============================================
-- FILE: cloaked_in_shadows.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_rogue_cloaked_in_shadows'
WHERE `entry` = 52708;

-- ==============================================
-- FILE: envenom.sql
-- GENERATED: 20260801230645
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52531, 1, 268558336),
(52531, 2, 268558336);

-- ==============================================
-- FILE: improved_ambush.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_proc_event`
SET `SpellFamilyMask0` = 512
WHERE `entry` IN (
    14079, 14080, 14081
);

-- ==============================================
-- FILE: mark_for_death.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_rogue_mark_for_death'
WHERE `entry` = 52538;

UPDATE `spell_template`
SET `script_name` = 'spell_rogue_exploit_vulnerability'
WHERE `entry` = 52539;

-- ==============================================
-- FILE: noxious_assault.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_rogue_noxious_assault'
WHERE `entry` IN (
    52714, 52715, 52716, 52717
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
(52714, 0, 52714, 1, 0),
(52715, 52714, 52714, 2, 0),
(52716, 52715, 52714, 3, 0),
(52717, 52716, 52714, 4, 0);

-- ==============================================
-- FILE: poisons.sql
-- GENERATED: 20260801230645
-- ==============================================
INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(25347, 52576, 1);

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.01,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 11354;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.02,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 25349;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.01,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 8685;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.01,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 8689;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.02,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 11335;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.02,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 11336;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.05,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 11337;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.01,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 51922;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.019,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 52574;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.02,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 45876;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.0475,
    `customFlags` = `customFlags` | 8388608
WHERE `entry` = 45880;

-- ==============================================
-- FILE: remorseless_attacks.sql
-- GENERATED: 20260801230645
-- ==============================================
DELETE FROM `spell_affect`
WHERE `entry` IN (
    14143, 14149
)
AND `effectId` = 0;

-- ==============================================
-- FILE: setup.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_rogue_setup'
WHERE `entry` IN (
    13983, 14070, 14071
);

DELETE FROM `spell_proc_event`
WHERE `entry` = 13983;

-- ==============================================
-- FILE: shadow_of_death.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_rogue_shadow_of_death'
WHERE `entry` = 52710;

-- ==============================================
-- FILE: taste_for_blood.sql
-- GENERATED: 20260801230645
-- ==============================================
DELETE FROM `spell_affect`
WHERE `entry` IN (
    14174, 14175, 14176
)
AND `effectId` = 0;

DELETE FROM `spell_proc_event`
WHERE `entry` IN (
    14174, 14175, 14176
);

UPDATE `spell_template`
SET `script_name` = 'spell_rogue_rupture'
WHERE `entry` IN (
    1943, 8639, 8640, 11273, 11274, 11275
);

-- ==============================================
-- FILE: vigor.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `spell_proc_event`
SET `Cooldown` = 0
WHERE `entry` IN (
    14983, 52527
);

-- ==============================================
-- FILE: stale_spell_mods.sql
-- GENERATED: 20260801230645
-- ==============================================
DELETE FROM `spell_mod`
WHERE `Id` IN (
    2823, 2824, 5761, 8679, 8686, 8688, 8693, 11338, 11339, 11340,
    11355, 11356, 11399, 13219, 13225, 13226, 13227, 13877, 25351
);

DELETE FROM `spell_effect_mod`
WHERE (`Id`, `EffectIndex`) IN (
    (2823, 0), (2824, 0), (8679, 0), (8686, 0), (8688, 0),
    (11338, 0), (11339, 0), (11340, 0), (11355, 0), (11356, 0),
    (13877, 1), (25351, 0)
);

-- ==============================================
-- FILE: trainer_spells.sql
-- GENERATED: 20260801230645
-- ==============================================
UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 340;

UPDATE `npc_trainer`
SET `spellcost` = 270,
    `reqlevel` = 10
WHERE `spell` = 652;

UPDATE `npc_trainer`
SET `spellcost` = 270,
    `reqlevel` = 10
WHERE `spell` = 1424;

UPDATE `npc_trainer`
SET `spellcost` = 3600,
    `reqlevel` = 22
WHERE `spell` = 1728;

UPDATE `npc_trainer`
SET `spellcost` = 90,
    `reqlevel` = 6
WHERE `spell` = 1762;

UPDATE `npc_trainer`
SET `spellcost` = 1080,
    `reqlevel` = 14
WHERE `spell` = 1763;

UPDATE `npc_trainer`
SET `spellcost` = 3600,
    `reqlevel` = 22
WHERE `spell` = 1764;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 1765;

UPDATE `npc_trainer`
SET `spellcost` = 720,
    `reqlevel` = 12
WHERE `spell` = 1771;

UPDATE `npc_trainer`
SET `spellcost` = 5400,
    `reqlevel` = 26
WHERE `spell` = 1772;

UPDATE `npc_trainer`
SET `spellcost` = 24300,
    `reqlevel` = 42
WHERE `spell` = 1773;

UPDATE `npc_trainer`
SET `spellcost` = 46800,
    `reqlevel` = 58
WHERE `spell` = 1774;

UPDATE `npc_trainer`
SET `spellcost` = 90,
    `reqlevel` = 6
WHERE `spell` = 1780;

UPDATE `npc_trainer`
SET `spellcost` = 2610,
    `reqlevel` = 18
WHERE `spell` = 1781;

UPDATE `npc_trainer`
SET `spellcost` = 9,
    `reqlevel` = 1
WHERE `spell` = 1789;

UPDATE `npc_trainer`
SET `spellcost` = 2700,
    `reqlevel` = 20
WHERE `spell` = 1790;

UPDATE `npc_trainer`
SET `spellcost` = 18000,
    `reqlevel` = 40
WHERE `spell` = 1791;

UPDATE `npc_trainer`
SET `spellcost` = 48600,
    `reqlevel` = 60
WHERE `spell` = 1792;

UPDATE `npc_trainer`
SET `spellcost` = 5400,
    `reqlevel` = 26
WHERE `spell` = 1838;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 1845;

UPDATE `npc_trainer`
SET `spellcost` = 4500,
    `reqlevel` = 24
WHERE `spell` = 1846;

UPDATE `npc_trainer`
SET `spellcost` = 3600,
    `reqlevel` = 22
WHERE `spell` = 1858;

UPDATE `npc_trainer`
SET `spellcost` = 24300,
    `reqlevel` = 42
WHERE `spell` = 1859;

UPDATE `npc_trainer`
SET `spellcost` = 18000,
    `reqlevel` = 40
WHERE `spell` = 1862;

UPDATE `npc_trainer`
SET `spellcost` = 90,
    `reqlevel` = 4
WHERE `spell` = 2592;

UPDATE `npc_trainer`
SET `spellcost` = 720,
    `reqlevel` = 12
WHERE `spell` = 2593;

UPDATE `npc_trainer`
SET `spellcost` = 2700,
    `reqlevel` = 20
WHERE `spell` = 2594;

UPDATE `npc_trainer`
SET `spellcost` = 7200,
    `reqlevel` = 28
WHERE `spell` = 2595;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 2843;

UPDATE `npc_trainer`
SET `spellcost` = 16200,
    `reqlevel` = 38
WHERE `spell` = 2844;

UPDATE `npc_trainer`
SET `spellcost` = 270,
    `reqlevel` = 10
WHERE `spell` = 2984;

UPDATE `npc_trainer`
SET `spellcost` = 720,
    `reqlevel` = 12
WHERE `spell` = 3128;

UPDATE `npc_trainer`
SET `spellcost` = 2700,
    `reqlevel` = 20
WHERE `spell` = 3422;

UPDATE `npc_trainer`
SET `spellcost` = 31500,
    `reqlevel` = 50
WHERE `spell` = 3423;

UPDATE `npc_trainer`
SET `spellcost` = 90,
    `reqlevel` = 4
WHERE `spell` = 5167;

UPDATE `npc_trainer`
SET `spellcost` = 270,
    `reqlevel` = 10
WHERE `spell` = 5175;

UPDATE `npc_trainer`
SET `spellcost` = 180,
    `reqlevel` = 8
WHERE `spell` = 5278;

UPDATE `npc_trainer`
SET `spellcost` = 4500,
    `reqlevel` = 24
WHERE `spell` = 5768;

UPDATE `npc_trainer`
SET `spellcost` = 1620,
    `reqlevel` = 16
WHERE `spell` = 6480;

UPDATE `npc_trainer`
SET `spellcost` = 12600,
    `reqlevel` = 34
WHERE `spell` = 6505;

UPDATE `npc_trainer`
SET `spellcost` = 12600,
    `reqlevel` = 34
WHERE `spell` = 6511;

UPDATE `npc_trainer`
SET `spellcost` = 1620,
    `reqlevel` = 16
WHERE `spell` = 6734;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 6735;

UPDATE `npc_trainer`
SET `spellcost` = 2700,
    `reqlevel` = 20
WHERE `spell` = 6736;

UPDATE `npc_trainer`
SET `spellcost` = 1080,
    `reqlevel` = 14
WHERE `spell` = 6737;

UPDATE `npc_trainer`
SET `spellcost` = 180,
    `reqlevel` = 8
WHERE `spell` = 6763;

UPDATE `npc_trainer`
SET `spellcost` = 1620,
    `reqlevel` = 16
WHERE `spell` = 6764;

UPDATE `npc_trainer`
SET `spellcost` = 4500,
    `reqlevel` = 24
WHERE `spell` = 6765;

UPDATE `npc_trainer`
SET `spellcost` = 7200,
    `reqlevel` = 28
WHERE `spell` = 6769;

UPDATE `npc_trainer`
SET `spellcost` = 7200,
    `reqlevel` = 28
WHERE `spell` = 6771;

UPDATE `npc_trainer`
SET `spellcost` = 24300,
    `reqlevel` = 42
WHERE `spell` = 6775;

UPDATE `npc_trainer`
SET `spellcost` = 16200,
    `reqlevel` = 38
WHERE `spell` = 8622;

UPDATE `npc_trainer`
SET `spellcost` = 10800,
    `reqlevel` = 32
WHERE `spell` = 8625;

UPDATE `npc_trainer`
SET `spellcost` = 18000,
    `reqlevel` = 40
WHERE `spell` = 8626;

UPDATE `npc_trainer`
SET `spellcost` = 10800,
    `reqlevel` = 32
WHERE `spell` = 8630;

UPDATE `npc_trainer`
SET `spellcost` = 3600,
    `reqlevel` = 22
WHERE `spell` = 8634;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 8635;

UPDATE `npc_trainer`
SET `spellcost` = 16200,
    `reqlevel` = 38
WHERE `spell` = 8636;

UPDATE `npc_trainer`
SET `spellcost` = 18000,
    `reqlevel` = 40
WHERE `spell` = 8638;

UPDATE `npc_trainer`
SET `spellcost` = 7200,
    `reqlevel` = 28
WHERE `spell` = 8641;

UPDATE `npc_trainer`
SET `spellcost` = 14400,
    `reqlevel` = 36
WHERE `spell` = 8642;

UPDATE `npc_trainer`
SET `spellcost` = 31500,
    `reqlevel` = 50
WHERE `spell` = 8644;

UPDATE `npc_trainer`
SET `spellcost` = 270,
    `reqlevel` = 10
WHERE `spell` = 8648;

UPDATE `npc_trainer`
SET `spellcost` = 3600,
    `reqlevel` = 22
WHERE `spell` = 8651;

UPDATE `npc_trainer`
SET `spellcost` = 12600,
    `reqlevel` = 34
WHERE `spell` = 8652;

UPDATE `npc_trainer`
SET `spellcost` = 1080,
    `reqlevel` = 14
WHERE `spell` = 8678;

UPDATE `npc_trainer`
SET `spellcost` = 16200,
    `reqlevel` = 38
WHERE `spell` = 8695;

UPDATE `npc_trainer`
SET `spellcost` = 12600,
    `reqlevel` = 34
WHERE `spell` = 8697;

UPDATE `npc_trainer`
SET `spellcost` = 7200,
    `reqlevel` = 28
WHERE `spell` = 8701;

UPDATE `npc_trainer`
SET `spellcost` = 14400,
    `reqlevel` = 36
WHERE `spell` = 8723;

UPDATE `npc_trainer`
SET `spellcost` = 5400,
    `reqlevel` = 26
WHERE `spell` = 8727;

UPDATE `npc_trainer`
SET `spellcost` = 12600,
    `reqlevel` = 34
WHERE `spell` = 8728;

UPDATE `npc_trainer`
SET `spellcost` = 14400,
    `reqlevel` = 36
WHERE `spell` = 8810;

UPDATE `npc_trainer`
SET `spellcost` = 27900,
    `reqlevel` = 46
WHERE `spell` = 11199;

UPDATE `npc_trainer`
SET `spellcost` = 45000,
    `reqlevel` = 56
WHERE `spell` = 11200;

UPDATE `npc_trainer`
SET `spellcost` = 24300,
    `reqlevel` = 42
WHERE `spell` = 11270;

UPDATE `npc_trainer`
SET `spellcost` = 31500,
    `reqlevel` = 50
WHERE `spell` = 11271;

UPDATE `npc_trainer`
SET `spellcost` = 46800,
    `reqlevel` = 58
WHERE `spell` = 11272;

UPDATE `npc_trainer`
SET `spellcost` = 26100,
    `reqlevel` = 44
WHERE `spell` = 11276;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 52
WHERE `spell` = 11277;

UPDATE `npc_trainer`
SET `spellcost` = 48600,
    `reqlevel` = 60
WHERE `spell` = 11278;

UPDATE `npc_trainer`
SET `spellcost` = 26100,
    `reqlevel` = 44
WHERE `spell` = 11282;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 52
WHERE `spell` = 11283;

UPDATE `npc_trainer`
SET `spellcost` = 48600,
    `reqlevel` = 60
WHERE `spell` = 11284;

UPDATE `npc_trainer`
SET `spellcost` = 27900,
    `reqlevel` = 46
WHERE `spell` = 11287;

UPDATE `npc_trainer`
SET `spellcost` = 48600,
    `reqlevel` = 60
WHERE `spell` = 11288;

UPDATE `npc_trainer`
SET `spellcost` = 27900,
    `reqlevel` = 46
WHERE `spell` = 11291;

UPDATE `npc_trainer`
SET `spellcost` = 43200,
    `reqlevel` = 54
WHERE `spell` = 11292;

UPDATE `npc_trainer`
SET `spellcost` = 27900,
    `reqlevel` = 46
WHERE `spell` = 11295;

UPDATE `npc_trainer`
SET `spellcost` = 43200,
    `reqlevel` = 54
WHERE `spell` = 11296;

UPDATE `npc_trainer`
SET `spellcost` = 29700,
    `reqlevel` = 48
WHERE `spell` = 11298;

UPDATE `npc_trainer`
SET `spellcost` = 29700,
    `reqlevel` = 48
WHERE `spell` = 11301;

UPDATE `npc_trainer`
SET `spellcost` = 45000,
    `reqlevel` = 56
WHERE `spell` = 11302;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 52
WHERE `spell` = 11304;

UPDATE `npc_trainer`
SET `spellcost` = 46800,
    `reqlevel` = 58
WHERE `spell` = 11318;

UPDATE `npc_trainer`
SET `spellcost` = 26100,
    `reqlevel` = 44
WHERE `spell` = 11344;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 52
WHERE `spell` = 11345;

UPDATE `npc_trainer`
SET `spellcost` = 48600,
    `reqlevel` = 60
WHERE `spell` = 11346;

UPDATE `npc_trainer`
SET `spellcost` = 27900,
    `reqlevel` = 46
WHERE `spell` = 11360;

UPDATE `npc_trainer`
SET `spellcost` = 43200,
    `reqlevel` = 54
WHERE `spell` = 11361;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 52
WHERE `spell` = 11401;

UPDATE `npc_trainer`
SET `spellcost` = 10800,
    `reqlevel` = 32
WHERE `spell` = 13221;

UPDATE `npc_trainer`
SET `spellcost` = 2700,
    `reqlevel` = 20
WHERE `spell` = 14306;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 52
WHERE `spell` = 45879;

UPDATE `npc_trainer`
SET `spellcost` = 48600,
    `reqlevel` = 60
WHERE `spell` = 45883;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 60
WHERE `spell` = 47274;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 47297;

UPDATE `npc_trainer`
SET `spellcost` = 19800,
    `reqlevel` = 42
WHERE `spell` = 47298;

UPDATE `npc_trainer`
SET `spellcost` = 41400,
    `reqlevel` = 60
WHERE `spell` = 47312;

UPDATE `npc_trainer`
SET `spellcost` = 45000,
    `reqlevel` = 56
WHERE `spell` = 51925;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 51926;

UPDATE `npc_trainer`
SET `spellcost` = 7425,
    `reqlevel` = 48
WHERE `spell` = 52718;

UPDATE `npc_trainer`
SET `spellcost` = 11250,
    `reqlevel` = 56
WHERE `spell` = 52719;

UPDATE `npc_trainer`
SET `spellcost` = 9000,
    `reqlevel` = 30
WHERE `spell` = 52721;
