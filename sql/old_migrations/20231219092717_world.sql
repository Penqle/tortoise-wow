-- Last minute fixes as usual:

-- image previews for Jingle Belle Frock and Apparel of the Bells are swapped in the shop menu

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (41092, 4, 1, 'Jingle Belle Frock', '', 67986, 1, 0, 1, 10000, 2500, 5, -1, -1, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (41091, 4, 1, 'Apparel of the Bells', '', 67987, 1, 0, 1, 10000, 2500, 5, -1, -1, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- change level of Blood Elf Spy 61786 to 4

SET @level = 4; SET @entry = 61786;
UPDATE creature_template SET level_min = @level, level_max = @level WHERE entry = @entry;

-- change level of Arcane Pounder 61779 to 5

SET @level = 5; SET @entry = 61779;
UPDATE creature_template SET level_min = @level, level_max = @level WHERE entry = @entry;

-- change level of Defective Arcane Golem 61778 to 4

SET @level = 4; SET @entry = 61778;
UPDATE creature_template SET level_min = @level, level_max = @level WHERE entry = @entry;

-- change level of Malfunctioning Arcane Golem 61777 to 4

SET @level = 4; SET @entry = 61777;
UPDATE creature_template SET level_min = @level, level_max = @level WHERE entry = @entry;

-- change level of Forest Hawkstrider 61691 to 3-4

SET @level = 3; SET @entry = 61691;
UPDATE creature_template SET level_min = @level, level_max = @level + 1 WHERE entry = @entry;


-- Rename item Formal Light blue Waistcoat to Formal Light Blue Waistcoat

UPDATE item_template SET name = 'Formal Light Blue Waistcoat' WHERE name = 'Formal Light blue Waistcoat';

-- Rename item Black Tie Light blue Waistcoat to Black Tie Light Blue Waistcoat

UPDATE item_template SET name = 'Black Tie Light Blue Waistcoat' WHERE name = 'Black Tie Light blue Waistcoat';

-- Rename item Black Tie Light blue Waistcoat to Black Tie Light Blue Waistcoat

UPDATE item_template SET name = 'Black Tie Light Blue Waistcoat' WHERE name = 'Black Tie Light blue Waistcoat';

-- Rename item Black Tie blue Waistcoat to Black Tie Blue Waistcoat

UPDATE item_template SET name = 'Black Tie Blue Waistcoat' WHERE name = 'Black Tie blue Waistcoat';

-- Rename item Black Tie blue Waistcoat to Black Tie Blue Waistcoat

UPDATE item_template SET name = 'Black Tie Blue Waistcoat' WHERE name = 'Black Tie blue Waistcoat';

-- Quest Pelts and Tusks 80217 should have its name changed to [DEPRECATED] Pelts and Tusks and Marek Ironheart should be removed as a quest start and end npc.

SET @quest =  80217;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Pelts and Tusks' WHERE `entry` = @quest;
DELETE FROM `creature_questrelation` WHERE `quest` = @quest;
DELETE FROM `creature_involvedrelation` WHERE `quest` = @quest;

update item_template set sheath = 0 where entry = 60003; -- remnants of an old god

-- Change the buy value of the following items to 5g, set the sell value to 1g25s .m money 

-- 41210, 41211, 41212, 41213, 41214, 41215, 41216, 41217, 41218, 41219, 41220, 41221, 41222, 41223, 41224, 41225, 41226, 41227, 41228, 41229, 41230, 41231, 41232, 41233, 41234, 41235, 41236, 41237, 41238, 41239, 41240, 41241, 41242, 41243, 41244, 41245, 41246, 41247, 41248, 41249, 41250, 41251, 41252, 41253, 41254, 41255, 41256, 41257, 41260, 41261, 41262, 41263, 41264, 41265, 41266, 41267, 41268, 41269, 41270, 41271, 41272, 41273, 41274, 41275, 41276, 41277, 41278, 41279, 41280, 41281, 41282, 41283, 41284, 41285, 41286, 41287, 41288, 41289, 41290, 41291, 41292, 41293, 41294, 41295

-- change the buy value of the following items below to 2g, and the sell value to 50silver

-- 41258, 41259

UPDATE item_template SET buy_price = 50000, sell_price = 12500 WHERE entry in (41210, 41211, 41212, 41213, 41214, 41215, 41216, 41217, 41218, 41219, 41220, 41221, 41222, 41223, 41224, 41225, 41226, 41227, 41228, 41229, 41230, 41231, 41232, 41233, 41234, 41235, 41236, 41237, 41238, 41239, 41240, 41241, 41242, 41243, 41244, 41245, 41246, 41247, 41248, 41249, 41250, 41251, 41252, 41253, 41254, 41255, 41256, 41257, 41260, 41261, 41262, 41263, 41264, 41265, 41266, 41267, 41268, 41269, 41270, 41271, 41272, 41273, 41274, 41275, 41276, 41277, 41278, 41279, 41280, 41281, 41282, 41283, 41284, 41285, 41286, 41287, 41288, 41289, 41290, 41291, 41292, 41293, 41294, 41295);

UPDATE item_template SET buy_price = 20000, sell_price = 5000 WHERE entry in (41258, 41259);

-- Update gossip for creature Tyrande Whisperwind (Entry 7999) to the following

-- Greetings in Elune's light. Welcome to Darnassus, a haven born from the grace of the Moon Goddess. This sacred place is our refuge following the Battle of Mount Hyjal, a place where our people were meant to find solace and renewal.$B$BAlas, our unity has been shattered, and no World Tree can mend this profound wound. Treachery, a malady more insidious than any foe we faced in battle, festers within the heart of our people. It spreads like a blight, and the one responsible for this affliction resides comfortably within the confines of this very city.

UPDATE `broadcast_text` SET `male_text` = 'Greetings in Elune''s light. Welcome to Darnassus, a haven born from the grace of the Moon Goddess.$B$BThis sacred place is our refuge following the Battle of Mount Hyjal, a place where our people were meant to find solace and renewal.$B$BAlas, our unity has been shattered, and no World Tree can mend this profound wound.$B$BTreachery, a malady more insidious than any foe we faced in battle, festers within the heart of our people.$B$BIt spreads like a blight, and the one responsible for this affliction resides comfortably within the confines of this very city.' WHERE `entry` = 61480;

-- Remove, <Herbalist> title from npc 80249 Ralonius Sundew

UPDATE creature_template SET subname = '' WHERE entry = 80249;

-- dying in Alah'Thalas (the city itself) does not send you to a graveyard

-- AH - 934
-- TH - 950
-- BS - 949

REPLACE INTO `world_safe_locs_facing` (`id`, `orientation`) VALUES (950, 3.07);

DELETE FROM `game_graveyard_zone` WHERE `id` = 2040;
DELETE FROM `game_graveyard_zone` WHERE `id` = 5225;
DELETE FROM `game_graveyard_zone` WHERE `id` = 5536;

DELETE FROM `game_graveyard_zone` WHERE `ghost_zone` = 2040;
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone` = 5225;
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone` = 5536;

REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (934, 2040, 469);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (950, 2040, 67);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (950, 5225, 0);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (949, 5536, 0);

-- change gossip for Farenia Roseheart 61802
-- "Loathe though I am to do this to her, it seems that despite her best efforts Vereesa has not been able to handle her responsibilities on her own. For the good of our people we must look to someone else for leadership.$B$BSadly, some here cling to the past, hindering our progress. Perhaps the responsibility of the crown is too much for one head in these circumstances, yet reluctance is ever the companion of fear of change. We must put our people first and cast aside antiquated loyalties to usher in a new, better era."

UPDATE `broadcast_text` SET `male_text` = 'Loathe though I am to do this to her, it seems that despite her best efforts Vereesa has not been able to handle her responsibilities on her own. For the good of our people we must look to someone else for leadership.$B$BSadly, some here cling to the past, hindering our progress. Perhaps the responsibility of the crown is too much for one head in these circumstances, yet reluctance is ever the companion of fear of change.$B$BWe must put our people first and cast aside antiquated loyalties to usher in a new, better era.' WHERE `male_text` like '%people we must look to someone else for leadership.%';

-- change gossip for Miralin Wavesinger 61805
-- "Hm? Oh, bal’a dash, friend. Is there something I can help you with? As you can see, we are in the midst of quite the dilemma. With the throne in play, I imagine it will be a rather dramatic debate. If nothing else, let none say that the Quel’dorei are not a passionate people. I wonder, who would you support in this clash?"

UPDATE `broadcast_text` SET `male_text` = 'Hm? Oh, bal’a dash, friend. Is there something I can help you with? As you can see, we are in the midst of quite the dilemma.$B$BWith the throne in play, I imagine it will be a rather dramatic debate. If nothing else, let none say that the Quel’dorei are not a passionate people.$B$BI wonder, who would you support in this clash?' WHERE `male_text` like '%a riveting play with an ever-shifting%';

-- Tabard:

UPDATE `item_template` SET name = 'Tabard of Discovery', description = 'To boldly go where the sun don''t shine!' WHERE entry = 81205;

DELETE FROM `item_template` WHERE `entry` = 80313;
UPDATE `item_template` SET name = '[REUSE ME] Grim Batol Tabard', description = 'To boldly go where the sun don''t shine!' WHERE entry = 80313;

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (80315, 0, 0, '[REUSE ME] Grim Batol Tabard', '', 40014, 1, 0, 1, 0, 0, 19, -1, -1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);
