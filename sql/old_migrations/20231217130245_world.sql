-- Quest "An Audience With the Prince" (41240) fix: objectives text, quest giver is selectable after compliting quest.
update quest_template set objectivetext1 = 'Conversation with Kael\'thas heard' where entry = 41240;

-- Add the following items into the game:
REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41204', '4', '1', 'Greatfather\'s Garb', '', '67969', '1', '0', '1', '10000', '2500', '5', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41205', '4', '1', 'Holly King\'s Habit', '', '67970', '1', '0', '1', '10000', '2500', '5', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41206', '4', '1', 'Father Frost\'s Finery', '', '67971', '1', '0', '1', '10000', '2500', '5', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

REPLACE INTO item_template (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `wrapped_gift`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
 ('41207', '4', '1', 'Greatfather\'s Raiment', '', '67972', '1', '0', '1', '10000', '2500', '5', '-1', '-1', '10',
 '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '45', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '1', NULL);

-- NPC Daxx Rightblast, add vendor flags and add trade supply items:
update creature_template set npc_flags = 5 where entry = 61721;
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 6, 2320, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 7, 2321, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 17, 2324, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 8, 2678, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 9, 2692, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 10, 2880, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 2, 2901, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 11, 2928, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 12, 3371, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 13, 3372, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 14, 4289, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 381, 5771, 1, 7200, 3, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 382, 5786, 1, 7200, 3, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 380, 5787, 1, 7200, 3, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 3, 5956, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 0, 6183, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 5, 6217, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 4, 6256, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 383, 6272, 1, 7200, 3, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 15, 6529, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 16, 6530, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 20, 6892, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 1, 7005, 0, 0, 0, 0);
replace INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61721, 0, 50231, 0, 0, 0, 0);

-- Disruption at Black Ash Mine
delete from quest_template where entry = 41264;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41264,2,5536,8,4,0,0,'Disruption at Black Ash Mine','Our working operations at the Black Ash Mine have come to a complete halt. Not only are we having to look over our back for those Mudpaw Gnolls, now the Venture Co. are lurking around.$B$BI\'ve been receiving some reports from some of the miners that they have seen a goblin command the gnolls on their attack at the Black Ash Mine. Head just to the north of here, and delve into the mine itself. If you find anyone related to the Venture Co. slay them, and then return to me.','Explore the depths of the Black Ash Mine to the north of Rustgate Ridge and seek out any affiliation between the Mudpaw Gnolls and the Venture Co.','Let us hope such rumors are not true.','A goblin deep within the mine itself?$B$BThis is big news, and somewhat concerning. I will discuss this with my superiors, but your information has given us exactly what we need. You\'ve done well this day, upstart.',0,0,0,0,0,0,0,0, 61671,1,0,0,0,0,0,0, 0,0, 125,4080,680, 1001,200,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61733, 41264);
replace into creature_involvedrelation  (id, quest) values (61733, 41264);
update quest_template set requiredraces = 434		 where entry = 41264;

-- Disruption at Rustgate Lumber Yard
delete from quest_template where entry = 41265;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41265,2,5536,7,3,0,0,'Disruption at Rustgate Lumber Yard','When we first arrived on this island, it was a lush and green oasis, full of trees and wildlife. We turned a great profit with the Rustgate Lumber Yard just to the northeast of here and all of that profit has come to a crashing halt.$B$BBelieve it or not, there are still quite a few trees that we could harvest, yet the Venture Co. has taken claim to one of our most lucrative sources of revenue! I\'ve even heard they are working out of it themselves, such nerve!$B$BI require you to head to the Rustgate Lumber Yard and start cracking some heads, make the Venture Co. think twice before messing with the Durotar Labor Union again.','Slay Venture Co. around the Rustgate Lumber Yard for Supervisor Ozzick at Rustgate Ridge on Blackstone Island.','It won\'t be long until we reclaim the Lumber Yard for ourselves.','Nice work kid, I knew I could trust my instinct in guiding your destructive hands. It won\'t be long until we are back to tree chopping and harvesting once more.',0,0,0,0,0,0,0,0, 61675,8,61677,6,0,0,0,0, 0,0, 125,2880,480, 1001,200,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61733, 41265);
replace into creature_involvedrelation  (id, quest) values (61733, 41265);
update quest_template set requiredraces = 434		 where entry = 41265;

