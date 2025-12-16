-- Make Pain Spike benefit from same bonuses as Mind Flay.
UPDATE `spell_template` SET `spellFamilyFlags`=8388608 WHERE `entry`=45555;
