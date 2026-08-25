-- ==============================================
-- FILE: aftermath.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Aftermath rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(18120, 0, 5, 9189, 9189, 9189, 0, 0, 0, 0, 0),
(18121, 0, 5, 9189, 9189, 9189, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: ancient-rites-cooldown.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Ancient Rites (Cooldown) spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(58240, 0, 9007267974219776);

-- ==============================================
-- FILE: ancient-rites-totemic-slam.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Ancient Rites (Totemic Slam) spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(58241, 0, 9007199254740992);

-- ==============================================
-- FILE: arcane-concentration.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Arcane Concentration rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12574, 0, 3, 0, 0, 0, 65536, 0, 0, 0, 1),
(12575, 0, 3, 0, 0, 0, 65536, 0, 0, 0, 1),
(12576, 0, 3, 0, 0, 0, 65536, 0, 0, 0, 1),
(12577, 0, 3, 0, 0, 0, 65536, 0, 0, 0, 1);

-- ==============================================
-- FILE: arcane-instability.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Remove invalid Arcane Instability spell_affect rows that do not load for their aura type
DELETE FROM `spell_affect`
WHERE (`entry` = 15058 AND `effectId` = 0) OR
    (`entry` = 15059 AND `effectId` = 0) OR
    (`entry` = 15060 AND `effectId` = 0);

-- Arcane Instability proc event
REPLACE INTO `spell_proc_event`
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
(15058, 0, 3, 2233056, 0, 0, 65536, 0, 0, 0, 0),
(15059, 0, 3, 2233056, 0, 0, 65536, 0, 0, 0, 0),
(15060, 0, 3, 2233056, 0, 0, 65536, 0, 0, 0, 0);

-- ==============================================
-- FILE: balance-of-all-things.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Balance of All Things rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(51434, 0, 7, 2097152, 0, 0, 262144, 0, 0, 0, 0),
(51435, 0, 7, 2097152, 0, 0, 262144, 0, 0, 0, 0);

-- ==============================================
-- FILE: blackjack.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Blackjack rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(14094, 0, 8, 128, 128, 128, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: blackout.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Blackout rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(15323, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15324, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15325, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15326, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: blessed-recovery.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Blessed Recovery rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(27815, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0),
(27816, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);

-- ==============================================
-- FILE: blessed-strikes.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Blessed Strikes spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51317, 1, 4294967296),
(51317, 2, 4294967296),
(51318, 1, 4294967296),
(51318, 2, 4294967296),
(51319, 1, 4294967296),
(51319, 2, 4294967296),
(51320, 1, 4294967296),
(51320, 2, 4294967296),
(51321, 1, 4294967296),
(51321, 2, 4294967296);

-- Blessed Strikes proc event
REPLACE INTO `spell_proc_event`
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
(51317, 0, 10, 34359738368, 0, 0, 69904, 0, 0, 0, 0),
(51318, 0, 10, 34359738368, 0, 0, 69904, 0, 0, 0, 0),
(51319, 0, 10, 34359738368, 0, 0, 69904, 0, 0, 0, 0),
(51320, 0, 10, 34359738368, 0, 0, 69904, 0, 0, 0, 0),
(51321, 0, 10, 34359738368, 0, 0, 69904, 0, 0, 0, 0);

-- ==============================================
-- FILE: blessed-wildfire-chastise.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Blessed Wildfire - Chastise spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52940, 1, 10737418240);

-- Blessed Wildfire - Chastise proc event
REPLACE INTO `spell_proc_event`
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
(52940, 0, 6, 10737418240, 0, 0, 87040, 0, 0, 0, 0);

