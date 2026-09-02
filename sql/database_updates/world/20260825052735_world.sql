-- ==============================================
-- FILE: aftermath.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_proc_event`
SET
    `SpellFamilyMask0` = 997,
    `SpellFamilyMask1` = 997,
    `SpellFamilyMask2` = 997
WHERE `entry` = 18119;

-- ==============================================
-- FILE: curse_of_doom.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_curse_of_doom'
WHERE `entry` = 603;

-- ==============================================
-- FILE: dark_harvest.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.03125,
    `effectBonusCoefficient2` = 0,
    `effectBonusCoefficient3` = 0,
    `script_name` = 'spell_warlock_dark_harvest'
WHERE `entry` IN (
    52550, 52551, 52552
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
(52550, 0, 52550, 1, 0),
(52551, 52550, 52550, 2, 0),
(52552, 52551, 52550, 3, 0);

-- ==============================================
-- FILE: demon_gate.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_demon_gate'
WHERE `entry` = 45908;

UPDATE `gameobject_template`
SET `script_name` = 'go_warlock_demon_gate'
WHERE `entry` = 1000512;

-- ==============================================
-- FILE: demonic_precision.sql
-- GENERATED: 20260825052735
-- ==============================================
INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(51715, 49554, 1),
(51716, 49555, 1),
(51717, 49556, 1);

-- ==============================================
-- FILE: demonic_sacrifice.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_demonic_sacrifice'
WHERE `entry` IN (
    18788, 18789, 18790, 18791, 18792
    );

-- ==============================================
-- FILE: drain_life.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_drain_life'
WHERE `entry` IN (
    689, 699, 709, 7651, 11699, 11700
    );

-- ==============================================
-- FILE: drain_soul.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0,
    `effectBonusCoefficient2` = 0.1,
    `effectBonusCoefficient3` = 1,
    `customFlags` = `customFlags` | 128
WHERE `entry` = 51687;

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_drain_soul'
WHERE `entry` IN (
    1120, 8288, 8289, 11675, 51687
    );

DELETE FROM `spell_mod`
WHERE `Id` IN (
    1120, 8288, 8289, 11675
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
(51687, 11675, 1120, 5, 0);


-- ==============================================
-- FILE: emberstorm.sql
-- GENERATED: 20260825052735
-- ==============================================
DELETE FROM `spell_affect`
WHERE `entry` IN (
  17954, 17955, 17956, 17957, 17958
  )
  AND `effectId` = 1;

-- ==============================================
-- FILE: enslave_demon.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_enslave_demon'
WHERE `entry` IN (
    1098, 11725, 11726, 20882, 51689, 51703, 53222
    );

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_enslave_demon_break_early'
WHERE `entry` = 52377;

-- ==============================================
-- FILE: felguard_spells.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.6
WHERE `entry` = 47350;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.25
WHERE `entry` = 52664;

-- ==============================================
-- FILE: fel_stamina.sql
-- GENERATED: 20260825052735
-- ==============================================
DELETE FROM `spell_disabled`
WHERE `entry` IN (
    18751, 18752
    );

-- ==============================================
-- FILE: felstone.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_felstone'
WHERE `entry` = 51697;

-- ==============================================
-- FILE: funnels.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_funnels'
WHERE `entry` IN (
    755, 3698, 3699, 3700, 11693, 11694, 11695, 1941, 45910, 45911
    );

-- ==============================================
-- FILE: hellfire.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient2` = 0.04125
WHERE `entry` IN (
    1949, 11683, 11684
    );

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_hellfire'
WHERE `entry` IN (
    1949, 11683, 11684
    );

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.04125
WHERE `entry` IN (
    5857, 11681, 11682
    );

-- ==============================================
-- FILE: imp_firebolt.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.1
WHERE `entry` = 3110;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.15
WHERE `entry` = 7799;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.2
WHERE `entry` = 7800;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.25
WHERE `entry` = 7801;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.3
WHERE `entry` = 7802;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.35
WHERE `entry` = 11762;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.4
WHERE `entry` = 11763;

-- ==============================================
-- FILE: infernal_immolation.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.25
WHERE `entry` IN (
    19483, 20153
    );

-- ==============================================
-- FILE: lash_of_pain.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.4
WHERE `entry` IN (
    7814, 7815, 7816, 11778
    );

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.5
WHERE `entry` = 11779;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.6
WHERE `entry` = 11780;

-- ==============================================
-- FILE: malediction.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `customFlags` = `customFlags` | 16384,
    `script_name` = 'spell_warlock_curse_of_agony'
WHERE `entry` IN (
    980, 1014, 6217, 11711, 11712, 11713
    );

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_malediction_trigger'
WHERE `entry` = 52670;

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_malediction_curse'
WHERE `entry` IN (
    702, 1108, 6205, 7646, 11707, 11708, 704, 7658, 7659, 11717,
    1490, 11721, 11722, 1714, 11719, 17862, 17937, 18223
    );

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_curse_of_idiocy'
WHERE `entry` = 1010;

-- ==============================================
-- FILE: master_demonologist.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_inferno'
WHERE `entry` IN (
    1122, 24670
    );

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_summon_felguard'
WHERE `entry` = 30146;

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_summon_doomguard'
WHERE `entry` IN (
    18541, 18662
    );

