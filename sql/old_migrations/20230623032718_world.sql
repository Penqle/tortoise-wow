-- Remove target flags from 2 learning spells.
UPDATE `spell_template` SET `targets`=0 WHERE `entry` IN (45450, 45454);

