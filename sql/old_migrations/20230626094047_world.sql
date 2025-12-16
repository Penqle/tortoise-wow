-- Fixed Captured Flame pet:

-- Companion tab:
REPLACE INTO `skill_line_ability` (`id`, `skill_id`, `spell_id`) VALUES (36438, 1005, 28871);

-- Make it a collection item:
REPLACE INTO `companion_spells` (`itemId`, `spellId`) VALUES (23083, 28871);
UPDATE `item_template` SET `spellid_1` = 46498 WHERE `entry` = 23083;

