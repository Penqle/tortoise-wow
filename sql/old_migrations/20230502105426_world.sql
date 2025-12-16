-- Allow shifting out of Net-o-Matic self root.
UPDATE `spell_template` SET `attributes`=0, `customFlags`=2 WHERE `entry`=16566;

