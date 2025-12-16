UPDATE `spell_template` SET `reagent3` = 0, `reagentCount3` = 0 WHERE `entry` = 41031;
UPDATE `spell_template` SET `reagent3` = 0 WHERE `entry` = 41029;

DELETE FROM `npc_trainer_template` WHERE `spell` BETWEEN 41032 AND 41066;
-- Journeyman trainer template:
DELETE FROM `npc_trainer_template` WHERE `entry` = 4;

REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41030, 180, 755, 25, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41028, 225, 755, 70, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41026, 180, 755, 70, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41024, 180, 755, 65, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41022, 180, 755, 65, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41020, 180, 755, 60, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41018, 180, 755, 60, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41016, 270, 755, 55, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41014, 90, 755, 50, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41012, 90, 755, 50, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41010, 90, 755, 50, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41008, 90, 755, 40, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41006, 45, 755, 35, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41004, 45, 755, 25, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41002, 45, 755, 20, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 41000, 45, 755, 15, 0);
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, 30219, 10, 0, 0, 5);


REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(4, 30219, 10, 0, 0, 5), -- Apprentice R1
(4, 30223, 450, 755, 50, 10); -- Journeyman R2
UPDATE `creature_template` SET `trainer_id` = 4 WHERE `entry` IN (61907, 61911, 61917); 

SET @JEWELCRAFTING = 755;

-- Recipe Item Name: Lavish Gemmed Necklace (Entry 55171)
-- Cost:180
-- Recipe Learning Requirements: 80 Jewelry (min 100, max 120)
-- Required Materials: 2840 (x8), 81094 (x1), 818 (x1), 1210 (1), 2880 (1)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41032; -- Ensure it's unique.
SET @craft_spell_id = 41033; -- Ensure it's unique, usually learning spell ID + 1
SET @skill_line_entry = 17016; -- Unique entry that isn't taken yet!!!
SET @output_item_id = 55171; -- What you're crafting.
SET @recipe_spell_name = 'Lavish Gemmed Necklace'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = @recipe_spell_name; -- Ensure it's unique, usually learning spell ID + 1
SET @cost = 180;
SET @tool_item_1 = 55155; -- Jewelcrafter's Kit
SET @tool_item_2 = 0; -- Example: Golden Rod.
SET @skill_level_required = 100; -- Required to craft.
SET @skill_level_max = 120; -- When it'll stop giving skillups.
SET @skill_trainer_required = 80; -- Required to train.

SET @reagent_item_1 = 2840; SET @reagent_item_count_1 = 8;
SET @reagent_item_2 = 81094; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 818; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 2880; SET @reagent_item_count_4 = 1; 
SET @reagent_item_5 = 1210; SET @reagent_item_count_5 = 1; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_6 = 8;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field, it'll be overwritten.
SET @if_required_spell_focus = 0; -- 0 or 1. Spell focus needed by spell to be casted. 
SET @cast_time_index = 1; -- For trainers: 1, for recipes: 14.
SET @cast_time_index_craft = 33; -- Casting time of crafting.
SET @targets = 256; -- For trainers: 256, for recipes: 0.
SET @on_skill_get_bool = 0; -- 1 or 0, 1 is it's obtained with the first tradeskill rank, rare case!
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Amberstone Pendant (Entry 55172)
-- Cost:180
-- Recipe Learning Requirements: 80 Jewelry (Min 105, max 125)
-- Required Materials: 2840 (x6), 81094 (3), 55245 (1), 55150 (4)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41034; -- Ensure it's unique.
SET @craft_spell_id = 41035; -- Ensure it's unique, usually learning spell ID + 1
SET @skill_line_entry = 17017; -- Unique entry that isn't taken yet!!!
SET @output_item_id = 55172; -- What you're crafting.
SET @recipe_spell_name = 'Amberstone Pendant'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = @recipe_spell_name; -- Ensure it's unique, usually learning spell ID + 1
SET @cost = 180;
SET @tool_item_1 = 55155; -- Jewelcrafter's Kit
SET @tool_item_2 = 0; -- Example: Golden Rod.
SET @skill_level_required = 105; -- Required to craft.
SET @skill_level_max = 125; -- When it'll stop giving skillups.
SET @skill_trainer_required = 80; -- Required to train.

