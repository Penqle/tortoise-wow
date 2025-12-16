-- Fix display:
update item_template set display_id = 68071 where entry = 41076; -- Aspect of Seradane
update item_template set allowable_race = 512 where entry = 81009; -- priest racial book
update item_template set fire_res = 0 where entry = 51265;
-- Change spell 23461 to spell 17294 instead on npc Ember Talon Drake, change cast time to every 10-16 seconds:
update creature_spells set spellid_1 = 17294, delayRepeatMin_1 = 10, delayRepeatMax_1 = 16 where entry = 180294; -- Flame Breath
-- Ember Talon Runebreaker, change cast time of 44031 to 8-12 seconds, change cast time of spell 44032 to every  7-14 seconds:
update creature_spells set spellid_1 = 17294, delayRepeatMin_1 = 8, delayRepeatMax_1 = 12, delayRepeatMin_2 = 7, delayRepeatMax_2 = 14 where entry = 180295;
-- Create object called 'The Hearth of Grim Batol' which has the following pagetext with a stone background, it should use the model PlaqueStone01.m2 at scale 1.2: "" This pagetext must be in the dwarven language, and only translate for those that speak dwarvish, otherwise gibberish for others:
replace INTO gameobject_template (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(2020088, 9, 25251, 'The Hearth of Grim Batol', 0, 0, 1.2, 50694, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace INTO page_text (`entry`, `text`, `next_page`) VALUES
(50694, 'We are united under one home by the sacrifices of our brothers in arms.$B$BMay we always have this city to call our hearth, even in the darkest days. Shall it always be here for us to return, our beacon in the darkness.$B$BWe Wildhammer will forever call Grim Batol our ancestral home.', 0);

-- NPC ID 80506 should be PvP flagged.
update creature_template set unit_flags = 36864, flags_extra = 525312 where entry = 80506;
-- NPC ID 61431 should have Guard AI.
update creature_template set ai_name = 'GuardAI' where entry = 61431;
-- NPC ID 61838 and 61846 should wield Item ID 6256.
set @equip_template = 20506; set @weapon_1 = 6256; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61846;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @equip_template = 20506; set @weapon_1 = 6256; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61838;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Add gossip NPC flag to 61771 and copy them over from NPC ID 61770.
update creature_template set gossip_menu_id = 61770, npc_flags = 1 where entry = 61771;
-- Remove "Trainer" word from all gossip options on these NPCs:
-- Class text menu update:
update gossip_menu_option set option_text = 'Warrior'	where id = 0 and menu_id = 61771;
update gossip_menu_option set option_text = 'Paladin'	where id = 1 and menu_id = 61771;
update gossip_menu_option set option_text = 'Hunter'	where id = 2 and menu_id = 61771;
update gossip_menu_option set option_text = 'Rogue'		where id = 3 and menu_id = 61771;
update gossip_menu_option set option_text = 'Priest'	where id = 4 and menu_id = 61771;
update gossip_menu_option set option_text = 'Mage'		where id = 5 and menu_id = 61771;
-- Profession text menu update:
update gossip_menu_option set option_text = 'Cooking'			where id = 0 and menu_id = 61772;
update gossip_menu_option set option_text = 'Fishing'			where id = 1 and menu_id = 61772;
update gossip_menu_option set option_text = 'Enchanting'		where id = 2 and menu_id = 61772;
update gossip_menu_option set option_text = 'Alchemy'			where id = 3 and menu_id = 61772;
update gossip_menu_option set option_text = 'Leatherworking'	where id = 4 and menu_id = 61772;
update gossip_menu_option set option_text = 'Skinning'			where id = 5 and menu_id = 61772;
update gossip_menu_option set option_text = 'Tailoring'			where id = 6 and menu_id = 61772;
update gossip_menu_option set option_text = 'Herbalism'			where id = 7 and menu_id = 61772;
update gossip_menu_option set option_text = 'Engineering'		where id = 8 and menu_id = 61772;
update gossip_menu_option set option_text = 'Mining'			where id = 9 and menu_id = 61772;	