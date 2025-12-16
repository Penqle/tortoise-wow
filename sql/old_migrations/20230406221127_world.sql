-- Make Moonfury damage increase apply after spell power.
UPDATE `spell_template` SET `effectMiscValue1`=0 WHERE `entry` IN (16896, 16897, 16899, 16900, 16901);
