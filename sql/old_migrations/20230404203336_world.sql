-- Reduce mana cost percent of Travel Form and Aquatic Form.
UPDATE `spell_template` SET `manaCostPercentage`=13 WHERE `entry` IN (783, 1066);