SET @reagent_item_1 = 2840; SET @reagent_item_count_1 = 6;
SET @reagent_item_2 = 81094; SET @reagent_item_count_2 = 3;
SET @reagent_item_3 = 55245; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 55150; SET @reagent_item_count_4 = 4; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_6 = 8;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field, it'll be overwritten.
SET @if_required_spell_focus = 0; -- 0 or 1. Spell focus needed by spell to be casted. 
SET @cast_time_index = 1; -- For trainers: 1, for recipes: 14.
SET @cast_time_index_craft = 33; -- Casting time of crafting.
SET @targets = 256; -- For trainers: 256, for recipes: 0.
SET @on_skill_get_bool = 0; -- 1 or 0, 1 is it's obtained with the first tradeskill rank, rare case!
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Deepmist Choker (55173)
-- Cost:180
-- Recipe Learning Requirements: 85 Jewelry (min 105, max 125)
-- Required Materials: 2840 (8), 5498 (1), 818 (1), 2880 (1), 55150 (2)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41036; -- Ensure it's unique.
SET @craft_spell_id = 41037; -- Ensure it's unique, usually learning spell ID + 1
SET @skill_line_entry = 17018; -- Unique entry that isn't taken yet!!!
SET @output_item_id = 55173; -- What you're crafting.
SET @recipe_spell_name = 'Deepmist Choker'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = @recipe_spell_name; -- Ensure it's unique, usually learning spell ID + 1
SET @cost = 180;
SET @tool_item_1 = 55155; -- Jewelcrafter's Kit
SET @tool_item_2 = 0; -- Example: Golden Rod.
SET @skill_level_required = 105; -- Required to craft.
SET @skill_level_max = 125; -- When it'll stop giving skillups.
SET @skill_trainer_required = 85; -- Required to train.