-- The Big Man
delete from quest_template where entry = 41266;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41264,41266,2,5536,7,3,0,0,'The Big Man','Look, I\'m gonna keep this blunt with you, things are -not- looking good, and the big man is going to need to hear about it. He\'s already got an idea that we are not doing the best right now, but once he hears this he\'s gonna blow a gasket.$B$BSo I\'m gonna need a little old favor. Why don\'t you run this report up to Taxxlo Rustgate at the top of the tower here in town, and bring him this report. Make sure you\'re snappy with it, he doesn\'t like waiting.','Bring Ozzick\'s Report to Taxxlo Rustgate at Rustgate Ridge on Blackstone Island.','You better have a good reason for bothering me.','<Taxxlo begins to read the report, his face growing more and more angry with each passing second.>$B$BVenture Company working with the Mudpaw Gnolls?! First we are shedding gold out of our backside and now this!$B$B<Taxxlo takes a long moment to reflect>$B$BGet out of here, before I toss you off this tower.',41208,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41208,1, 0,240,40, 1001,50,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61733, 41266);
replace into creature_involvedrelation  (id, quest) values (61729, 41266);
update quest_template set requiredraces = 434		 where entry = 41266;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41208,8927,'Ozzick\'s Report',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,7);

replace INTO creature_template VALUES
(61894, 17279, 0, 0, 0, 0, 'Sinodas Azuresky', NULL, 0, 35, 35, 1342, 1342, 0, 0, 1373, 371, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 51, 65, 0, 138, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 51.128, 70.301, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61895, 6630, 0, 0, 0, 0, 'Aeltalor Flameshard', NULL, 0, 12, 12, 247, 247, 422, 422, 573, 16, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 26, 30, 0, 66, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 21.2784, 29.2578, 100, 7, 0, 61895, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- No Shortcuts To Salvation
delete from quest_template where entry = 41267;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41267,2,5225,12,8,0,0,'No Shortcuts To Salvation','Amidst the captivating beauty of lush foliage and verdant landscapes, a subtle undercurrent of darkness threatens our existence here in the Thalassian Highlands. We relentlessly pursue knowledge to curb the growing addiction to mana that pervades our birthright, while our adversaries dangle the dangerous allure of fel magic. Already they have ensnared some of our kin in their sinister grasp.$B$BOnly recently have we discovered a source of fel magic nearby, traced to the Isle of Eternal Autumn in the west. No doubt the Blood Elves have their hand in this, trying to allure those more desperate to the emanations of their dark magic. Seek out this tainted energy, and bring it to me so that it may be properly destroyed.','Discover the source of the fel magic lingering on the Isle of Eternal Autumn and bring it to Sinodas Azuresky at the Citadel of the Sun in Alah\'Thalas so that it may be destroyed.','The longer that you delay, the more this land may be scarred by the dark energies of fel magic.','You have done well this day, our magic shall have no problem in destroyed and purifying this crystal. Your actions may have saved many true and pure souls from being tempted to darker energy.$B$BTake this, as a thanks from us at the Citadel.',41209,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4680,780, 269,200,0,0,0,0,0,0, 0,0,0, 2455,3,0,0,0,0,0,0, 1180,2,955,2,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61894, 41267);
replace into creature_involvedrelation  (id, quest) values (61894, 41267);
update quest_template set requiredraces = 589		 where entry = 41267;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41209,1405,'Chunk of Felstone',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0,4);

replace into creature_loot_template values
(61895,41209,-100,0,1,1,0);

set @gossip_menu_id = 41596; set @magic_number = 61894;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Our research here is proving to be quite extensive. To find the cure for the intense desire of arcane that molds our very essence is a monumental task. One only us elves may be worthy of discovering.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Creature loot table: Aeltalor Flameshard.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 768, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 785, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2406, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2409, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2447, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2449, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2598, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2881, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3609, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3610, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4292, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4408, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4409, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4659, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4681, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 5573, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 6342, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 6716, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 7288, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 8177, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 8182, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15480, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15481, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15482, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2407, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2553, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2657, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4540, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 8179, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15300, 0.04, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2070, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3289, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4680, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4693, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 14115, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15490, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3281, 0.0852, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3286, 0.0852, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3290, 0.0852, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3644, 0.0852, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 5574, 0.0852, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15015, 0.0852, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15484, 0.0852, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4604, 0.1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 14110, 0.1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15013, 0.1, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 1210, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3649, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4536, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15301, 0.12, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3312, 0.14, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3303, 0.16, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 14116, 0.16, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15297, 0.16, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3279, 0.1704, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4687, 0.1704, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4692, 0.1704, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 14099, 0.1704, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 15302, 0.1704, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 4686, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3284, 0.2555, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 14102, 0.2555, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 774, 0.26, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 14095, 0.3407, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 30019, 0.5, 0, -30019, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 30020, 0.5, 0, -30020, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 30041, 0.5, 5, -30041, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2835, 0.54, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 818, 0.6, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 856, 0.75, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2770, 0.76, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 1181, 0.98, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 3013, 1.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 118, 1.6184, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 159, 2.2998, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 30018, 2.5, 0, -30018, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 117, 7.155, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61895, 2589, 26.661, 0, 1, 2, 0);

replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30168, 'You do not know the powers in which you interfere!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature_ai_scripts where id = 2200045;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(2200045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30168, 0, 0, 0, 0, 0, 0, 0, 0, 'Aeltalor Flameshard - Say on Aggro');

delete from creature_ai_events where id = 2200045;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES
(2200045, 61895, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200045, 0, 0, 'Aeltalor Flameshard - Say on Aggro');

