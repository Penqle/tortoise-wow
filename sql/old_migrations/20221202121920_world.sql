-- Add cooldown to some overpowered weapon procs.
UPDATE `spell_template` SET `recoveryTime`=60000 WHERE `entry`=18803; -- Hand of Edward the Odd
UPDATE `spell_template` SET `recoveryTime`=60000 WHERE `entry`=56; -- The Chief's Enforcer, Bludgeon of the Grinning Dog, Hammer of the Titans, The Judge's Gavel, Carved Ragetotem
UPDATE `spell_template` SET `recoveryTime`=30000 WHERE `entry`=17308; -- Hurd Smasher, Femur Club
UPDATE `spell_template` SET `recoveryTime`=15000 WHERE `entry`=23454; -- Ironfist, Enforcer's Blackjack
UPDATE `spell_template` SET `recoveryTime`=60000 WHERE `entry`=15283; -- Dark Iron Pulverizer
UPDATE `spell_template` SET `recoveryTime`=30000 WHERE `entry`=18278; -- Silent Fang
UPDATE `spell_template` SET `recoveryTime`=15000 WHERE `entry`=27559; -- Hushblade
