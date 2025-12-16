REPLACE INTO creature_template VALUES
(61991, 20642, 0, 0, 0, 0, 'Archibald Earlwake', NULL, 0, 30, 30, 1179, 1179, 0, 0, 1240, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61992, 20643, 0, 0, 0, 0, 'Harold Coldsworth', NULL, 0, 30, 30, 1179, 1179, 0, 0, 1240, 35, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 47, 60, 0, 134, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '9617', 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61993, 11371, 0, 0, 0, 0, 'Cla\'ckora', 'The Abyssal Pincer', 0, 58, 58, 314299, 314299, 301998, 301998, 5038, 16, 0, 1, 1.14286, 2.5, 18, 5, 0, 3, 1, 2699, 3458, 0, 290, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 7, 0, 61993, 0, 0, 0, 0, 0, 90, 15, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 0, ''),
(61994, 386, 0, 0, 0, 0, 'Abyssal Oracle', NULL, 0, 58, 58, 18532, 18532, 20441, 20441, 2048, 16, 0, 1, 1.14286, 1.4, 18, 5, 0, 1, 1, 831, 1103, 0, 272, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 7, 0, 61994, 0, 0, 0, 0, 0, 100, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 1, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61995, 3619, 0, 0, 0, 0, 'Abyssal Tidehunter', NULL, 0, 58, 58, 16499, 16499, 8312, 8312, 3022, 16, 0, 1, 1.14286, 1.5, 18, 5, 0, 1, 1, 484, 641, 0, 272, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 60.5576, 83.2667, 100, 7, 0, 61995, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20533; set @weapon_1 = 3661; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61994;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

set @gossip_menu_id = 41626; set @magic_number = 61992;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'So much dust and the company is horrible, too. This place has seen better days.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41625; set @magic_number = 61991;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Get lost, idiot. Leave me to my booze.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;