-- Faladar Starsplinter
set @creature_entry = 61895;
set @description = ': Aeltalor Flameshard';
set @spell_list_id = 180297;

set @spellid_1 = 707; -- Immolate
set @probability_1 = 100;
set @casttarget_1 = 1;
set @castflags_1 = 4;
set @delayinitialmin_1 = 0;
set @delayinitialmax_1 = 0;
set @delayrepeatmin_1 = 5;
set @delayrepeatmax_1 = 14;

set @spellid_2 = 980; -- Curse of Agony
set @probability_2 = 100;
set @casttarget_2 = 1;
set @castflags_2 = 4;
set @delayinitialmin_2 = 2;
set @delayinitialmax_2 = 2;
set @delayrepeatmin_2 = 20;
set @delayrepeatmax_2 = 20;

set @spellid_3 = 0;
set @probability_3 = 0;
set @casttarget_3 = 0;
set @castflags_3 = 0;
set @delayinitialmin_3 = 0;
set @delayinitialmax_3 = 0;
set @delayrepeatmin_3 = 0;
set @delayrepeatmax_3 = 0;

set @spellid_4 = 0;
set @probability_4 = 0;
set @casttarget_4 = 0;
set @castflags_4 = 0;
set @delayinitialmin_4 = 0;
set @delayinitialmax_4 = 0;
set @delayrepeatmin_4 = 0;
set @delayrepeatmax_4 = 0;

set @spellid_5 = 0;
set @probability_5 = 0;
set @casttarget_5 = 0;
set @castflags_5 = 0;
set @delayinitialmin_5 = 0;
set @delayinitialmax_5 = 0;
set @delayrepeatmin_5 = 0;
set @delayrepeatmax_5 = 0;

set @spellid_6 = 0;
set @probability_6 = 0;
set @casttarget_6 = 0;
set @castflags_6 = 0;
set @delayinitialmin_6 = 0;
set @delayinitialmax_6 = 0;
set @delayrepeatmin_6 = 0;
set @delayrepeatmax_6 = 0;

set @spellid_7 = 0;
set @probability_7 = 0;
set @casttarget_7 = 0;
set @castflags_7 = 0;
set @delayinitialmin_7 = 0;
set @delayinitialmax_7 = 0;
set @delayrepeatmin_7 = 0;
set @delayrepeatmax_7 = 0;

set @spellid_8 = 0;
set @probability_8 = 0;
set @casttarget_8 = 0;
set @castflags_8 = 0;
set @delayinitialmin_8 = 0;
set @delayinitialmax_8 = 0;
set @delayrepeatmin_8 = 0;
set @delayrepeatmax_8 = 0;

-- Do not touch this part:
update creature_template set spell_list_id = @spell_list_id, ai_name = 'EventAI', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
where entry = @creature_entry;
replace into creature_spells (entry, name, 
spellid_1, probability_1, casttarget_1, castflags_1, delayinitialmin_1, delayinitialmax_1, delayrepeatmin_1, delayrepeatmax_1, 
spellid_2, probability_2, casttarget_2, castflags_2, delayinitialmin_2, delayinitialmax_2, delayrepeatmin_2, delayrepeatmax_2, 
spellid_3, probability_3, casttarget_3, castflags_3, delayinitialmin_3, delayinitialmax_3, delayrepeatmin_3, delayrepeatmax_3, 
spellid_4, probability_4, casttarget_4, castflags_4, delayinitialmin_4, delayinitialmax_4, delayrepeatmin_4, delayrepeatmax_4, 
spellid_5, probability_5, casttarget_5, castflags_5, delayinitialmin_5, delayinitialmax_5, delayrepeatmin_5, delayrepeatmax_5, 
spellid_6, probability_6, casttarget_6, castflags_6, delayinitialmin_6, delayinitialmax_6, delayrepeatmin_6, delayrepeatmax_6, 
spellid_7, probability_7, casttarget_7, castflags_7, delayinitialmin_7, delayinitialmax_7, delayrepeatmin_7, delayrepeatmax_7, 
spellid_8, probability_8, casttarget_8, castflags_8, delayinitialmin_8, delayinitialmax_8, delayrepeatmin_8, delayrepeatmax_8) 
values (@spell_list_id, @description,
@spellid_1, @probability_1, @casttarget_1, @castflags_1, @delayinitialmin_1, @delayinitialmax_1, @delayrepeatmin_1, @delayrepeatmax_1,
@spellid_2, @probability_2, @casttarget_2, @castflags_2, @delayinitialmin_2, @delayinitialmax_2, @delayrepeatmin_2, @delayrepeatmax_2,
@spellid_3, @probability_3, @casttarget_3, @castflags_3, @delayinitialmin_3, @delayinitialmax_3, @delayrepeatmin_3, @delayrepeatmax_3,
@spellid_4, @probability_4, @casttarget_4, @castflags_4, @delayinitialmin_4, @delayinitialmax_4, @delayrepeatmin_4, @delayrepeatmax_4,
@spellid_5, @probability_5, @casttarget_5, @castflags_5, @delayinitialmin_5, @delayinitialmax_5, @delayrepeatmin_5, @delayrepeatmax_5,
@spellid_6, @probability_6, @casttarget_6, @castflags_6, @delayinitialmin_6, @delayinitialmax_6, @delayrepeatmin_6, @delayrepeatmax_6,
@spellid_7, @probability_7, @casttarget_7, @castflags_7, @delayinitialmin_7, @delayinitialmax_7, @delayrepeatmin_7, @delayrepeatmax_7,
@spellid_8, @probability_8, @casttarget_8, @castflags_8, @delayinitialmin_8, @delayinitialmax_8, @delayrepeatmin_8, @delayrepeatmax_8);