SET @reagent_item_1 = 2840; SET @reagent_item_count_1 = 8;
SET @reagent_item_2 = 5498; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 818; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 2880; SET @reagent_item_count_4 = 1; 
SET @reagent_item_5 = 55150; SET @reagent_item_count_5 = 2; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_6 = 8;
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field, it'll be overwritten.
SET @if_required_spell_focus = 0; -- 0 or 1. Spell focus needed by spell to be casted. 
SET @cast_time_index = 1; -- For trainers: 1, for recipes: 14.
SET @cast_time_index_craft = 33; -- Casting time of crafting.
SET @targets = 256; -- For trainers: 256, for recipes: 0.
SET @on_skill_get_bool = 0; -- 1 or 0, 1 is it's obtained with the first tradeskill rank, rare case!
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Rough Bronze Ring (55174)
-- Cost:250
-- Recipe Learning Requirements: 90 Jewelry (min 100, max 115)
-- Required Materials: 2841 (2)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41038; -- Ensure it's unique.
SET @craft_spell_id = 41039; -- Ensure it's unique, usually learning spell ID + 1
SET @skill_line_entry = 17019; -- Unique entry that isn't taken yet!!!
SET @output_item_id = 55174; -- What you're crafting.
SET @recipe_spell_name = 'Rough Bronze Ring'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = @recipe_spell_name; -- Ensure it's unique, usually learning spell ID + 1
SET @cost = 250;
SET @tool_item_1 = 55155; -- Jewelcrafter's Kit
SET @tool_item_2 = 0; -- Example: Golden Rod.
SET @skill_level_required = 100; -- Required to craft.
SET @skill_level_max = 115; -- When it'll stop giving skillups.
SET @skill_trainer_required = 90; -- Required to train.

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 2;
SET @reagent_item_2 = 0; SET @reagent_item_count_2 = 0;
SET @reagent_item_3 = 0; SET @reagent_item_count_3 = 0;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field, it'll be overwritten.
SET @if_required_spell_focus = 0; -- 0 or 1. Spell focus needed by spell to be casted. 
SET @cast_time_index = 1; -- For trainers: 1, for recipes: 14.
SET @cast_time_index_craft = 33; -- Casting time of crafting.
SET @targets = 256; -- For trainers: 256, for recipes: 0.
SET @on_skill_get_bool = 0; -- 1 or 0, 1 is it's obtained with the first tradeskill rank, rare case!
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Shimmering Bronze Ring (41308)
-- Cost:250
-- Recipe Learning Requirements: 90 Jewelry (min 105, max 120)
-- Required Materials: 55174 (1), 55246 (1), 2880 (2), 55151 (2)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41040; -- Ensure it's unique.
SET @craft_spell_id = 41041; -- Ensure it's unique, usually learning spell ID + 1
SET @skill_line_entry = 17020; -- Unique entry that isn't taken yet!!!
SET @output_item_id = 41308; -- What you're crafting.
SET @recipe_spell_name = 'Shimmering Bronze Ring'; -- Ensure it's unique, usually learning spell ID + 1
SET @recipe_learn_spell_name = @recipe_spell_name; -- Ensure it's unique, usually learning spell ID + 1
SET @cost = 250;
SET @tool_item_1 = 55155; -- Jewelcrafter's Kit
SET @tool_item_2 = 0; -- Example: Golden Rod.
SET @skill_level_required = 105; -- Required to craft.
SET @skill_level_max = 120; -- When it'll stop giving skillups.
SET @skill_trainer_required = 90; -- Required to train.

SET @reagent_item_1 = 55174; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 55246; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 2880; SET @reagent_item_count_3 = 2;
SET @reagent_item_4 = 55151; SET @reagent_item_count_4 = 2; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; -- Teaching scroll item. Item must exist in DB. Create it with ANY recipe in the field; it'll be overwritten.
SET @if_required_spell_focus = 0; -- 0 or 1. Spell focus needed by spell to be casted. 
SET @cast_time_index = 1; -- For trainers: 1, for recipes: 14.
SET @cast_time_index_craft = 33; -- Casting time of crafting.
SET @targets = 256; -- For trainers: 256, for recipes: 0.
SET @on_skill_get_bool = 0; -- 1 or 0, 1 is it's obtained with the first tradeskill rank, rare case!
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Amber Orb (41309)
-- Cost:450
-- Recipe Learning Requirements: 95 Jewelry (min 110, max 130)
-- Required Materials: 2841 (2), 81094 (3), 55150 (4), 55245 (1)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41042; 
SET @craft_spell_id = 41043; 
SET @skill_line_entry = 17021;
SET @output_item_id = 41309; 
SET @recipe_spell_name = 'Amber Orb'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 450;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 110; 
SET @skill_level_max = 130; 
SET @skill_trainer_required = 95;

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 2;
SET @reagent_item_2 = 81094; SET @reagent_item_count_2 = 3;
SET @reagent_item_3 = 55150; SET @reagent_item_count_3 = 4;
SET @reagent_item_4 = 55245; SET @reagent_item_count_4 = 1; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Encrusted Bronze Staff (55175)
-- Cost:600
-- Recipe Learning Requirements: 100 Jewelry (min 120, max 140)
-- Required Materials: 2841 (8), 1210 (1), 81094 (1), 55151 (4) , 55245 (2)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41044; 
SET @craft_spell_id = 41045; 
SET @skill_line_entry = 17022;
SET @output_item_id = 55175; 
SET @recipe_spell_name = 'Encrusted Bronze Staff'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 600;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 120; 
SET @skill_level_max = 140; 
SET @skill_trainer_required = 100;

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 8;
SET @reagent_item_2 = 1210; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 81094; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 55151; SET @reagent_item_count_4 = 4; 
SET @reagent_item_5 = 55245; SET @reagent_item_count_5 = 2; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Earthrock Loop (55176)
-- Cost:250
-- Recipe Learning Requirements: 100 Jewelry (min 120, max 140)
-- Required Materials: 55174 (1), 2449 (3), 2836 (6), 2880 (4)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41046; 
SET @craft_spell_id = 41047; 
SET @skill_line_entry = 17023;
SET @output_item_id = 55176; 
SET @recipe_spell_name = 'Earthrock Loop'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 250;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 120; 
SET @skill_level_max = 140; 
SET @skill_trainer_required = 100;

