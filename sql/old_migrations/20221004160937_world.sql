-- Fix Moonfury talent not affecting Wrath.
DELETE FROM `spell_effect_mod` WHERE `id` IN (16896, 16897, 16899, 16900, 16901);
