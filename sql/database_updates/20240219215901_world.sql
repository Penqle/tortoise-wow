-- New companions:
-- Item ID range: 36500+100
-- Creature ID range: 36500+100
-- Spell ID range: 36500+100

-- Edit this part: 

SET @pet_npc_entry = 36500;
SET @pet_item_entry = 36500;
SET @pet_spell_entry = 36500;
SET @pet_skilline_entry = 36545;

SET @pet_name = 'Sunfire Fox';
SET @pet_desc = 'The Sunfire Fox glows with golden fur, bringing warmth wherever it wanders.';
SET @pet_scale = 0.4;
SET @pet_model = 19106;
SET @pet_item_icon = 40126;
SET @pet_spell_icon = 2037;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36501;
SET @pet_item_entry = 36501;
SET @pet_spell_entry = 36501;
SET @pet_skilline_entry = 36546;

SET @pet_name = 'Tangerine Wind Serpent';
SET @pet_desc = 'Floats serenely in the sky, capturing the essence of sunlight and breeze...';
SET @pet_scale = 0.4;
SET @pet_model = 19127;
SET @pet_item_icon = 22271;
SET @pet_spell_icon = 2120;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36502;
SET @pet_item_entry = 36502;
SET @pet_spell_entry = 36502;
SET @pet_skilline_entry = 36547;

SET @pet_name = 'Dark Wind Serpent';
SET @pet_desc = 'Behold the Dark Wind Serpent that navigates the skies with an elegant yet mysterious presence.';
SET @pet_scale = 0.3;
SET @pet_model = 19128;
SET @pet_item_icon = 22271;
SET @pet_spell_icon = 2120;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36503;
SET @pet_item_entry = 36503;
SET @pet_spell_entry = 36503;
SET @pet_skilline_entry = 36548;

SET @pet_name = 'Emerald Wind Serpent';
SET @pet_desc = 'The Emerald Wind Serpent, with its radiant green scales, gracefully dances through the sky, embodying the tranquility of nature.';
SET @pet_scale = 0.3;
SET @pet_model = 19130;
SET @pet_item_icon = 22271;
SET @pet_spell_icon = 2120;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36504;
SET @pet_item_entry = 36504;
SET @pet_spell_entry = 36504;
SET @pet_skilline_entry = 36549;

SET @pet_name = 'Azure Wind Serpent';
SET @pet_desc = 'Adorned with a coat of brilliant blue scales, glides through the air with a serene elegance, leaving a trail of calm in its wake.';
SET @pet_scale = 0.3;
SET @pet_model = 19131;
SET @pet_item_icon = 22271;
SET @pet_spell_icon = 2120;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36505;
SET @pet_item_entry = 36505;
SET @pet_spell_entry = 36505;
SET @pet_skilline_entry = 36550;

SET @pet_name = 'Crimson Sabercat Cub';
SET @pet_desc = 'A spirited companion, its fiery fur captures the essence of youthful adventure in the wilds of Azeroth.';
SET @pet_scale = 0.5;
SET @pet_model = 20369;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36506;
SET @pet_item_entry = 36506;
SET @pet_spell_entry = 36506;
SET @pet_skilline_entry = 36551;

SET @pet_name = 'Alliance Lion Cub';
SET @pet_desc = 'A pint-sized embodiment of courage and unity, sporting the iconic golden mane of its proud lion lineage.';
SET @pet_scale = 0.5;
SET @pet_model = 20370;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36507;
SET @pet_item_entry = 36507;
SET @pet_spell_entry = 36507;
SET @pet_skilline_entry = 36552;

SET @pet_name = 'Spot';
SET @pet_desc = 'A playful feline companion adorned with distinctive spots, bringing a touch of the wild to your adventures.';
SET @pet_scale = 0.5;
SET @pet_model = 20371;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36508;
SET @pet_item_entry = 36508;
SET @pet_spell_entry = 36508;
SET @pet_skilline_entry = 36553;

SET @pet_name = 'Twilight Paws';
SET @pet_desc = 'A tiny bundle of darkness with a coat of deep, enchanting blue fur, this cute companion brings a touch of mystical charm to your adventures.';
SET @pet_scale = 0.5;
SET @pet_model = 20372;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36509;
SET @pet_item_entry = 36509;
SET @pet_spell_entry = 36509;
SET @pet_skilline_entry = 36554;