SET @reagent_item_1 = 55174; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 2449; SET @reagent_item_count_2 = 3;
SET @reagent_item_3 = 2836; SET @reagent_item_count_3 = 6;
SET @reagent_item_4 = 2880; SET @reagent_item_count_4 = 4; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Bronze Cuffed Bangles (41310)
-- Cost:250
-- Recipe Learning Requirements: 105 Jewelry (min 120, max 145)
-- Required Materials: 2841 (6), 2880 (2), 55245 (2)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41048; 
SET @craft_spell_id = 41049; 
SET @skill_line_entry = 17024;
SET @output_item_id = 41310; 
SET @recipe_spell_name = 'Bronze Cuffed Bangles'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 250;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 120; 
SET @skill_level_max = 145; 
SET @skill_trainer_required = 105;

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 6;
SET @reagent_item_2 = 2880; SET @reagent_item_count_2 = 2;
SET @reagent_item_3 = 55245; SET @reagent_item_count_3 = 2;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Shadowgem Band (41311)
-- Cost:330
-- Recipe Learning Requirements: 105 Jewelry (min 125, max 145)
-- Required Materials: 55174 (1), 1210 (2), 55246 (1)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41050; 
SET @craft_spell_id = 41051; 
SET @skill_line_entry = 17025;
SET @output_item_id = 41311; 
SET @recipe_spell_name = 'Shadowgem Band'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 330;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 125; 
SET @skill_level_max = 145; 
SET @skill_trainer_required = 105;

SET @reagent_item_1 = 55174; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 1210; SET @reagent_item_count_2 = 2;
SET @reagent_item_3 = 55246; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Bronze Scepter (41313)
-- Cost:500
-- Recipe Learning Requirements: 110 Jewelry (min 130, max 150)
-- Required Materials: 2841 (6) , 55246 (1), 55151 (4)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41052; 
SET @craft_spell_id = 41053; 
SET @skill_line_entry = 17026;
SET @output_item_id = 41313; 
SET @recipe_spell_name = 'Bronze Scepter'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 500;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 130; 
SET @skill_level_max = 150; 
SET @skill_trainer_required = 110;

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 6;
SET @reagent_item_2 = 55246; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 55151; SET @reagent_item_count_3 = 4;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0; 
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Pendant of Midnight (41312)
-- Cost:440
-- Recipe Learning Requirements: 120  Jewelry (min 145, max 165)
-- Required Materials: 2841 (6), 1210 (3), 785 (1), 55246 (1)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41054; 
SET @craft_spell_id = 41055; 
SET @skill_line_entry = 17027;
SET @output_item_id = 41312; 
SET @recipe_spell_name = 'Pendant of Midnight'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 440;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 145; 
SET @skill_level_max = 165; 
SET @skill_trainer_required = 120;

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 6;
SET @reagent_item_2 = 1210; SET @reagent_item_count_2 = 3;
SET @reagent_item_3 = 785; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 55246; SET @reagent_item_count_4 = 1;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING; 

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Agatestone Crown (41314)
-- Cost:500
-- Recipe Learning Requirements: 125  Jewelry (min 145, max 165)
-- Required Materials: 2841 (6), 1206 (1), 3466 (2), 55151 (2)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41056; 
SET @craft_spell_id = 41057; 
SET @skill_line_entry = 17028;
SET @output_item_id = 41314; 
SET @recipe_spell_name = 'Agatestone Crown'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 500;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 145; 
SET @skill_level_max = 165; 
SET @skill_trainer_required = 125;

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 6;
SET @reagent_item_2 = 1206; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 3466; SET @reagent_item_count_3 = 2;
SET @reagent_item_4 = 55151; SET @reagent_item_count_4 = 2;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Moonlight Staff (41315)
-- Cost:1000
-- Recipe Learning Requirements: 125  Jewelry (min 150, max 170)
-- Required Materials: 2841 (8), 1705 (3), 3466 (1), 55246 (1)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41058; 
SET @craft_spell_id = 41059; 
SET @skill_line_entry = 17029;
SET @output_item_id = 41315; 
SET @recipe_spell_name = 'Moonlight Staff'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 1000;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 150; 
SET @skill_level_max = 170; 
SET @skill_trainer_required = 125;

