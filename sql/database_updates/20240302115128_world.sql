-- Change NPC ID 81034's faction to Durotar Labor Union.
update creature_template set faction = 1001 where entry = 81034;

-- New item 'The Golden Goblet'.
replace into item_template (entry, name, description, class, subclass, material, quality, display_id, bonding, required_level, max_count, allowable_class, allowable_race, buy_price, sell_price, inventory_type, sheath, flags, extra_flags, buy_count, stackable, container_slots, dmg_min1, dmg_max1, delay, dmg_type1, ammo_type, max_durability, armor, block, bag_family, item_level, range_mod, disenchant_id, holy_res, fire_res, nature_res, frost_res, shadow_res, arcane_res, stat_type1, stat_value1, spellid_1, spelltrigger_1, spellcharges_1, spellppmrate_1, spellcooldown_1, spellcategory_1, spellcategorycooldown_1, random_property, required_reputation_faction, required_reputation_rank) values
(55146, 'The Golden Goblet', '', 4, 0, 1, 2, 66212, 2, 33, 0, -1, -1, 12000, 3000, 12, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 26, 0, 0, 0, 0, 0, 0, 7, 5, 21507, 1, 0, 0, -1, 0, -1, 0, 0, 0);

-- Guards should have a new option in the "A profession trainer" that is called "Jewelcrafting" to get directions for the new spots used for that purpose.
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(30175, 'Jewelcrafting', 'Jewelcrafting', 0, 0, 0, 0, 0, 0, 0, 0, 0);

set @gossip_menu_id = 41624; set @magic_number = 30182;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER TEXT');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41623; set @magic_number = 30181;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER TEXT');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41622; set @magic_number = 30180;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER TEXT');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41621; set @magic_number = 30179;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER TEXT');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41620; set @magic_number = 30178;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER TEXT');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41619; set @magic_number = 30177;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER TEXT');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41618; set @magic_number = 30176;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'PLACEHOLDER TEXT');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from gossip_menu_option where action_menu_id in (41618,41619,41620,41621,41622,41623,41624);
replace INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(  751, 12, 0, 'Jewelcrafting', 30175, 1, 1, 41618, 0, 0, 0, 0, NULL, 0, 0), -- Thunder Bluff
( 1942, 13, 0, 'Jewelcrafting', 30175, 1, 1, 41619, 0, 0, 0, 0, NULL, 0, 0), -- Orgrimmar
( 2847, 13, 0, 'Jewelcrafting', 30175, 1, 1, 41620, 0, 0, 0, 0, NULL, 0, 0), -- Undercity
(  421, 13, 0, 'Jewelcrafting', 30175, 1, 1, 41621, 0, 0, 0, 0, NULL, 0, 0), -- Stormwind
( 2168, 13, 0, 'Jewelcrafting', 30175, 1, 1, 41622, 0, 0, 0, 0, NULL, 0, 0), -- Ironforge
( 2351, 10, 0, 'Jewelcrafting', 30175, 1, 1, 41623, 0, 0, 0, 0, NULL, 0, 0), -- Darnassus
(61772, 10, 0, 'Jewelcrafting', 30175, 1, 1, 41624, 0, 0, 0, 0, NULL, 0, 0); -- Alah'Thalas