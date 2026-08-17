-- ==============================================
-- FILE: bestial_discipline.sql
-- GENERATED: 20260809183358
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(19590, 1, 1649267441664),
(19592, 1, 1649267441664);

-- ==============================================
-- FILE: bestial_wrath.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_bestial_wrath'
WHERE `entry` = 19574;

-- ==============================================
-- FILE: coordinated_assault.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_strike_together_damage'
WHERE `entry` = 49557;

UPDATE `spell_template`
SET `script_name` = 'spell_hunter_coordinated_assault'
WHERE `entry` = 49559;

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
(49559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);
-- ==============================================
-- FILE: efficiency.sql
-- GENERATED: 20260809183358
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(19416, 0, 68719999488),
(19417, 0, 68719999488),
(19418, 0, 68719999488),
(19419, 0, 68719999488),
(19420, 0, 68719999488);

-- ==============================================
-- FILE: endless_quiver.sql
-- GENERATED: 20260809183358
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
(51517, 0, 9, 68719613953, 0, 0, 0, 0, 0, 0, 0),
(51518, 0, 9, 68719613953, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: experimental_ammunition.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_experimental_ammunition'
WHERE `entry` = 58108;

UPDATE `spell_template`
SET `script_name` = 'spell_hunter_experimental_ammunition_trigger'
WHERE `entry` IN (
    58112, 58113, 58114
    );

UPDATE `spell_template`
SET `customFlags` = 16384
WHERE `entry` = 58113;

-- ==============================================
-- FILE: hawk_eye.sql
-- GENERATED: 20260809183358
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(19498, 0, 68719999489),
(19499, 0, 68719999489);

-- ==============================================
-- FILE: improved_marksmanship.sql
-- GENERATED: 20260809183358
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51515, 0, 68719607808),
(51516, 0, 68719607808);

-- ==============================================
-- FILE: improved_primal_aspects.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_improved_primal_aspects'
WHERE `entry` IN (
    19549, 19550, 19551
    );

-- ==============================================
-- FILE: kill_command.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_kill_command'
WHERE `entry` = 41827;

UPDATE `spell_template`
SET `script_name` = 'spell_hunter_kill_command_damage'
WHERE `entry` = 41828;

-- ==============================================
-- FILE: lacerate.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_lacerate'
WHERE `entry` = 48049;

-- ==============================================
-- FILE: lock_and_load.sql
-- GENERATED: 20260809183358
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
(52920, 0, 9, 68719609856, 0, 0, 256, 2, 0, 0, 0);

UPDATE `spell_template`
SET `script_name` = 'spell_hunter_lock_and_load'
WHERE `entry` = 52920;

UPDATE `spell_template`
SET `script_name` = 'spell_hunter_aimed_shot'
WHERE `entry` IN (
    19434, 20900, 20901, 20902, 20903, 20904, 27632
    );

-- ==============================================
-- FILE: piercing_shots.sql
-- GENERATED: 20260809183358
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
(51512, 0, 9, 68719611904, 0, 0, 256, 2, 0, 0, 0),
(51513, 0, 9, 68719611904, 0, 0, 256, 2, 0, 0, 0);

INSERT INTO `spell_threat`
(
    `entry`,
    `Threat`,
    `multiplier`,
    `ap_bonus`
)
VALUES
(51514, 0, 0, 0);

UPDATE `spell_template`
SET `script_name` = 'spell_hunter_piercing_shots'
WHERE `entry` IN (
    51512, 51513
    );

-- ==============================================
-- FILE: resourcefulness.sql
-- GENERATED: 20260809183358
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51570, 0, 420906795330),
(51571, 0, 420906795330),
(51572, 0, 420906795330),
(51573, 0, 420906795330),
(51574, 0, 420906795330);

-- ==============================================
-- FILE: savage_strikes.sql
-- GENERATED: 20260809183358
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(19159, 0, 283467841536),
(19160, 0, 283467841536);

-- ==============================================
-- FILE: swift_aspects.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_swift_aspects'
WHERE `entry` IN (
    19552, 19553, 19554, 19555, 19556
    );

-- ==============================================
-- FILE: trainer_updates.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `npc_trainer`
SET `spellcost` = 2200, `reqlevel` = 20
WHERE `spell` = 1424;

UPDATE `npc_trainer`
SET `spellcost` = 200, `reqlevel` = 8
WHERE `spell` = 3128;

UPDATE `npc_trainer`
SET `spellcost` = 400
WHERE `spell` = 47296;

UPDATE `npc_trainer`
SET `reqlevel` = 20
WHERE `spell` = 47319;

UPDATE `npc_trainer`
SET `reqlevel` = 30
WHERE `spell` = 47320;

UPDATE `npc_trainer`
SET `reqlevel` = 40
WHERE `spell` = 47321;

UPDATE `npc_trainer`
SET `spellcost` = 36000, `reqlevel` = 50
WHERE `spell` = 47322;

UPDATE `npc_trainer`
SET `spellcost` = 50000, `reqlevel` = 60
WHERE `spell` = 47323;

UPDATE `npc_trainer`
SET `spellcost` = 46000
WHERE `spell` = 47338;

UPDATE `npc_trainer`
SET `spellcost` = 8000
WHERE `spell` = 51503;

UPDATE `npc_trainer`
SET `spellcost` = 16000
WHERE `spell` = 51504;

UPDATE `npc_trainer`
SET `spellcost` = 32000
WHERE `spell` = 51505;

UPDATE `npc_trainer`
SET `spellcost` = 48000
WHERE `spell` = 51506;

UPDATE `npc_trainer`
SET `spellcost` = 800
WHERE `spell` = 52417;

UPDATE `npc_trainer`
SET `spellcost` = 900
WHERE `spell` = 52418;

-- ==============================================
-- FILE: traps.sql
-- GENERATED: 20260809183358
-- ==============================================
INSERT INTO `spell_mod`
(
    `Id`,
    `Attributes`,
    `Comment`
)
VALUES
(1499, 268500992, 'Hunter traps: cannot be used in combat'),
(13795, 268500992, 'Hunter traps: cannot be used in combat'),
(13809, 268500992, 'Hunter traps: cannot be used in combat'),
(13813, 268500992, 'Hunter traps: cannot be used in combat'),
(14302, 268500992, 'Hunter traps: cannot be used in combat'),
(14303, 268500992, 'Hunter traps: cannot be used in combat'),
(14304, 268500992, 'Hunter traps: cannot be used in combat'),
(14305, 268500992, 'Hunter traps: cannot be used in combat'),
(14310, 268500992, 'Hunter traps: cannot be used in combat'),
(14311, 268500992, 'Hunter traps: cannot be used in combat'),
(14316, 268500992, 'Hunter traps: cannot be used in combat'),
(14317, 268500992, 'Hunter traps: cannot be used in combat');

-- ==============================================
-- FILE: untamed_trapper.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_trap'
WHERE `entry` IN (
    1499, 13795, 13809, 13813, 14302, 14303, 14304, 14305, 14310, 14311,
    14316, 14317
    );

-- ==============================================
-- FILE: volley.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_hunter_volley'
WHERE `entry` IN (
    1510, 14294, 14295
    );

-- ==============================================
-- FILE: poison_spit.sql
-- GENERATED: 20260809183358
-- ==============================================
UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.25
WHERE `entry` IN (
    46271, 46272, 46273
    );

