-- Limit Proclaim Champion to 1 target.
UPDATE `spell_template` SET `customFlags`=256 WHERE `entry`=45568;
