-- Fix Arcane Impact not affecting Arcane Missiles.
UPDATE `spell_affect` SET `SpellFamilyMask` = (`SpellFamilyMask` | 2097152) WHERE `entry` IN (11242, 12467, 12469);
