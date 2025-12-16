-- Remove cost from Crusader Strike debuff.
UPDATE `spell_template` SET `manaCost`=0 WHERE `entry` IN (45409, 45410, 45411, 45412, 45413);