-- ==============================================
-- FILE: blessing-of-sanctuary.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Blessing of Sanctuary rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(20204, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(20912, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(20913, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(20914, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);

-- ==============================================
-- FILE: blood-frenzy.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Blood Frenzy rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(16954, 0, 0, 4398046744576, 4398046744576, 4398046744576, 0, 2, 0, 0, 0),
(16955, 0, 0, 4398046744576, 4398046744576, 4398046744576, 0, 2, 0, 0, 0),
(16956, 0, 0, 4398046744576, 4398046744576, 4398046744576, 0, 2, 0, 0, 0),
(16957, 0, 0, 4398046744576, 4398046744576, 4398046744576, 0, 2, 0, 0, 0);

-- ==============================================
-- FILE: calming-river.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Calming River spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(47357, 0, 274877906944);

-- ==============================================
-- FILE: carnage.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Remove invalid Carnage spell_affect rows that do not load for their aura type
DELETE FROM `spell_affect`
WHERE (`entry` = 16998 AND `effectId` = 0) OR
    (`entry` = 16999 AND `effectId` = 0);

-- Carnage proc event
REPLACE INTO `spell_proc_event`
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
(16998, 0, 7, 137438959616, 0, 0, 16, 0, 0, 0, 0),
(16999, 0, 7, 137438959616, 0, 0, 16, 0, 0, 0, 0);

-- ==============================================
-- FILE: dark-harvest-cooldown.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Dark Harvest Cooldown spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52604, 0, 274877906944);

-- ==============================================
-- FILE: deprecated-balance-of-all-things.sql
-- GENERATED: 20260504214035
-- ==============================================
-- [Deprecated] Balance of All Things rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(51673, 0, 7, 2, 0, 0, 327680, 0, 0, 0, 0),
(51674, 0, 7, 2, 0, 0, 327680, 0, 0, 0, 0),
(51675, 0, 7, 2, 0, 0, 327680, 0, 0, 0, 0),
(51676, 0, 7, 2, 0, 0, 327680, 0, 0, 0, 0);

-- ==============================================
-- FILE: deprecated-electrify.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Remove invalid [Deprecated] Electrify spell_affect rows that do not load for their aura type
DELETE FROM `spell_affect`
WHERE (`entry` = 16089 AND `effectId` = 0);

-- [Deprecated] Electrify proc event
REPLACE INTO `spell_proc_event`
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
(16089, 0, 11, 20723008519, 0, 0, 65536, 0, 0, 0, 0);

-- ==============================================
-- FILE: deprecated-improved-hamstring.sql
-- GENERATED: 20260504214035
-- ==============================================
-- [Deprecated] Improved Hamstring rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12668, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0),
(23695, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: druid-taunt-hit-chance-bonus.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Druid Taunt Hit Chance Bonus spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52363, 0, 34359738368);

-- ==============================================
-- FILE: elemental-weapons.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Remove invalid Elemental Weapons spell_affect rows that do not load for their aura type
DELETE FROM `spell_affect`
WHERE (`entry` = 16266 AND `effectId` = 2) OR
    (`entry` = 29079 AND `effectId` = 2) OR
    (`entry` = 29080 AND `effectId` = 2);

-- Elemental Weapons proc event
REPLACE INTO `spell_proc_event`
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
(16266, 0, 11, 0, 0, 8388608, 4, 0, 0, 0, 0),
(29079, 0, 11, 0, 0, 8388608, 4, 0, 0, 0, 0),
(29080, 0, 11, 0, 0, 8388608, 4, 0, 0, 0, 0);

-- ==============================================
-- FILE: elunes-grace.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Elune's Grace rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(19289, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0),
(19291, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0),
(19292, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0),
(19293, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0);

-- ==============================================
-- FILE: entrapment.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Entrapment rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(19387, 0, 9, 20, 0, 0, 0, 0, 0, 0, 0),
(19388, 0, 9, 20, 0, 0, 0, 0, 0, 0, 0),
(19389, 0, 9, 20, 0, 0, 0, 0, 0, 0, 0),
(19390, 0, 9, 20, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: exorcism-cooldown-reduction.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Exorcism Cooldown Reduction spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51823, 0, 1099511627776);

-- ==============================================
-- FILE: exorcism-hit-chance-bonus.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Exorcism Hit Chance Bonus spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51822, 0, 1099511627776);

-- ==============================================
-- FILE: flash-freeze.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Flash Freeze spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52500, 0, 34360262656),
(52500, 1, 34360262656);

-- ==============================================
-- FILE: gag-order.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Gag Order rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12958, 0, 4, 2048, 2048, 2048, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: holy-might-strength-bonus.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Holy Might Strength Bonus spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51832, 0, 2199023255552);

