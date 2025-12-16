-- Fix description of hunter t3 8 piece set bonus.
UPDATE `spell_template` SET `description`='Reduces the mana cost of your Multi-Shot, Aimed Shot and True Shot by $s1.' WHERE `entry`=28751;