-- Display ID for creature entry 61886 Miriam Lenheim is not activated and currently does not show properly.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(20541, 0, 0, 0, 0);
-- Npc "Blood Elf Ranger" add weapon 1 2092, weapon 3 13022:
UPDATE `creature_equip_template` SET `equipentry1` = 2092, `equipentry3` = 13022 WHERE `entry` = 20473;
-- Quest Ashen Pelts, change short description text 'six' to '6':
update quest_template set objectives = 'Bring 6 Ashpaw Pelts to Pumpworker Fizzlo at The Water Hole.' where entry = 41183;
-- Quest 'Clearing Nuisances' entry 41162 has a typo in the short description, it currently says Hazzik's Workshop and should say Gazzik's Workshop:
update quest_template set objectives = 'Kill Ashfeather Scavengers and Blackvenom Scorpids for Fanzo Edgeline at Gazzik\'s Workshop.' where entry = 41162;
-- Quest War on Venture Co. entry 41172, make the following item 41039 also drop from the creature Venture Co. Cartographer (entry 61677) and Venture Co. Lumber Worker (Entry 61675) with a drop chance of 50%
replace into creature_loot_template values
(61677,41039,-50,0,1,1,0),
(61675,41039,-50,0,1,1,0);
-- Quest Entry 41210 Durotar Labor Beginnings, make sure quest has no previous requirements, and set npc Galmo Tazzwrench as start and finish NPC, make sure Galmo Tazzwrench has quest flags, change racemask of the quest to 434
update creature_template set npc_flags = 3 where entry = 61861;
update quest_template set prevquestid = 0, requiredraces = 434 where entry = 41210;
delete from creature_questrelation where id = 61861 and quest = 41210;
delete from creature_involvedrelation where id = 61861 and quest = 41210;
replace into creature_questrelation		(id, quest) values (61861, 41210);
replace into creature_involvedrelation  (id, quest) values (61861, 41210);
-- Quest Entry 41213 Venture Co. Expansion, make sure quest has no previous requirements, set start and finish npc as Security Officer Mort Tozzlefume, change racemask of the quest to 434
update creature_template set npc_flags = 3 where entry = 60970;
update quest_template set prevquestid = 0, requiredraces = 434 where entry = 41213;
delete from creature_questrelation where id = 60970 and quest = 41213;
delete from creature_involvedrelation where id = 60970 and quest = 41213;
replace into creature_questrelation		(id, quest) values (60970, 41213);
replace into creature_involvedrelation  (id, quest) values (60970, 41213);
-- Set Strong Fishing Pole Stock to 1:
update npc_vendor set maxcount = 1, incrtime = 7200 where item = 6365 and maxcount = 0;
-- Change quest text of 'Torn Soul' from Miriam Lenheim to the following text:
update quest_template set details = 'Who is there? Hello?! I cannot see you - but I know you\'re there. Please, whoever you are, help me! There is so much pain, I cannot bear it, it feels like I am being torn asunder every moment of my existence. Countless dark shadows scurry around the houses, pulling and tearing at me. It is like I am at multiple places at once, and my very being wanes at the pressure.$B$BStranger, I beg of you, find the pieces missing from me! They are moving... at different places! End my torture by all that is holy!' where entry = 41198;

-- Change the gold buy value of the items below to 2g, change the sell value to 50silver:
update item_template set buy_price = 20000, sell_price = 5000 where entry in (69153,69154,69155,69156,69157,69158,69159,69160,69161,69162,69163,69164,69165);
-- Change the gold buy value of the items below to 10g, change the sell value to 2gold 50 silver:
update item_template set buy_price = 100000, sell_price = 25000 where entry in (69133,69134,69135,69136,69137,69138,69139,69140,69141,69142,69143,69144,69145);
-- Change the gold buy value of the items below to 1g, change the sell value to 25 silver:
update item_template set buy_price = 10000, sell_price = 2500 where entry in (41078,41079,41080,41081,41082,41083,41084,41085,41087,41088,41089,41090,41091,41092,41093,41094,41095,41097,41098,41099,41100,41101,41102);