SET @pet_name = 'Black Panther Cub';
SET @pet_desc = 'A tiny shadow prowler, its velvety fur and curious eyes add an adorable touch to your daring escapades.';
SET @pet_scale = 0.5;
SET @pet_model = 20374;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36510;
SET @pet_item_entry = 36510;
SET @pet_spell_entry = 36510;
SET @pet_skilline_entry = 36555;

SET @pet_name = 'Tawny';
SET @pet_desc = 'With its soft, tawny fur and playful antics, this adorable cub is a heartwarming companion for your journey through Azeroth.';
SET @pet_scale = 0.5;
SET @pet_model = 20377;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36511;
SET @pet_item_entry = 36511;
SET @pet_spell_entry = 36511;
SET @pet_skilline_entry = 36556;

SET @pet_name = 'Nightsaber Cub';
SET @pet_desc = 'Elune made nightsabers silver and black so they could meld into the shadows on a moonlit night.';
SET @pet_scale = 0.5;
SET @pet_model = 20376;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36512;
SET @pet_item_entry = 36512;
SET @pet_spell_entry = 36512;
SET @pet_skilline_entry = 36557;

SET @pet_name = 'Snow Cub';
SET @pet_desc = 'The thick snow near Dun Morogh acts as camouflage for snow cubs learning to hunt.';
SET @pet_scale = 0.5;
SET @pet_model = 20379;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36513;
SET @pet_item_entry = 36513;
SET @pet_spell_entry = 36513;
SET @pet_skilline_entry = 36558;

SET @pet_name = 'Stangletorn Tiger Cub';
SET @pet_desc = 'This lively and affectionate cub boasts unique stripes, a miniature symbol of the wild beauty found in Stangletorn Vale.';
SET @pet_scale = 0.5;
SET @pet_model = 20380;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36514;
SET @pet_item_entry = 36514;
SET @pet_spell_entry = 36514;
SET @pet_skilline_entry = 36559;

SET @pet_name = 'Frostsaber Cub';
SET @pet_desc = 'A charming companion with snowy fur adorned by enchanting stripes, bringing the wintry beauty of Azeroth to your side.';
SET @pet_scale = 0.5;
SET @pet_model = 20382;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);

-- Edit this part: 

SET @pet_npc_entry = 36515;
SET @pet_item_entry = 36515;
SET @pet_spell_entry = 36515;
SET @pet_skilline_entry = 36560;

SET @pet_name = 'Cheetah Cub';
SET @pet_desc = 'These playful feline cubs practice their hunting skills by stalking each other through the Barrens.';
SET @pet_scale = 0.5;
SET @pet_model = 20383;
SET @pet_item_icon = 5689;
SET @pet_spell_icon = 293;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);


-- Edit this part: 

SET @pet_npc_entry = 36516;
SET @pet_item_entry = 36516;
SET @pet_spell_entry = 36516;
SET @pet_skilline_entry = 36561;

SET @pet_name = 'Chestnut';
SET @pet_desc = 'With a bushy tail that rivals the fluffiest of pillows, this squirrel is the epitome of woodland charm, spreading happiness wherever it goes.';
SET @pet_scale = 1.3;
SET @pet_model = 20506;
SET @pet_item_icon = 6417;
SET @pet_spell_icon = 1634;

REPLACE INTO `creature_display_info_addon` (`display_id`) VALUES (@pet_model);
REPLACE INTO `collection_pet` (`itemId`, `spellId`) VALUES (@pet_item_entry, @pet_spell_entry);
REPLACE INTO `item_template` VALUES (@pet_item_entry, 15, 2, @pet_name, @pet_desc, @pet_item_icon, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46498, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `creature_template` VALUES (@pet_npc_entry, @pet_model, 0, 0, 0, 0, @pet_name, NULL, 0, 1, 1, 64, 64, 0, 0, 20, 35, 0, 1, 1.14286, @pet_scale, 18, 5, 0, 0, 1, 10, 11, 0, 44, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1.76, 2.42, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 1, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 2, 0, '');
REPLACE INTO `spell_template` VALUES (@pet_spell_entry, 0, 0, 0, 0, 0, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 31, 0, 0, 0, 101, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 97, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 1000, 0, 0, 0, 0, 0, 0, @pet_npc_entry, 0, 0, 0, 0, 0, 0, 0, 0, 353, 0, @pet_spell_icon, 0, 0, @pet_name, 16712190, '', 16712190, @pet_desc, 16712190, '', 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 1, 1, 0, 0, 0, 0);
REPLACE INTO `skill_line_ability` VALUES (@pet_skilline_entry, 1005, @pet_spell_entry, 0, 0, 0, 0, 0, 0, 0, 0);