SET @reagent_item_1 = 2841; SET @reagent_item_count_1 = 8;
SET @reagent_item_2 = 1705; SET @reagent_item_count_2 = 3;
SET @reagent_item_3 = 3466; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 55246; SET @reagent_item_count_4 = 1;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Binding Signet (41316)
-- Cost:480
-- Recipe Learning Requirements: 125  Jewelry (min 145, max 165)
-- Required Materials: 55174 (1), 1705 (2), 3385 (1)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41060; 
SET @craft_spell_id = 41061; 
SET @skill_line_entry = 17030;
SET @output_item_id = 41316; 
SET @recipe_spell_name = 'Binding Signet'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 480;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 145; 
SET @skill_level_max = 165; 
SET @skill_trainer_required = 125;

SET @reagent_item_1 = 55174; SET @reagent_item_count_1 = 1;
SET @reagent_item_2 = 1705; SET @reagent_item_count_2 = 2;
SET @reagent_item_3 = 3385; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Enchanted Bracelets (41318)
-- Cost:600
-- Recipe Learning Requirements: 125  Jewelry (min 145, max 165)
-- Required Materials: 2842 (3) , 10998 (1), 1210 (1)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41062; 
SET @craft_spell_id = 41063; 
SET @skill_line_entry = 17031;
SET @output_item_id = 41318; 
SET @recipe_spell_name = 'Enchanted Bracelets'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 600;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 145; 
SET @skill_level_max = 165; 
SET @skill_trainer_required = 125;

SET @reagent_item_1 = 2842; SET @reagent_item_count_1 = 3;
SET @reagent_item_2 = 10998; SET @reagent_item_count_2 = 1;
SET @reagent_item_3 = 1210; SET @reagent_item_count_3 = 1;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);

-- Recipe Item Name: Coarse Gemstone Cluster (41320)
-- Cost:520
-- Recipe Learning Requirements: 125  Jewelry (min 140, max 150)
-- Required Materials: 2771 (4), 55151 (4)
-- Requires:Jewelers Kit

SET @learn_spell_id = 41064; 
SET @craft_spell_id = 41065; 
SET @skill_line_entry = 17032;
SET @output_item_id = 41320; 
SET @recipe_spell_name = 'Coarse Gemstone Cluster'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 520;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 140; 
SET @skill_level_max = 150; 
SET @skill_trainer_required = 125;

SET @reagent_item_1 = 2771; SET @reagent_item_count_1 = 4;
SET @reagent_item_2 = 55151; SET @reagent_item_count_2 = 4;
SET @reagent_item_3 = 0; SET @reagent_item_count_3 = 0;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);
-- Recipe Item Name: Rough Silver Ring (41319)
-- Cost:450
-- Recipe Learning Requirements: 125  Jewelry (min 135, max 155)
-- Required Materials: 2842 (2)
-- Requires:Jewelers Kit, Forge