INSERT INTO `spell_pet_auras`
(
    `spell`,
    `pet`,
    `aura`
)
VALUES
(23785, 11859, 51725),
(23822, 11859, 51726),
(23823, 11859, 51727),
(23824, 11859, 51728),
(23825, 11859, 51729);

-- ==============================================
-- FILE: nether_studies.sql
-- GENERATED: 20260825052735
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51709, 0, 34401681408),
(51710, 0, 34401681408),
(51711, 0, 34401681408);

-- ==============================================
-- FILE: nightfall.sql
-- GENERATED: 20260825052735
-- ==============================================
DELETE FROM `spell_proc_event`
WHERE `entry` = 18094;

-- ==============================================
-- FILE: power_overwhelming.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_power_overwhelming'
WHERE `entry` = 51714;

-- ==============================================
-- FILE: rapid_deterioration.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_rapid_deterioration'
WHERE `entry` IN (
    52555, 52556
    );

INSERT INTO `spell_learn_spell`
(
    `entry`,
    `SpellID`,
    `Active`
)
VALUES
(52555, 52557, 1),
(52556, 52557, 1);

-- ==============================================
-- FILE: sacrifice.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 1
WHERE `entry` IN (
    7812, 19438, 19440, 19441
    );

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 1.1
WHERE `entry` = 19442;

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 1.2
WHERE `entry` = 19443;

-- ==============================================
-- FILE: searing_pain.sql
-- GENERATED: 20260825052735
-- ==============================================
DELETE FROM `spell_threat`
WHERE `entry` = 5676;

-- ==============================================
-- FILE: shadow_vulnerability.sql
-- GENERATED: 20260825052735
-- ==============================================
DELETE FROM `spell_proc_event`
WHERE `entry` = 17793;

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_shadow_vulnerability'
WHERE `entry` IN (
    17793, 17796, 17801, 17802, 17803
    );

-- ==============================================
-- FILE: siphon_life.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.1
WHERE `entry` IN (
    18265, 18879, 18880, 18881
    );

-- ==============================================
-- FILE: soothing_kiss.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_soothing_kiss'
WHERE `entry` IN (
    6360, 7813, 11784, 11785
    );

-- ==============================================
-- FILE: soul_entrapment.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_soul_entrapment'
WHERE `entry` IN (
    51706, 51707, 51708
    );

-- ==============================================
-- FILE: soul_fire.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 1.14
WHERE `entry` IN (
    6353, 17924, 51683, 51684
    );

INSERT INTO `spell_proc_event`
(
    `entry`,
    `SpellFamilyName`,
    `SpellFamilyMask0`,
    `SpellFamilyMask1`,
    `SpellFamilyMask2`,
    `procFlags`,
    `procEx`
)
VALUES
(51736, 5, 64, 64, 64, 65536, 524288);

-- ==============================================
-- FILE: soul_siphon.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_soul_siphon'
WHERE `entry` IN (
    52558, 52559, 52560
    );

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_death_coil'
WHERE `entry` IN (
    6789, 17925, 17926
    );

-- ==============================================
-- FILE: spell_chain.sql
-- GENERATED: 20260825052735
-- ==============================================
INSERT INTO `spell_chain`
(
    `spell_id`,
    `prev_spell`,
    `first_spell`,
    `rank`,
    `req_spell`
)
VALUES
(51683, 17924, 6353, 3, 0),
(51684, 51683, 6353, 4, 0);

-- ==============================================
-- FILE: the_binding_succubus.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `creature_template`
SET `faction` = 14
WHERE `entry` = 5677;

-- ==============================================
-- FILE: trainer_updates.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `npc_trainer`
SET `spellcost` = 6000
WHERE `spell` = 1571;

UPDATE `npc_trainer`
SET `spellcost` = 10000
WHERE `spell` = 18160;

UPDATE `npc_trainer`
SET `spellcost` = 13000
WHERE `spell` = 51685;

UPDATE `npc_trainer`
SET `spellcost` = 20000
WHERE `spell` = 51686;

UPDATE `npc_trainer`
SET `spellcost` = 26000
WHERE `spell` = 51688;

UPDATE `npc_trainer`
SET `spellcost` = 2500
WHERE `spell` = 51693;

UPDATE `npc_trainer`
SET `spellcost` = 9000
WHERE `spell` = 51696;

UPDATE `npc_trainer`
SET `spellcost` = 7000
WHERE `spell` = 51699;

UPDATE `npc_trainer`
SET `spellcost` = 11000
WHERE `spell` = 51702;

UPDATE `npc_trainer`
SET `spellcost` = 750
WHERE `spell` = 52553;

UPDATE `npc_trainer`
SET `spellcost` = 1300
WHERE `spell` = 52554;

UPDATE `npc_trainer`
SET `spellcost` = 18000
WHERE `spell` = 52753;

UPDATE `npc_trainer`
SET `reqlevel` = 36
WHERE `spell` = 51696;
-- ==============================================
-- FILE: unleashed_potential.sql
-- GENERATED: 20260825052735
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_warlock_unleashed_potential_effect'
WHERE `entry` IN (
    51718, 51719, 51720
    );

UPDATE `spell_template`
SET `script_name` = 'spell_warlock_unleashed_potential'
WHERE `entry` IN (
    51721, 51722, 51723
    );

