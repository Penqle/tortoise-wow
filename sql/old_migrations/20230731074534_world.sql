-- Fix spell haste part of Enchant Gloves - Minor Haste.
UPDATE `spell_template` SET `effectBaseDice3`=1 WHERE `entry`=13928;
