-- Elemental Devastation only triggers from Lightning Bolt, Chain Lightning, and Shock spells.
-- It does not trigger from Flametongue Weapon and Frostbrand weapon or non-Shamman spells.
-- https://classic.wowhead.com/spell=29180/elemental-devastation#comments
UPDATE `spell_proc_event` SET `SpellFamilyName`=11, `SpellFamilyMask0`=2416967683 WHERE `entry`=30160;

-- Remove spell mods preventing item effects from triggering procs.
DELETE FROM `spell_mod` WHERE `Id` IN (7712, 7714, 15239, 16614);
