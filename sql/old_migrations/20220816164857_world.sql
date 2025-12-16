-- Fix Vampiric Touch mana percent.
UPDATE `spell_template` SET `effectBaseDice2`=1 WHERE `entry` IN (45557, 45558);