-- Change Stormwind Pet Trainer (61629) Gossip:
-- Pet Trainer in Stormwind Park has a "reset hunter talents" gossip instead of "reset pet training".  Please copy the behavior of other vanilla Pet Trainers onto this NPC.
update creature_template set trainer_type = 3, unit_flags = 4608, flags_extra = 524298 where entry = 61629;
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(41530, 1, 3, 'Train me in the ways of the beast.', 8408, 5, 16, 0, 0, 0, 0, 0, NULL, 0, 0),
(41530, 2, 0, 'I wish to untrain my pet.', 10621, 17, 16, 0, 0, 0, 0, 0, NULL, 0, 0);
-- Change icon of item 41164 Bucket of Grapes to 21973.
update item_template set display_id = 21973 where entry = 41164;
-- Item display fixes sql:
update item_template set display_id = 40719 where entry = 41108;
update item_template set display_id = 33467 where entry = 41164;
update item_template set display_id = 1262 where entry = 41161;
update item_template set display_id = 1550 where entry = 41111;
update item_template set armor = 113 where entry = 41192;
-- NPC 61705 change name to Deepmurk Oracle, change mana to 75:
update creature_template set name = 'Deepmurk Oracle', mana_min = 75, mana_max = 75 where entry = 61705;
-- Quest 'A Flickering Flame' (40699) main text has been updated.
update quest_template set details = 'Why hello there!$B$BWhat, shocked to see a gnome so far west? Well, you should be, there isn\'t many of my kind so far from home.$B$BOr well, what used to be home.$B$BEither way, I\'m looking to conduct experiments now that I have some time and space to myself, the first of which requires some flammable, and quite dangerous materials!$B$BFar to the west is a place called The Charred Vale, it is there that roving flame elementals can be found, from them I\'d like to acquire something called a \'Flickering Flame\'. Get it for me, and I\'ll make sure you\'re compensated.' where entry = 40699;
-- Change flying machines NPC 50597, 50598 display IDs to: 18510:
update creature_template set display_id1 = 18510 where entry in (50597, 50598);
-- Warrior Trainer - Larane Dawnbringer - 80247: Npc flags fix.
update creature_template set npc_flags = 19 where entry in (80247);
-- Quests 80250,80251,80256,80252,80253,80254,80258,80260,80261,80262,80263,80264,80265,40371,40373,40372,40374,40375,40376,40377,40378,40379,40380,40381,40383,40384,40392,40393,80200 should be removed (completely or just from their quest starter npc)
delete from creature_questrelation where quest in (80250,80251,80256,80252,80253,80254,80258,80260,80261,80262,80263,80264,80265,40371,40373,40372,40374,40375,40376,40377,40378,40379,40380,40381,40383,40384,40392,40393,80200);
delete from creature_involvedrelation where quest in (80250,80251,80256,80252,80253,80254,80258,80260,80261,80262,80263,80264,80265,40371,40373,40372,40374,40375,40376,40377,40378,40379,40380,40381,40383,40384,40392,40393,80200);
UPDATE `quest_template` SET `Title` = '[DEPRECATED] A Diplomatic Mission' WHERE `entry` = 40371;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Appealing to the Alliance: Humans' WHERE `entry` = 40372;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Appealing to the Alliance: Dwarves' WHERE `entry` = 40373;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Appealing to the Alliance: Gnomes' WHERE `entry` = 40374;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Appealing to the Alliance: Night Elves' WHERE `entry` = 40375;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] The Kaldorei Problem' WHERE `entry` = 40376;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Breaking the Felstar' WHERE `entry` = 40377;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Thalassian Accession' WHERE `entry` = 40378;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Darnassian Endorsement' WHERE `entry` = 40379;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] The Magical Ailment' WHERE `entry` = 40380;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] A Quest for the Moonwell' WHERE `entry` = 40381;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Vestia\'s Missive' WHERE `entry` = 40383;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] A People Restored' WHERE `entry` = 40384;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Summons by the Ranger-General' WHERE `entry` = 40392;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Summons by Lady Windrunner' WHERE `entry` = 40393;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Farstrider Lodge' WHERE `entry` = 80200;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Assisting the Children of the Sun' WHERE `entry` = 80250;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] To Alah\'Thalas!' WHERE `entry` = 80251;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] A Crystal Clear Task' WHERE `entry` = 80252;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Relics in Feralas' WHERE `entry` = 80253;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Smashing Zul\'Mashar' WHERE `entry` = 80254;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Welcome to Alah\'Thalas' WHERE `entry` = 80256;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Tears of the Poppy' WHERE `entry` = 80258;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Help With a Compassionate Matter' WHERE `entry` = 80260;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Teslinah\'s Search I' WHERE `entry` = 80261;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Teslinah\'s Search II' WHERE `entry` = 80262;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Teslinah\'s Search III' WHERE `entry` = 80263;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Teslinah\'s Search IV' WHERE `entry` = 80264;
UPDATE `quest_template` SET `Title` = '[DEPRECATED] Teslinah\'s Search V' WHERE `entry` = 80265;
-- Quest 80289 should not require completion of 80256.
update quest_template set prevquestid = 0 where entry = 80289;
-- Item Rommath's Orders should be readable and have the following text:
update item_template set description = '', page_text = 50692 where entry = 41196;
-- Unnecessary Flavour Text fix.
update item_template set description = '' where entry in (41179,41180,41181,41198,41199,41200,41201,41202,41203);
-- Change mana of Veloren Brightstar id 61787 to 50.
update creature_template set mana_min = 50, mana_max = 50 where entry = 61787;
-- Change mana of Reefscale Sorceress id 61709 to 135.
update creature_template set mana_min = 135, mana_max = 135 where entry = 61709;
-- Shadowforge Prowler id 80207 change lvl to 17-18 and all stats accordingly, copy loot table from npc 1222.
replace INTO creature_template VALUES
(80207, 6053, 6057, 0, 0, 0, 'Shadowforge Prowler', NULL, 0, 17, 18, 386, 417, 490, 490, 782, 16, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 27, 34, 0, 84, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 28.6704, 39.4218, 100, 7, 0, 80207, 424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 20, 31, 'EventAI', 0, 3, 0, 0, 3, 20507, 0, 0, 0, 0, 0, 0, 0, '');

