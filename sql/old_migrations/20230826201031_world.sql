-- Remove mana cost from Righteous Fury.
UPDATE `spell_template` SET `manaCostPercentage`=0 WHERE `entry`=25780;
