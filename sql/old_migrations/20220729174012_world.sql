-- Fix Libram of Fervor holy damage increase part not working.
UPDATE `spell_template` SET `effectMiscValue2`=8 WHERE `entry`=28852;