replace INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (20507, 5303, 0, 0);

replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 818, 0.16, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 856, 0.75, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 858, 1.0243, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 954, 0.46, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 955, 0.52, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 1179, 1.7926, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 1180, 0.58, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 1206, 0.08, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 1210, 0.36, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2274, 1, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2407, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2409, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2450, 0.06, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2452, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2455, 0.5122, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2589, 18.822, 0, 1, 3, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2592, 19.3342, 0, 1, 2, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2657, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2700, 0.08, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2770, 0.08, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2835, 0.03, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 2881, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 3012, 0.34, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 4293, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 4345, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 4408, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 4409, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 4541, 3.9693, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 5574, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 5578, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 6344, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 6347, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 6348, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 6391, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 6716, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 30022, 0.5, 0, -30022, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 30024, 0.5, 0, -30024, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 30037, 2.5, 0, -30037, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80207, 30038, 0.5, 0, -30038, 1, 0);

-- Shadowforge Fire Priest id 80205 change lvl to 19 and all stats accordingly, copy loot table from npc 1222.
replace INTO creature_template VALUES
(80205, 6055, 0, 0, 0, 0, 'Shadowforge Fire Priest', NULL, 0, 19, 19, 449, 449, 490, 490, 817, 16, 0, 1, 1.14286, 1, 18, 5, 0, 0, 1, 29, 35, 0, 88, 1, 2000, 2000, 2, 32768, 0, 0, 0, 0, 0, 0, 31.504, 43.318, 100, 7, 0, 80205, 424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 180298, 0, 0, NULL, 23, 35, 'EventAI', 0, 3, 0, 0, 3, 20508, 0, 0, 0, 0, 0, 0, 0, '');

replace INTO creature_spells VALUES
(180298, ': Shadowforge Fire Priest', 1094, 100, 1, 0, 0, 0, 8, 12, 22, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

replace INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (20508, 5303, 0, 0);

replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 80216, -100, 1, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 818, 0.16, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 856, 0.75, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 858, 1.0243, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 954, 0.46, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 955, 0.52, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 1179, 1.7926, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 1180, 0.58, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 1206, 0.08, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 1210, 0.36, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2274, 1, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2407, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2409, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2450, 0.06, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2452, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2455, 0.5122, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2589, 18.822, 0, 1, 3, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2592, 19.3342, 0, 1, 2, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2657, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2700, 0.08, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2770, 0.08, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2835, 0.03, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 2881, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 3012, 0.34, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 4293, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 4345, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 4408, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 4409, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 4541, 3.9693, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 5574, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 5578, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 6344, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 6347, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 6348, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 6391, 0.04, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 6716, 0.02, 0, 1, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 30022, 0.5, 0, -30022, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 30024, 0.5, 0, -30024, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 30037, 2.5, 0, -30037, 1, 0);
replace INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (80205, 30038, 0.5, 0, -30038, 1, 0);

-- Quest 41212 title has been updated.
update quest_template set title = 'Digging Deeper' where entry = 41212;
-- Fix for robe name without robe.
update item_template set name = 'Amice of Eternal Autumn' where entry = 41151; -- robe of the eternal autumn.
-- High Elves Quest - Kingsbane - Should be marked as (Elite).
update quest_template set type = 1 where entry = 41252;
-- Remove quest Lesson in Protection from npc 80247 and assign quest 1684 to npc 80247.
delete from creature_questrelation where id = 80247 and quest = 41261;
delete from creature_involvedrelation where id = 4088 and quest = 41261;
replace into creature_questrelation		(id, quest) values (80247, 1684);
-- Fix item displays.
update item_template set display_id = 36392 where entry = 41187; -- reefscale pantaloons
update item_template set display_id = 37425 where entry = 41011; -- wooden gryphon carving
-- Deepmurk Warrior, Deepmurk Oracle, Deepmurk Darkhunter, Highborne Soulwraith needs to do 50% less melee damage.
update creature_template set dmg_min = 10, dmg_max = 16 where entry in (61705,61706,61707,61718);
-- Highborne Soulwraith should cast its Banshee Curse ability every 18-20 seconds instead of every 12 seconds.
update creature_spells set delayRepeatMin_1 = 18, delayRepeatMax_1 = 20 where entry = 180253;

