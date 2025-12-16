-- Fix engineering pet spells exploits.
UPDATE `skill_line_ability` SET `learn_on_get_skill`=0 WHERE `spell_id` IN (4073, 12749, 13166, 13258, 19804);
