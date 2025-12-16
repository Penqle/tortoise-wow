-- Make ranks 1 and 2 of Stormstrike share cooldown.
UPDATE `spell_template` SET `category`=971, `recoveryTime`=0, `categoryRecoveryTime`=20000 WHERE `entry`=17364;
UPDATE `spell_template` SET `category`=971, `recoveryTime`=0, `categoryRecoveryTime`=12000 WHERE `entry`=45521;