-- Goblin Class Letter Quests remastering:
-- Ashcovered Letter
delete from quest_template where entry = 41203;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41203,2,-81,2,2,0,0,'Ashcovered Letter','While you were getting your hands dirty, I got this letter from Rustgate Ridge. It\'s from Mayten Boomrifle, he\'s instructing the especially triggerhappy around here. You can get to Rustgate Ridge just to the east of here, up the hill. Follow the road and you\'ll find it. Take the letter and talk to him once you have the time. Hah, what am I saying - as if you\'d ever have time. Now get back to work!','Bring the Ashcovered Letter to Grizzie the Enforcer at Rustgate Ridge just up the hill to the east.','Hey, buddy! Still slogging through the coal pits?','Good to have you here. To be frank, I saw your physique when you came through here on your arrival - and watching you work in the pits showed me how durable you really are. If you need some tips and tricks on how to make life here easier, toss me a few coins. Will be worth your money, I\'ll assure you.',41137,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41137,1, 0,240,40, 1001,50,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

delete from creature_questrelation					 where quest = 41203;
delete from creature_involvedrelation				 where quest = 41203;
replace into creature_questrelation		(id, quest) values (61737, 41203);
replace into creature_involvedrelation  (id, quest) values (80104, 41203);
update quest_template set requiredraces = 256		 where entry = 41203;
update quest_template set requiredclasses = 1		 where entry = 41203;

delete from item_template where entry = 41137;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41137,3022,'Ashcovered Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50679,7);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50679, '$n, I\'ve seen how you handle your weapon and I must say - you show potential.$B$BWith a bit of training, we should be able to rough you up into a workable shape! Who knows, maybe you\'ll become a bruiser in the end, or even one of those adventurous types running around all of Azeroth. Whatever it will be, with enough money I can give you a nice headstart for your future career.$B$BGizzie the Enforcer, Warrior Trainer.', 0);

-- Glyphcovered Letter
delete from quest_template where entry = 41204;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41204,2,-161,2,2,0,0,'Glyphcovered Letter','While you were getting your hands dirty, I got this letter from Rustgate Ridge. It\'s from Mayten Boomrifle, he\'s instructing the especially triggerhappy around here. You can get to Rustgate Ridge just to the east of here, up the hill. Follow the road and you\'ll find it. Take the letter and talk to him once you have the time. Hah, what am I saying - as if you\'d ever have time. Now get back to work!','Bring the Glyphcovered Letter to Wizette Icewhistle at Rustgate Ridge just up to the hill to the east.','Well, hello! Fancy seeing you here.','Some say mastering the arcane takes years and years of disciplined studies. Nay I say! The simple tricks are the ones that bring you the most money. Shimmy over with some silver and soon you can get your own steady income by selling conjured water to poor fools that need it!',41138,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41138,1, 0,240,40, 1001,50,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

delete from creature_questrelation					 where quest = 41204;
delete from creature_involvedrelation				 where quest = 41204;
replace into creature_questrelation		(id, quest) values (61737, 41204);
replace into creature_involvedrelation  (id, quest) values (80108, 41204);
update quest_template set requiredraces = 256		 where entry = 41204;
update quest_template set requiredclasses = 128		 where entry = 41204;

delete from item_template where entry = 41138;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41138,3022,'Glyphcovered Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50680,7);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50680, '$n, news goes around Rustgate Ridge that some big shot prodigy mage blasts their way through the coalpits.$B$BArcane power is cool and all that, but unrefined abilities won\'t bring you any gold. And it will make us look like amateurs too in turn. Should you ever desire to hone your magical skills to something more profitable, give me a holler up in Rustgate\'s Tower. Don\'t forget to bring some coin, my dear!$B$BWizette Icewhistle, Mage Trainer.', 0);

-- Mudcovered Letter
delete from quest_template where entry = 41205;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41205,2,-261,2,2,0,0,'Mudcovered Letter','While you were getting your hands dirty, I got this letter from Rustgate Ridge. It\'s from Mayten Boomrifle, he\'s instructing the especially triggerhappy around here. You can get to Rustgate Ridge just to the east of here, up the hill. Follow the road and you\'ll find it. Take the letter and talk to him once you have the time. Hah, what am I saying - as if you\'d ever have time. Now get back to work!','Bring the Mudcovered Letter to Mayten Boomrifle at Rustgate Ridge.','Oh! That\'s a nice boomstick you got there.','I see you share my love for guns. They\'re beautiful, aren\'t they? Incredible tool for all sorts of fun activities - besides punching holes in your enemies. I\'m willing to share some nifty shots and such if you are willing to share some of your coin. Giving and taking around here, you know?',41139,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41139,1, 0,240,40, 1001,50,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

