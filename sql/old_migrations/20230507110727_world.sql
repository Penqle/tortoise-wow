-- Make it so Living Bomb can't crit.
UPDATE `spell_template` SET `attributesEx2`=536870912 WHERE `entry`=20476;
