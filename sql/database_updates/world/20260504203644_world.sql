-- ==============================================
-- FILE: playercreateinfo_spell.sql
-- GENERATED: 20260504203644
-- ==============================================

-- Gnome/High Elf Arcane Resistance, Undead Shadow Resistance, and Goblin Chemical Superfreak removed.
DELETE FROM `playercreateinfo_spell`
WHERE (`race` IN (7, 10) AND `spell` = 20592)
   OR (`race` = 5 AND `spell` = 20579)
   OR (`race` = 9 AND `spell` = 46015);

-- High Elf Quel'dorei Meditation now has resource-specific versions.
DELETE FROM `playercreateinfo_spell`
WHERE `race` = 10
  AND `spell` = 46021;

REPLACE INTO `playercreateinfo_spell`
(
    `race`,
    `class`,
    `spell`,
    `note`
)
VALUES
(7, 1, 57733, 'Disassembler'),
(7, 3, 57733, 'Disassembler'),
(7, 4, 57733, 'Disassembler'),
(7, 8, 57733, 'Disassembler'),
(7, 9, 57733, 'Disassembler'),
(5, 1, 52522, 'Vengeance'),
(5, 3, 52522, 'Vengeance'),
(5, 4, 52522, 'Vengeance'),
(5, 5, 52522, 'Vengeance'),
(5, 8, 52522, 'Vengeance'),
(5, 9, 52522, 'Vengeance'),
(10, 1, 52523, 'Swiftness of the Rangers'),
(10, 2, 52523, 'Swiftness of the Rangers'),
(10, 3, 52523, 'Swiftness of the Rangers'),
(10, 4, 52523, 'Swiftness of the Rangers'),
(10, 5, 52523, 'Swiftness of the Rangers'),
(10, 8, 52523, 'Swiftness of the Rangers'),
(10, 1, 52524, 'Quel''dorei Meditation - Rage'),
(10, 2, 46021, 'Quel''dorei Meditation - Mana'),
(10, 3, 46021, 'Quel''dorei Meditation - Mana'),
(10, 4, 52525, 'Quel''dorei Meditation - Energy'),
(10, 5, 46021, 'Quel''dorei Meditation - Mana'),
(10, 8, 46021, 'Quel''dorei Meditation - Mana');