SET @learn_spell_id = 41066; 
SET @craft_spell_id = 41067; 
SET @skill_line_entry = 17033;
SET @output_item_id = 41319; 
SET @recipe_spell_name = 'Rough Silver Ring'; 
SET @recipe_learn_spell_name = @recipe_spell_name; 
SET @cost = 450;
SET @tool_item_1 = 55155; 
SET @tool_item_2 = 0; 
SET @skill_level_required = 135; 
SET @skill_level_max = 155; 
SET @skill_trainer_required = 125;

SET @reagent_item_1 = 2842; SET @reagent_item_count_1 = 2;
SET @reagent_item_2 = 0; SET @reagent_item_count_2 = 0;
SET @reagent_item_3 = 0; SET @reagent_item_count_3 = 0;
SET @reagent_item_4 = 0; SET @reagent_item_count_4 = 0;
SET @reagent_item_5 = 0; SET @reagent_item_count_5 = 0; 
SET @reagent_item_6 = 0; SET @reagent_item_count_6 = 0;
SET @reagent_item_7 = 0; SET @reagent_item_count_7 = 0;
SET @reagent_item_8 = 0; SET @reagent_item_count_8 = 0;

SET @spell_visual_1 = 1168; 
SET @recipe_item = 0; 
SET @if_required_spell_focus = 0; 
SET @cast_time_index = 1; 
SET @cast_time_index_craft = 33; 
SET @targets = 256; 
SET @on_skill_get_bool = 0; 
SET @skill_id = @JEWELCRAFTING;

SET @recipe_learn_spell_desc = CONCAT('Teaches you how to craft a ', @recipe_spell_name, '.');
REPLACE INTO `skill_line_ability` VALUES (@skill_line_entry, @skill_id, @craft_spell_id, 0, 0, 1, 0, @on_skill_get_bool, @skill_level_max, @skill_level_required , 0);
UPDATE `item_template` SET `spellid_1` = @learn_spell_id, `name` = @recipe_learn_spell_name WHERE `entry` = @recipe_item;
REPLACE INTO `spell_template` VALUES (@learn_spell_id, 0, 0, 0, 0, 0, 262400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @craft_spell_id, 0, 0, 0, 0, 0, 107, 0, 1, 0, 0, @recipe_learn_spell_name, 4128894, '', 4128876, @recipe_learn_spell_desc, 4128894, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, -1, 1, 1, 1, 0, 0, 0, 0),
(@craft_spell_id, 0, 0, 0, 0, 0, 65568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 15, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @reagent_item_1, @reagent_item_2, @reagent_item_3, @reagent_item_4, @reagent_item_5, @reagent_item_6, @reagent_item_7, @reagent_item_8, @reagent_item_count_1, @reagent_item_count_2, @reagent_item_count_3, @reagent_item_count_4, @reagent_item_count_5, @reagent_item_count_6, @reagent_item_count_7, @reagent_item_count_8, -1, 0, 0, 24, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @output_item_id, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 1, 0, 0, @recipe_spell_name, 4128894, '', 4128876, '', 4128876, '', 4128876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
UPDATE `spell_template` SET `requiresSpellFocus` = @if_required_spell_focus, `castingTimeIndex` = @cast_time_index_craft, `totem1` = @tool_item_1, `totem2` = @tool_item_2, `spellVisual1` = @spell_visual_1 WHERE `entry` = @craft_spell_id;
UPDATE `spell_template` SET `castingTimeIndex` = @cast_time_index, `targets` = @targets, `effectImplicitTargetA1` = 0, `interruptFlags` = 0, `dmgClass` = 0 WHERE `entry` = @learn_spell_id;
REPLACE INTO `npc_trainer_template` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (4, @learn_spell_id, @cost, @skill_id, @skill_trainer_required, 0);
