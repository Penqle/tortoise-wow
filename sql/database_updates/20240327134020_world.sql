-- Do not send special AD auras to client at all.
UPDATE `spell_template` SET `attributes`=16777424, `spellIconId`=1 WHERE `entry` IN (23930, 24198, 29112, 29113);
