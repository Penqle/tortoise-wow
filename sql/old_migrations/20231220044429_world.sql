-- Dark Iron Dwarf:

UPDATE `custom_character_skins` SET `skin_male` = 14, `skin_female` = 15 WHERE `token_id` = 50205;

-- Spirit Walker:

UPDATE `custom_character_skins` SET `skin_male` = 20, `skin_female` = 12 WHERE `token_id` = 81228;

-- Gnome Necromancer: 

UPDATE `custom_character_skins` SET `skin_male` = 7, `skin_female` = 6 WHERE `token_id` = 81230;

-- Leper Gnom:

UPDATE `custom_character_skins` SET `skin_male` = 6, `skin_female` = 8 WHERE `token_id` = 50212;

-- Demon Hunter:

UPDATE `custom_character_skins` SET `skin_male` = 12, `skin_female` = 14 WHERE `token_id` = 61105;

-- Naturalist II:

UPDATE `custom_character_skins` SET `skin_male` = 16, `skin_female` = 12 WHERE `token_id` = 83099;

-- Demon:

UPDATE `custom_character_skins` SET `skin_male` = 11, `skin_female` = 13 WHERE `token_id` = 61104;

-- Dalaran Magi:

UPDATE `custom_character_skins` SET `skin_male` = 16, `skin_female` = 14 WHERE `token_id` = 83090;

-- Necromancer I:

UPDATE `custom_character_skins` SET `skin_male` = 11, `skin_female` = 11 WHERE `token_id` = 50106;

-- DK Dwarf:

UPDATE `custom_character_skins` SET `skin_male` = 24, `skin_female` = 0 WHERE `token_id` = 81229;

-- Naturalist III:

UPDATE `custom_character_skins` SET `skin_male` = 17, `skin_female` = 0 WHERE `token_id` = 83100;

-- Naturalist I:

UPDATE `custom_character_skins` SET `skin_male` = 15, `skin_female` = 11 WHERE `token_id` = 83092;


-- quest 41177 Taming the Beast has an objective to tame Elder Crimson Lynx 61700, but the given item can only tame Lavender Mana Wyrm 61776
-- the rod (41064) given to player should be able to target only Elder Crimson Lynx 61700

DELETE FROM `item_required_target` WHERE `entry` = 41064;
REPLACE INTO `item_required_target` (`entry`, `type`, `target_entry`) VALUES (41064, 1, 61700);


-- quest 41779 Taming the Beast has an objective to tame Lavender Mana Wyrm 61776, but the given item can only target Elder Crimson Lynx 61700
-- the rod (41066) given to player should be able to target only Lavender Mana Wyrm 61776

DELETE FROM `item_required_target` WHERE `entry` = 41066;
REPLACE INTO `item_required_target` (`entry`, `type`, `target_entry`) VALUES (41066, 1, 61776);

-- Remove item from vendor:

DELETE FROM npc_vendor WHERE item = 41294;