-- fix bind on pickup
update item_template set bonding = 1 where entry = 61269; -- Clutchweave Robe
update item_template set bonding = 1 where entry = 61267; -- Sparkgrasp Gloves
update item_template set stat_value1 = 22, stat_value2 = 16, stat_value3 = 22, fire_res = 10, spellid_2 = 13669, spellid_3 = 0, spellid_1 = 7597 where entry = 61265; -- Leggings of the Inferno
update item_template set stat_value1 = 20, stat_value2 = 15, stat_value3 = 20, spellid_1 = 7597, spellid_2 = 13669, spelltrigger_2 = 1 where entry = 61260; -- Flamescorched Hood
-- replacement item
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (61816, 'Araxxna\'s Husk', '', 4, 0, 1, 3, 22805, 1, 60, 1, -1, -1, 346016, 86504, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 0, 0, 68, 0, 49, 0, 0, 0, 0, 0, 0, 7, 15, 13669, 1, 0, 0, 0, 0, 0, 0, 0, 0);
-- Replace item ID 61285 from Brood Queen Araxxna's loottable. (61221) with this item. Make sure to give it an item id and has the same drop chance and the same loottable as the item its replacing.
update creature_loot_template set item = 61816 where entry = 61221 and item = 61285;
-- Unable to pick up The Key to Karazhan VI (40825) after completing The Key to Karazhan V (Alliance Version)(40821).
-- Restore quests "Karazhan IV" and "Karazhan V" with new entries.
-- The Key to Karazhan IV
delete from quest_template where entry = 41136;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40819,41136,2,2562,60,58,0,0,'The Key to Karazhan IV','Yes, yes, Archmage Vandol was truly one of the greatest minds of the Kirin Tor. He was a dear friend of Medivh, if you can believe such a thing. Although, some might argue that Medivh had no true friends.$B$BAlas, I fear I cannot be of much assistance to you. After the devastation of Dalaran at the hands of Archimonde, Vandol suffered injuries that took a great toll on him. He spent many moons in recovery and eventually retired as one of the most accomplished mages of our time.$B$BI seem to recall him expressing a desire to settle in or around Theramore. If he still lives, I suggest asking for him in the city itself. One of our apprentices, Magus Halister, might know of his whereabouts.','Ask Magus Hallister in Theramore for the whereabouts of Vandol.','Welcome to Theramore. Is there anything I could help you with?','Vandol? Let me check the records.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

delete from creature_questrelation where id = 2543 and quest = 40820;
delete from creature_involvedrelation where id = 60731 and quest = 40820;
replace into creature_questrelation		(id, quest) values (2543 , 41136);
replace into creature_involvedrelation	(id, quest) values (60731, 41136);
update quest_template set requiredraces = 589 where entry = 41136;
update quest_template set nextquestinchain = 41137 where entry = 41136;

-- The Key to Karazhan V
delete from quest_template where entry = 41137;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41136,41137,2,2562,60,58,0,0,'The Key to Karazhan V','<Magus Halister carefully combs through the pages of thick tomes, his eyes scanning every line with an intensity that speaks of decades of study and experience. After several minutes of diligent searching, he finally looks up at you with a wry smile.>$B$BAh, yes. Vandol. He was here, in Theramore, some four years ago. Paid a visit to Lady Jaina, in fact. But he did not stay in the city for long. Found it too bustling for an old man like him, I suppose.$B$BAccording to our records, Vandol purchased a small boat not long after his visit. Loaded it up with vital supplies, food, and even seeds, if you can believe it. He set sail for the south, seeking a quieter life, I imagine. The coastline would be your best bet if you seek to find him.','Find Vandol. He is living somewhere on the eastern coast of Kalimdor, south of Theramore.','What brings you to my secluded house?','I sense that you have come seeking me, and that you know who I really am. It seems that my past has finally caught up with me, and I must admit that I am not surprised. $B$BTake a moment to consider the gravity of what you are about to say. For you see, I have lived a long life filled with both triumphs and tragedies. I have seen the fall of great kingdoms, and I have witnessed the atrocities that people are capable of committing in the name of power.$B$B
If you are here to confront me about the sins of my past, and the many mistakes that I have made, then I will not fight back. I will accept whatever consequences may come.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,19100,3150,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

delete from creature_questrelation where id = 60731 and quest = 40821;
delete from creature_involvedrelation where id = 61137 and quest = 40821;
replace into creature_questrelation		(id, quest) values (60731, 41137);
replace into creature_involvedrelation	(id, quest) values (61137, 41137);
update quest_template set nextquestinchain = 40825 where entry = 41137;

update quest_template set exclusivegroup = 40824 where entry in (40824,41137);

update quest_template set nextquestID = 40825 where entry = 40824;
update quest_template set nextquestID = 40825 where entry = 41137;

-- Item 61231 should drop from NPC ID 61226 from a new loottable with a 100% chance. Make sure the item is lootable by everyone.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61226, 61231, -100, 6, 1, 1, 0);
