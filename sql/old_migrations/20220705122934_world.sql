-- frostsaber_leather remover from bengal tigers:
update creature_template set skinning_loot_id = 91826 where entry in (91826,91827,91828);

REPLACE INTO skinning_loot_template VALUES
(91826, 4304, 34.0605, 1, 1, 1, 0),
(91826, 8169, 2.3927, 1, 1, 1, 0),
(91826, 8170, 38.2829, 1, 1, 1, 0),
(91826, 8171, 4.9261, 1, 1, 1, 0);

-- New NPC for PTR:
-- Senator Granitebelt , display ID 1354, faction 57, level 50, humanoid, no weapon, quest/greeting flags, greeting text: "It's almost insulting being placed out here, you do one wrong thing and then you're sent out to the fringes to deal with problems...\n\n I guess someone has got to get their hands dirty.\n\n You looking for work, cause we can use some help."
-- Varlag Duskbeard, display ID 3436, faction 57, level 48, humanoid, weapon 7945, quest/greeting flags, greeting text: "All sorts of stuff be goin' on just around the ridgeline, keep your eyes peeled, and ye be seein' Dark Irons about.\n\n I'm here to find out what they be up to."
REPLACE INTO creature_template VALUES
(60869, 1354, 0, 0, 0, 'Senator Granitebelt', '', 0, 50, 50, 2990, 2990, 0, 0, 2958, 57, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60870, 3436, 0, 0, 0, 'Varlag Duskbeard', '', 0, 48, 48, 2398, 2398, 0, 0, 2753, 57, 3, 1, 1.14286, 0, 20, 5, 40, 0, 1, 74, 96, 0, 208, 1, 1000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20146; set @weapon_1 = 7945; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 60870;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41170; set @magic_number = 60870;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'All sorts of stuff be goin\' on just around the ridgeline, keep your eyes peeled, and ye be seein\' Dark Irons about.\n\nI\'m here to find out what they be up to.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41169; set @magic_number = 60869;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It\'s almost insulting being placed out here, you do one wrong thing and then you\'re sent out to the fringes to deal with problems...\n\nI guess someone has got to get their hands dirty.\n\nYou looking for work, cause we can use some help.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- New gossip for NPC `Overseer Oilfist`:
set @gossip_menu_id = 41168; set @magic_number = 14625;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ah, the sooty air of Searing Gorge, feels great after the smoldering air of Blackrock Mountain and smells of riches and opportunities. One has to be a fool to not exploit it, I\'m sure the others feel the same. Now tell me, how can I help you, or how can you help me?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
 -- Manual Crowd Pummeler fix:
update item_template set spellcharges_1 = 10 where entry = 9449;
-- add engage /say line to Slaver Vilegrip when he is pulled: "I thought I would only be putting slacking miners in cages, now for a real fight!" 
REPLACE INTO broadcast_text VALUES (30023, 'I thought I would only be putting slacking miners in cages, now for a real fight!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO creature_ai_scripts VALUES
(2200019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30023, 0, 0, 0, 0, 0, 0, 0, 0, 'Slaver Vilegrip - Say on Aggro');
REPLACE INTO creature_ai_events VALUES
(2200019, 60836, 0, 4, 0, 100, 0, 0, 0, 0, 0, 2200019, 0, 0, 'Slaver Vilegrip - Say on Aggro');
