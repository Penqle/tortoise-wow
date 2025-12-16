-- Remove Snowball requirement from Frostbound Slasher recipe.
UPDATE `spell_template` SET `reagent6`=0, `reagentCount6`=0 WHERE `entry`=46666;
