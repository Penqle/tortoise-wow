-- Fix Trueshot not initiating auto shoot.
UPDATE `spell_template` SET `attributesEx2`=131072, `modelNextSpell`=75 WHERE `entry` IN (3035, 3036, 3037, 3038, 3668, 45970, 45972, 45974);
