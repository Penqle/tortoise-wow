
-- Blink fix from Dragy:
-- Missing Maginor Spells 10222

set @trainer = 331;
set @spell = 10222;
set @spellcost = 42000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 60; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 331;
set @spell = 3576;
set @spellcost = 4000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 24; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 331;
set @spell = 5499;
set @spellcost = 2000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 20; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 331;
set @spell = 6121;
set @spellcost = 13000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 34; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 331;
set @spell = 22784;
set @spellcost = 28000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 46; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

set @trainer = 331;
set @spell = 22784;
set @spellcost = 40000; -- in copper
set @reqskill = 0; -- not needed for class spells
set @reqskillvalue = 0; -- not needed for class spells
set @player_level = 58; 

replace into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) values (@trainer,@spell,@spellcost,@reqskill,@reqskillvalue,@player_level);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1600
replace into `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES (15794, 4, 1, 'Ripped Ogre Loincloth', '', 12413, 0, 0, 1, 9, 1, 7, -1, -1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1594
update quest_template set requiredraces = 434 where entry = 398;
update quest_template set requiredraces = 434 where entry = 55048;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/1602
update creature_template set school_immune_mask = 0, mechanic_immune_mask = 608908883 where entry = 92107; 

replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values (65033, 'Zandalar Signet of Tenacity', '', 0, 6, -1, 3, 18810, 1, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48103, 0, -1, 0, -1, 0, -1, 0, 0, 0);

update quest_template set rewchoiceitemid4 = 65033, rewchoiceitemcount4 = 1 where entry = 8246;

update quest_template set details = 'I will handle rewiring the golems of Westfall. It will take months, maybe years, but it will be done.\n\nHowever, the Defias can still easily produce new ones faster than I can rewire them. We need to halt the production. Fortunately, I know where we can find the shipments of Animation Runes.\n\nGo to the Jangolode Mine and Gold Coast Quarry. The Defias hide their runes deep inside, awaiting transport to their underground foundry. Bring them to me.\n\nAnd yes, I promised you the rest of the story. So where did we end? The arrival of Defias.\n\nVery soon, they started producing Harvest Golems on their own. How they figured it out- it is a mystery.\n\nI have my suspicions though. To produce such a Rune, a powerful mage is needed. The Defias have mages on their own, but none of them is powerful enough to make it. I think they are working with the person who turned the golems hostile in the first place. Their original creator.\n\nHis identity is still unknown to me. I hope you will find some clues with the shipment.' where entry = 40477;

update quest_template set details = 'Excuse me for my bad manners. I was so excited to lay my hands on those blueprints.\n\nMy name is Maltimor Gartside. Never have I seen these lands in such a sorry state. And it is not only because of the Defias.\n\nYou see, many years ago, a salesman arrived in Westfall. He brought new commodity - Harvest Golems. Farmers were overjoyed. The new golems worked flawlessly, gathering crops and scaring the wildlife.\n\nSo, more and more golems were being purchased. In a few years, they outnumbered the farmers.\n\nAnd then… It happened.\n\nGolems turned on their owners. In a few weeks, almost all farms in Westfall were lost to the mechanical menace. And to make matters worse, the Defias arrived. It was only natural that the people of Westfall linked the sudden change to the Brotherhood. But I believe that it is a mere coincidence. Someone else manipulated the golems, and now the Defias are using the situation to their advantage.\n\nGo to Moonbrook. Before it got overrun, the smith always had a stash of engineering equipment hidden in his forge. Check there.' where entry = 40475;