delete from creature_questrelation					 where quest = 41205;
delete from creature_involvedrelation				 where quest = 41205;
replace into creature_questrelation		(id, quest) values (61737, 41205);
replace into creature_involvedrelation  (id, quest) values (80105, 41205);
update quest_template set requiredraces = 256		 where entry = 41205;
update quest_template set requiredclasses = 4		 where entry = 41205;

delete from item_template where entry = 41139;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41139,3022,'Mudcovered Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50681,7);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50681, '$n, I heard the beautiful BOOMS coming down from the coalpits. Figured it must be you, the others had pitiful booms, quite boring, too.$B$BInterested in learning how to make even bigger booms with different kinds of tricks and shots? I can teach you a few things to help you against the wildlife around here, and who knows, maybe you\'ll have your own pet one day! Just holler at me and I\'ll cover everything you need.$B$BMayten Boomrifle, Hunter Trainer.', 0);

-- Black Letter
delete from quest_template where entry = 41206;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41206,2,-162,2,2,0,0,'Black Letter','While you were getting your hands dirty, I got this letter from Rustgate Ridge. It\'s from Mayten Boomrifle, he\'s instructing the especially triggerhappy around here. You can get to Rustgate Ridge just to the east of here, up the hill. Follow the road and you\'ll find it. Take the letter and talk to him once you have the time. Hah, what am I saying - as if you\'d ever have time. Now get back to work!','Bring the Black Letter to Leyli Quicktongue at Rustgate Ridge.','Psst, no need to make unnecessary noise.','What\'s one main goal in life? Helping the innocent? Achieving peace and ending tragedies? Pah, ridiculous! One\'s life goal should be prosperity! Riches! Cold hard gold! Pass some of that money over and you\'ll learn how to alleviate the rich in no time.',41140,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41140,1, 0,240,40, 1001,50,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

delete from creature_questrelation					 where quest = 41206;
delete from creature_involvedrelation				 where quest = 41206;
replace into creature_questrelation		(id, quest) values (61737, 41206);
replace into creature_involvedrelation  (id, quest) values (80106, 41206);
update quest_template set requiredraces = 256		 where entry = 41206;
update quest_template set requiredclasses = 8		 where entry = 41206;

delete from item_template where entry = 41140;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41140,3022,'Mudcovered Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50682,7);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50682, '$n, rumours spread of a particularly agile goblin doing menial tasks in the coalpits. If you ask me, you\'re destined for more.$B$BA rogue has many abilities that suit us goblins - our subtlety, nimble fingers and general willingness to overlook morals are perfect requisites. If you are interested in catching a few new tricks on how to get money, then I\'ll be happy to oblige - with the right payment, ofcourse.$B$BLeyli Quicktongue, Rogue Trainer.', 0);

-- Singed Letter
delete from quest_template where entry = 41207;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41207,2,-61,2,2,0,0,'Singed Letter','While you were getting your hands dirty, I got this letter from Rustgate Ridge. It\'s from Mayten Boomrifle, he\'s instructing the especially triggerhappy around here. You can get to Rustgate Ridge just to the east of here, up the hill. Follow the road and you\'ll find it. Take the letter and talk to him once you have the time. Hah, what am I saying - as if you\'d ever have time. Now get back to work!','Bring the Singed Letter to Amri Demondeal at Rustgate Ridge.','Hehehe, hello, fellow initiate!','I see the gleam in your eyes, eager for some more powerful spells? Ofcourse you are, the powerful are automatically the most rich around here. Just look at Rustgate and his tower. Living proof! Toss me some coin and I will help you on your journey to whatever you wish to be.',41141,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 41141,1, 0,240,40, 1001,50,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

delete from creature_questrelation					 where quest = 41207;
delete from creature_involvedrelation				 where quest = 41207;
replace into creature_questrelation		(id, quest) values (61737, 41207);
replace into creature_involvedrelation  (id, quest) values (80107, 41207);
update quest_template set requiredraces = 256		 where entry = 41207;
update quest_template set requiredclasses = 256		 where entry = 41207;

delete from item_template where entry = 41141;
replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(41141,3022,'Singed Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50683,7);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(50683, '$n, the shadows have a certain allure, don\'t they? I\'ve seen you flinging bolts left and right and you seem to be a promising individual!$B$BIn this world, the unassuming are the ones with the most advantages. Use that, and power and gold will be in your lap faster than you can blink. Show me how eager you are to learn more about what a warlock is capable of by paying me and in turn I\'ll instruct you in the arts of demonology.$B$BAmri Demondeal, Warlock Trainer.', 0);