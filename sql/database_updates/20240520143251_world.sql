
UPDATE `item_template` SET `display_id` = 68213 WHERE `entry` = 50000; -- 'Token: Character Name Change', '代币：角色名称变更', 160, 0),
UPDATE `item_template` SET `display_id` = 68214 WHERE `entry` = 80499; -- 'Token: Guild Name Change', '代币：公会名称变更', 300, 0),
UPDATE `item_template` SET `display_id` = 68227 WHERE `entry` = 80699; -- 'Token: Appearance Change', '代币：外观变更', 160, 0),
UPDATE `item_template` SET `display_id` = 68215 WHERE `entry` = 80555; -- 'Token: Pet Rename', '代币:宠物重命名', 100, 0),

UPDATE `item_template` SET `display_id` = 68220 WHERE `entry` = 50603; --	Race Change Token: Human
UPDATE `item_template` SET `display_id` = 68218 WHERE `entry` = 50604; --	Race Change Token: Gnome
UPDATE `item_template` SET `display_id` = 68216 WHERE `entry` = 50605; --	Race Change Token: Dwarf
UPDATE `item_template` SET `display_id` = 68222 WHERE `entry` = 50606; --	Race Change Token: Night Elf
UPDATE `item_template` SET `display_id` = 68224 WHERE `entry` = 50607; --	Race Change Token: Orc
UPDATE `item_template` SET `display_id` = 68223 WHERE `entry` = 50608; --	Race Change Token: Troll
UPDATE `item_template` SET `display_id` = 68225 WHERE `entry` = 50609; --	Race Change Token: Tauren
UPDATE `item_template` SET `display_id` = 68217 WHERE `entry` = 50610; --	Race Change Token: Undead
UPDATE `item_template` SET `display_id` = 68219 WHERE `entry` = 50613; --	Race Change Token: Goblin
UPDATE `item_template` SET `display_id` = 68221 WHERE `entry` = 50612; --	Race Change Token: High Elf

UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 51920;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 51921;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50105;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50106;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 61106;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50292;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50290;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50291;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 83090;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 83091;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81210;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50204;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50250;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50251;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50252;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50205;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50206;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81229;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 61105;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 61104;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 83092;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 83099;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 83100;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50212;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81230;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81206;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81209;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50207;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50208;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50209;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50220;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50221;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50223;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 50224;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81255;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 51010;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 51011;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81208;
UPDATE `item_template` SET `display_id` = 68226 WHERE `entry` = 81228;

-- Jewelcrafting fixes:

-- need a recipe item for the empowering herbal salad spell, it is to be bop and require cooking 300 as a rare item	

SET @recipe_item_entry = 92045;
SET @recipe_item_name = 'Recipe: Empowering Herbal Salad';
SET @item_buy_price = 30000;
SET @item_sell_price = 7500;
SET @item_skill_requirement = 185;
SET @item_skill_level = 300;
SET @recipe_item_spell_id = 49550;
SET @recipe_item_quality = 3;
SET @recipe_item_level = 55;

REPLACE `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (@recipe_item_entry, 9, 10, @recipe_item_name, '', 1102, @recipe_item_quality, 0, 1, @item_buy_price, @item_sell_price, 0, -1, -1, @recipe_item_level, 0, @item_skill_requirement, @item_skill_level, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @recipe_item_spell_id, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
UPDATE item_template SET bonding = 1 WHERE entry = @recipe_item_entry;

-- Various Jewelcrafting fixes:

UPDATE `spell_template` SET `reagentCount1` = 1, `reagentCount2` = 1 WHERE `entry` = 41031;
UPDATE `spell_template` SET `reagentCount1` = 2, `reagentCount2` = 2 WHERE `entry` = 41065;
UPDATE `spell_template` SET `reagentCount1` = 3, `reagentCount2` = 3 WHERE `entry` = 41203;
UPDATE `spell_template` SET `reagentCount1` = 4, `reagentCount2` = 4 WHERE `entry` = 41237;
UPDATE `spell_template` SET `reagentCount1` = 5, `reagentCount2` = 5 WHERE `entry` = 41770;