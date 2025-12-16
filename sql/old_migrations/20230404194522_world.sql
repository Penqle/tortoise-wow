-- Remove GCD from Savage Bite.
UPDATE `spell_template` SET `startRecoveryTime`=0 WHERE `entry`=45736;
