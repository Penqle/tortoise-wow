-- Fix Elemental Weapons not affecting Flametongue Weapon.
UPDATE `spell_affect` SET `SpellFamilyMask` = `SpellFamilyMask` | 2097152 WHERE `entry` IN (16266, 29079, 29080) && `effectId`=1;
