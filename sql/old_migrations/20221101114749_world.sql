-- Please fix the item's name. Should be Darlthos' Jewelry Box.
update item_template set name = 'Darlthos\'' where entry = 60189;
-- Make https://database.turtle-wow.org/?item=80606 require only honored.
update item_template set required_reputation_faction = 893 where entry in (80606);
update item_template set required_reputation_rank = 5 where entry in (80606);
-- Change displayid of Archmage Talyvanah to 19100 (If the displayid is invalid wait a bit cause it's in today's patch)
update creature_template set display_id1 = 19100 where entry = 61064;
REPLACE INTO creature_display_info_addon VALUES (19100, 0, 0, 0, 0);
-- Change that quote from Orgnil. Instead of "Food can get…" should be: What?? The Burning Blade is Spreading! We must investigate!
update broadcast_text set male_text = 'What?? The Burning Blade is Spreading! We must investigate!' where entry = 982;
-- Quest "Food for Baby" grammar fix.
update quest_template set details = 'Sprite darters are omnivores--that means they eat both meat and vegetation. If your egg here\'s gonna hatch, we best be prepared. Some good eats for these little guys are flanks of meat, raw and juicy, believe it or not. I was never able to find out why, but it has somethin\' to do with Elune\'s plan for the elves... maybe they were to be protectors or somethin\', I don\'t know.\n\nI\'ll take care of the egg for now, why don\'t you get me some good Silvermane stalker flanks for \'em to eat when he\'s hatched.' where entry = 4297;
-- New NPC: name = 'Dorothea', subname = 'Templarios', level = 24, display_id1 = 3050, equipment_id = 3934, Make vendor and copy vendor menu from https://database.turtle-wow.org/?npc=60705, Also make them have the following dialog: Hola cariño, pareces que has tenido un día difícil ¿Qué tal un caramelito de menta?\n\n¡Porque te canta el aliento!\n\nVamos, quédate un rato y cuéntale todo a Dorothea.\n\nHey sweetie, you look like you\'ve had a rough day. How about a mint? Because your breath strinks!\n\nCome on, stay a while and tell Dorothea all about it.
-- New NPC: name = 'Valund Halle', subname = 'Templarios', level = 27, display_id1 = 267, equipment_id = 54, Make vendor and copy vendor menu from https://database.turtle-wow.org/?npc=3343. Also make repair vendor.
REPLACE INTO creature_template VALUES
(61070, 3050, 0, 0, 0, 0, 'Dorothea', 'Templarios', 0, 24, 24, 664, 664, 0, 0, 1026, 290, 5, 1, 1.14286, 0, 18, 5, 0, 0, 1, 36, 46, 0, 106, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 33, 48, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61071, 267, 0, 0, 0, 0, 'Valund Halle', 'Templarios', 0, 27, 27, 890, 890, 0, 0, 1235, 290, 16388, 1, 1.14286, 0, 18, 5, 0, 0, 1, 41, 57, 0, 112, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 38, 55, 'EventAI', 0, 3, 0, 0, 3, 54, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41272; set @magic_number = 61070;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Hola cariño, pareces que has tenido un día difícil ¿Qué tal un caramelito de menta? ¡Porque te canta el aliento!\n\nVamos, quédate un rato y cuéntale todo a Dorothea.\n\nHey sweetie, you look like you\'ve had a rough day. How about a mint? Because your breath strinks!\n\nCome on, stay a while and tell Dorothea all about it.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Dorothea
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 2593, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 2594, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 2595, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 2596, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 2723, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 4600, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61070, 0, 8766, 0, 0, 0, 0);
-- Valund Halle
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61071, 0, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61071, 0, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61071, 0, 3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61071, 0, 3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61071, 0, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61071, 0, 18567, 0, 0, 0, 0);
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2391.
update quest_template set details = 'Greetings, $R. Since you\'re here this means you\'ve come to help so listen up. We have a situation here... You might be aware that our buildings use arcane magic to operate.\n\nWhile our central crystal is the main power source, we use smaller crystals to effectively channel the arcane energy from the nexus to the outlying ley points of the structure.\n\nThe downside is that these crystals break down overtime, if we had found this outpost a decade later the entire Academy could have collapsed.\n\nFortunately, our predecessors built this site on a location with arcane crystal deposits. While the automated constructs have long since stopped working or malfunctioned, the mine remains full of intact crystals.\n\nI need you to head down there and bring me some crystals. Eight should do for now.\n\nAre you still here? Get moving.' where entry = 80252;