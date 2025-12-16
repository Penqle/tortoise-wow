-- Update misc data for Ritual of Refreshment and Ritual of Souls to match all similar spells.
UPDATE `spell_template` SET `nameSubText`='', `channelInterruptFlags`=48142, `rangeIndex`=4, `recoveryTime`=300000, `baseLevel`=60, `spellLevel`=60, `durationIndex`=3, `manaCostPercentage`=80, `effectDieSides1`=1 WHERE `entry` IN (45407, 45920);
