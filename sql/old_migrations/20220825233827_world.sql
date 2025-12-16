-- Reduce mana cost of some Felguard abilities.
UPDATE `spell_template` SET `manaCost`=300 WHERE `entry`=47350;
UPDATE `spell_template` SET `manaCost`=600 WHERE `entry` IN (47352, 47351);