-- ==============================================
-- FILE: holy-shield.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Holy Shield rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(20169, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(20927, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(20928, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);

-- ==============================================
-- FILE: illumination.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Illumination rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(20212, 0, 10, 3223322624, 3223322624, 3223322624, 0, 2, 0, 0, 0),
(20213, 0, 10, 3223322624, 3223322624, 3223322624, 0, 2, 0, 0, 0),
(20214, 0, 10, 3223322624, 3223322624, 3223322624, 0, 2, 0, 0, 0),
(20215, 0, 10, 3223322624, 3223322624, 3223322624, 0, 2, 0, 0, 0);

-- ==============================================
-- FILE: impact.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Impact rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12357, 4, 0, 0, 0, 0, 65536, 0, 0, 0, 0),
(12358, 4, 0, 0, 0, 0, 65536, 0, 0, 0, 0),
(12359, 4, 0, 0, 0, 0, 65536, 0, 0, 0, 0),
(12360, 4, 0, 0, 0, 0, 65536, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-aquatic-form.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Aquatic Form spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(46870, 0, 17592186044416);

-- ==============================================
-- FILE: improved-balance-of-all-things.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Balance of All Things spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52342, 0, 1099511627776);

-- ==============================================
-- FILE: improved-blizzard.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Blizzard rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12487, 0, 3, 128, 128, 128, 327680, 0, 0, 0, 0),
(12488, 0, 3, 128, 128, 128, 327680, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-concussive-shot.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Concussive Shot spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(24465, 1, 576);

-- Improved Concussive Shot rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(19412, 0, 0, 512, 512, 512, 0, 0, 0, 0, 0),
(19413, 0, 0, 512, 512, 512, 0, 0, 0, 0, 0),
(19414, 0, 0, 512, 512, 512, 0, 0, 0, 0, 0),
(19415, 0, 0, 512, 512, 512, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-counterspell.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Counterspell rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12598, 0, 3, 16384, 16384, 16384, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-curse-of-doom.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Curse of Doom spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52605, 0, 10737418240),
(52605, 1, 10737418240),
(52605, 2, 10737418240);

-- ==============================================
-- FILE: improved-earthquake.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Earthquake spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(46114, 0, 1125899906842624),
(46114, 1, 2251799813685248);

-- ==============================================
-- FILE: improved-enlightened.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Enlightened spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52888, 0, 34359738368);

-- ==============================================
-- FILE: improved-kick.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Kick rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(13867, 0, 0, 16, 16, 16, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-mending-light-heal.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Mending Light Heal spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(46000, 0, 4294967296);

-- ==============================================
-- FILE: improved-mend-pet.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Mend Pet rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(19573, 0, 9, 8388608, 8388608, 8388608, 262144, 262144, 0, 0, 0);

-- ==============================================
-- FILE: improved-resonance-cascade.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Resonance Cascade spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52598, 0, 274877906944);

-- ==============================================
-- FILE: improved-revenge.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Revenge rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12799, 0, 0, 1024, 1024, 1024, 0, 0, 0, 0, 0),
(12800, 0, 0, 1024, 1024, 1024, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-shield-slam.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Shield Slam spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51598, 0, 4328521728),
(51599, 0, 4328521728);

-- Improved Shield Slam proc event
REPLACE INTO `spell_proc_event`
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
(51598, 0, 4, 0, 4328521728, 0, 16, 0, 0, 0, 0),
(51599, 0, 4, 0, 4328521728, 0, 16, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-siphon-life.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Siphon Life spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52628, 1, 4294967296);

-- Improved Siphon Life proc event
REPLACE INTO `spell_proc_event`
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
(52628, 0, 5, 4294967296, 0, 0, 262144, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-spirit-link.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Spirit Link spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51894, 0, 70368744177664);

-- ==============================================
-- FILE: improved-starfire.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Starfire rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(16923, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0),
(16924, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0),
(16925, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0),
(16926, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0),
(45743, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0),
(45744, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0),
(45745, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: improved-stones.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Stones spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51712, 0, 137438953472),
(51712, 1, 68719476736),
(51713, 0, 137438953472),
(51713, 1, 68719476736);

-- ==============================================
-- FILE: improved-whirlwind.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Whirlwind spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(24431, 0, 34359738368);

