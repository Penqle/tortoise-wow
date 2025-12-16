-- Remove cooldown from Hand of Edward the Odd.
UPDATE `spell_template` SET `recoveryTime`=0 WHERE `entry`=18803;
