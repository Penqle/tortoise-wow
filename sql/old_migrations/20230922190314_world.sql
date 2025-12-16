-- Add spellflag SPELL_ATTR_EX2_IGNORE_LOS to these spells. Can be only serverside too.

UPDATE `spell_template` SET `attributesEx2` = 4 WHERE `entry` IN (8514, 10607, 10611, 8230, 8250, 10521, 15036, 8515, 10609, 10612, 8229, 8251, 10524  , 16388);