-- ==============================================
-- FILE: improved-wing-clip.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Improved Wing Clip rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(19232, 0, 0, 64, 64, 64, 0, 0, 0, 0, 0),
(19233, 0, 0, 64, 64, 64, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: lightning-shield.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Lightning Shield rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(8134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(10431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(10432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);

-- ==============================================
-- FILE: master-summoner.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Master Summoner spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(18709, 2, 549755813888),
(18710, 2, 549755813888);

-- ==============================================
-- FILE: molten-blast-cast-time-reduction.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Molten Blast Cast Time Reduction spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(46113, 0, 562950221856768);

-- ==============================================
-- FILE: molten-core.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Molten Core spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(46110, 0, 562950221856768);

-- ==============================================
-- FILE: nightfall.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Nightfall rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(18095, 0, 5, 10, 10, 10, 262144, 0, 0, 0, 0);

-- ==============================================
-- FILE: oracle-chastise-duration.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Oracle Chastise Duration spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51789, 0, 10737418240);

-- ==============================================
-- FILE: purifying-flames.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Purifying Flames rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(51471, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: pyroclasm.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Pyroclasm rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(18073, 0, 0, 608, 608, 608, 328704, 0, 0, 0, 0);

-- ==============================================
-- FILE: ravager.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Ravager spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51616, 0, 34359738368),
(51617, 0, 34359738368),
(51618, 0, 34359738368);

-- ==============================================
-- FILE: restorative-totems.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Restorative Totems spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(16187, 1, 4504149383184384),
(16205, 1, 4504149383184384),
(16206, 1, 4504149383184384),
(16207, 1, 4504149383184384),
(16208, 1, 4504149383184384);

-- ==============================================
-- FILE: ruthlessness.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Ruthlessness rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(14160, 0, 0, 4063232, 4063232, 4063232, 0, 0, 0, 0, 0),
(14161, 0, 0, 4063232, 4063232, 4063232, 0, 0, 0, 0, 0);

-- ==============================================
-- FILE: savage-bite-cost-reduction.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Savage Bite Cost Reduction spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52355, 0, 137438953472);

-- ==============================================
-- FILE: seal-fate.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Seal Fate rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(14190, 0, 8, 1107296782, 0, 0, 0, 2, 0, 0, 0),
(14193, 0, 8, 1107296782, 0, 0, 0, 2, 0, 0, 0),
(14194, 0, 8, 1107296782, 0, 0, 0, 2, 0, 0, 0),
(14195, 0, 8, 1107296782, 0, 0, 0, 2, 0, 0, 0);

-- ==============================================
-- FILE: seal-of-command.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Seal of Command rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(20915, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1),
(20918, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1),
(20919, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1),
(20920, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1);

-- ==============================================
-- FILE: searing-light.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Searing Light rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(51467, 0, 6, 1215299712, 0, 0, 327680, 2, 0, 0, 0),
(51468, 0, 6, 1215299712, 0, 0, 327680, 2, 0, 0, 0);

-- ==============================================
-- FILE: shadowguard.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Shadowguard rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(19308, 0, 0, 0, 0, 0, 0, 1027, 0, 0, 3),
(19309, 0, 0, 0, 0, 0, 0, 1027, 0, 0, 3),
(19310, 0, 0, 0, 0, 0, 0, 1027, 0, 0, 3),
(19311, 0, 0, 0, 0, 0, 0, 1027, 0, 0, 3),
(19312, 0, 0, 0, 0, 0, 0, 1027, 0, 0, 3);

-- ==============================================
-- FILE: shadow-vulnerability.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Shadow Vulnerability rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(17796, 0, 5, 1, 1, 1, 0, 2, 0, 0, 0),
(17801, 0, 5, 1, 1, 1, 0, 2, 0, 0, 0),
(17802, 0, 5, 1, 1, 1, 0, 2, 0, 0, 0),
(17803, 0, 5, 1, 1, 1, 0, 2, 0, 0, 0);

-- ==============================================
-- FILE: shield-specialization.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Shield Specialization rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12724, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(12725, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(12726, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0),
(12727, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0);

-- ==============================================
-- FILE: stormstrike-lightning-strike-cooldown-bonus.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Stormstrike Lightning Strike Cooldown Bonus spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51841, 0, 6597069766656);

-- ==============================================
-- FILE: sweeping-strikes-death-wish-cost-reduction.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Sweeping Strikes Death Wish Cost Reduction spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(53206, 0, 206158430208);

-- ==============================================
-- FILE: swiftmend-reduced-cooldown.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Swiftmend Reduced Cooldown spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52346, 0, 8589934592);

-- ==============================================
-- FILE: t25-set-bonus-hammer-of-wrath.sql
-- GENERATED: 20260504214035
-- ==============================================
-- T2.5 Set Bonus - Hammer of Wrath spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52698, 0, 4398046511104);

-- ==============================================
-- FILE: tigers-fury-reduced-cost.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Tiger's Fury Reduced Cost spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52351, 0, 68719476736);

-- ==============================================
-- FILE: totemic-mastery.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Totemic Mastery spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(16189, 1, 281474976710656);

-- ==============================================
-- FILE: totem-of-distant-tremors.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Totem of Distant Tremors spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(52879, 0, 2251799813685248),
(52879, 1, 2251799813685248);

-- ==============================================
-- FILE: unbridled-wrath.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Unbridled Wrath rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(12999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(13000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(13001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(13002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3);

-- ==============================================
-- FILE: untamed-trapper.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Untamed Trapper spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(51586, 1, 4);

-- ==============================================
-- FILE: whirlwind-extra-targets.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Whirlwind Extra Targets spell affect
REPLACE INTO `spell_affect`
(
    `entry`,
    `effectId`,
    `SpellFamilyMask`
)
VALUES
(53204, 0, 34359738368);

-- ==============================================
-- FILE: winters-chill.sql
-- GENERATED: 20260504214035
-- ==============================================
-- Winter's Chill rank coverage proc event
REPLACE INTO `spell_proc_event`
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
(28592, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28593, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28594, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28595, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0);

