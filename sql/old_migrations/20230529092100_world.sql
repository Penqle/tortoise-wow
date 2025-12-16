-- Allow Elemental Devastation to proc from Flametongue Weapon.
UPDATE `spell_template` SET `attributesEx3`=67108864 WHERE `entry` IN (30160, 29179, 29180);
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = (`SpellFamilyMask0` | 2097152) WHERE `entry` = 30160;
