-- ==============================================
-- FILE: claw_of_reckless_abandon.sql
-- GENERATED: 20260905075842
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_wild_thrash'
WHERE `entry` = 58137;

-- ==============================================
-- FILE: droplet_of_nordrassil.sql
-- GENERATED: 20260905075842
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
VALUES (58226, 0, 0, 0, 0, 0, 0, 1048584, 0, 0, 4);

-- ==============================================
-- FILE: elementium_reaper.sql
-- GENERATED: 20260905075842
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
VALUES (52910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20);

-- ==============================================
-- FILE: fetish_of_the_endless_bond.sql
-- GENERATED: 20260905075842
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_endless_bond'
WHERE `entry` = 58124;

UPDATE `spell_template`
SET `script_name` = 'spell_item_endless_bond_target'
WHERE `entry` = 58126;

-- ==============================================
-- FILE: heart_of_windhorn.sql
-- GENERATED: 20260905075842
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
VALUES (52829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);

-- ==============================================
-- FILE: idol_of_brambleskin.sql
-- GENERATED: 20260905075842
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52868, 0, 274877906944);

-- ==============================================
-- FILE: idol_of_equilibrium.sql
-- GENERATED: 20260905075842
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52845, 0, 1),
(52845, 1, 4);

UPDATE `spell_template`
SET `script_name` = 'spell_druid_idol_of_equilibrium'
WHERE `entry` IN (52924, 52925);

-- ==============================================
-- FILE: idol_of_the_thorned_grove.sql
-- GENERATED: 20260905075842
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
(52427, 0, 7, 512, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: libram_of_hallowed_ground.sql
-- GENERATED: 20260905075842
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
VALUES (52900, 0, 10, 32, 0, 0, 0, 524288, 0, 0, 0);

-- ==============================================
-- FILE: libram_of_the_exorciser.sql
-- GENERATED: 20260905075842
-- ==============================================
INSERT INTO `spell_mod`
(
    `Id`,
    `SpellFamilyName`,
    `SpellFamilyFlags`,
    `Comment`
)
VALUES
(2812, 10, 4398046511104, 'Holy Wrath family mask'),
(10318, 10, 4398046511104, 'Holy Wrath family mask');

INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES (52936, 0, 5497558138880);

-- ==============================================
-- FILE: pysans_new_greatsword.sql
-- GENERATED: 20260905075842
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_pysans_wrath'
WHERE `entry` = 58135;

-- ==============================================
-- FILE: shieldrender_talisman.sql
-- GENERATED: 20260905075842
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
VALUES (51146, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0);

-- ==============================================
-- FILE: totem_of_ancient_rites.sql
-- GENERATED: 20260905075842
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_shaman_totemic_slam'
WHERE `entry` = 45500;

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_hex'
WHERE `entry` = 45504;

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_feral_spirit'
WHERE `entry` = 45505;

-- ==============================================
-- FILE: totem_of_calm_cascades.sql
-- GENERATED: 20260905075842
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
(52834, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);

UPDATE `spell_template`
SET `effectBonusCoefficient1` = 0.15
WHERE `entry` = 52836;

-- ==============================================
-- FILE: totem_of_thundercall.sql
-- GENERATED: 20260905075842
-- ==============================================
INSERT INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52871, 0, 2199023255552);

UPDATE `spell_template`
SET `script_name` = 'spell_shaman_thundercall'
WHERE `entry` = 52872;

-- ==============================================
-- FILE: trifang_shredders.sql
-- GENERATED: 20260905075842
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_trifang_shredders'
WHERE `entry` = 58185;

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
VALUES (58185, 0, 0, 0, 0, 0, 20, 0, 0, 6, 0);

-- ==============================================
-- FILE: whispering_fragment_of_aln.sql
-- GENERATED: 20260905075842
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_whispers_of_aln'
WHERE `entry` = 58231;

UPDATE `spell_template`
SET `script_name` = 'spell_item_cacophony_of_knowledge'
WHERE `entry` = 58232;

-- ==============================================
-- FILE: will_of_the_chieftain.sql
-- GENERATED: 20260905075842
-- ==============================================
UPDATE `spell_template`
SET `script_name` = 'spell_item_will_of_the_chieftain'
WHERE `entry` = 58131;

