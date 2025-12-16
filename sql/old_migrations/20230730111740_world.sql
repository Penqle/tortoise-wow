-- Grenthor <Master of Blood> , display ID 4515, faction 35, level 61 elite, humanoid, scale 1, quest/gossip flags, gossip text : "What is it that you need?"
-- Frixxle Blastvalve <Token Master> , display ID 7341, faction 35, level 55, humanoid, scale 1, quest/gossip flags, gossip text : "Looking to prove yourself in the arena?"
-- Marksman Rembrandt Olar <Hunter Trainer>, display ID 20467, faction 150, level 48, humanoid, scale 1, Hunter trainer flags, Gossip text: I have trained the Marksmen of Theramore ever since Lady Proudmoore led us to these lands.$B$BSomeone has to man the walls and keep the enemy at bay after all. I can train you too, for a price of course.
REPLACE INTO creature_template VALUES
(61638, 4515, 0, 0, 0, 0, 'Grenthor', 'Master of Blood', 0, 61, 61, 11891, 11891, 0, 0, 3900, 35, 3, 1, 1.14286, 1, 20, 5, 0, 1, 1, 751, 809, 0, 284, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61639, 7341, 0, 0, 0, 0, 'Frixxle Blastvalve', 'Token Master', 0, 55, 55, 3643, 3643, 0, 0, 3272, 35, 3, 1, 1.14286, 1, 20, 5, 0, 0, 1, 94, 118, 0, 254, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 71.2272, 97.9374, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61640, 20467, 0, 0, 0, 0, 'Marksman Rembrandt Olar', 'Hunter Trainer', 0, 48, 48, 2800, 2800, 0, 0, 2386, 150, 17, 1, 1.14286, 1, 18, 5, 0, 0, 1, 77, 96, 0, 220, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.8672, 86.4424, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41539; set @magic_number = 61639;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Looking to prove yourself in the arena?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41538; set @magic_number = 61638;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'What is it that you need?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Trainer spell list: Marksman Rembrandt Olar.
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 796, 2200, 0, 0, 20);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1117, 600, 0, 0, 12);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1424, 2200, 0, 0, 20);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1547, 10, 0, 0, 1);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1549, 1800, 0, 0, 16);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1552, 2200, 0, 0, 20);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1563, 1800, 0, 0, 50);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1564, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1567, 1200, 0, 0, 14);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 1603, 10000, 0, 0, 32);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 2003, 100, 0, 0, 4);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 2898, 14000, 0, 0, 36);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 2899, 1200, 0, 0, 14);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 2979, 600, 0, 0, 12);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 3047, 6000, 0, 0, 22);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 3048, 100, 0, 0, 6);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 3049, 7000, 0, 0, 26);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 3128, 200, 0, 0, 8);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 3663, 8000, 0, 0, 28);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 3664, 14000, 0, 0, 36);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 5117, 200, 0, 0, 8);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 5131, 2200, 0, 0, 20);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 5298, 100, 0, 0, 6);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 5338, 2000, 0, 0, 18);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 5385, 8000, 0, 0, 30);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 6198, 1200, 0, 0, 14);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 6385, 400, 0, 0, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 6791, 2200, 0, 0, 20);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 6792, 7000, 0, 0, 24);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 6999, 8000, 0, 0, 30);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 8738, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13160, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13162, 8000, 0, 0, 30);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13164, 100, 0, 0, 4);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13545, 26000, 0, 0, 44);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13546, 40000, 0, 0, 52);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13547, 50000, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13556, 400, 0, 0, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13557, 2000, 0, 0, 18);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13558, 7000, 0, 0, 26);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13559, 12000, 0, 0, 34);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13560, 24000, 0, 0, 42);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13561, 36000, 0, 0, 50);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13562, 48000, 0, 0, 58);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13799, 1800, 0, 0, 16);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13811, 8000, 0, 0, 28);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 13814, 12000, 0, 0, 34);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14332, 200, 0, 0, 8);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14333, 1800, 0, 0, 16);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14334, 7000, 0, 0, 24);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14335, 10000, 0, 0, 32);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14336, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14337, 32000, 0, 0, 48);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14338, 46000, 0, 0, 56);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14339, 16000, 0, 0, 38);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14340, 5000, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14341, 8000, 0, 0, 30);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14342, 26000, 0, 0, 44);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14343, 48000, 0, 0, 58);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14344, 12000, 0, 0, 34);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14345, 32000, 0, 0, 48);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14346, 2200, 0, 0, 20);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14347, 10000, 0, 0, 32);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14348, 24000, 0, 0, 42);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14349, 40000, 0, 0, 52);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14350, 28000, 0, 0, 46);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14351, 46000, 0, 0, 56);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14352, 600, 0, 0, 12);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14353, 2200, 0, 0, 20);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14354, 8000, 0, 0, 28);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14355, 14000, 0, 0, 36);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14356, 26000, 0, 0, 44);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14357, 40000, 0, 0, 52);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14358, 50000, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14359, 24000, 0, 0, 42);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14360, 42000, 0, 0, 54);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14361, 36000, 0, 0, 50);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14362, 48000, 0, 0, 58);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14364, 7000, 0, 0, 26);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14365, 14000, 0, 0, 36);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14366, 28000, 0, 0, 46);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14367, 46000, 0, 0, 56);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14368, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14370, 50000, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14372, 26000, 0, 0, 44);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14373, 42000, 0, 0, 54);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14374, 2000, 0, 0, 18);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14375, 8000, 0, 0, 28);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14376, 16000, 0, 0, 38);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14377, 32000, 0, 0, 48);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14378, 48000, 0, 0, 58);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14431, 6000, 0, 0, 22);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14432, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14434, 48000, 0, 0, 58);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14445, 8000, 0, 0, 30);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 14446, 28000, 0, 0, 46);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 15637, 8000, 0, 0, 30);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 15638, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 15639, 36000, 0, 0, 50);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 15640, 50000, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20044, 28000, 0, 0, 46);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20155, 10000, 0, 0, 32);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20156, 36000, 0, 0, 50);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20157, 7000, 0, 0, 26);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20158, 18000, 0, 0, 40);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20159, 7000, 0, 0, 24);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20160, 400, 0, 0, 10);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20161, 2000, 0, 0, 18);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20191, 46000, 0, 0, 56);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20738, 600, 0, 0, 12);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20931, 400, 0, 0, 28);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20932, 700, 0, 0, 36);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20933, 1300, 0, 0, 44);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20934, 2000, 0, 0, 52);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20935, 2500, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20938, 2500, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20940, 1800, 0, 0, 50);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20941, 2500, 0, 0, 60);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20942, 1200, 0, 0, 42);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 20943, 2100, 0, 0, 54);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 47296, 10000, 0, 0, 30);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 47319, 14000, 0, 0, 36);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 47320, 22000, 0, 0, 42);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 47321, 28000, 0, 0, 48);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 47322, 40000, 0, 0, 54);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES (61640, 47323, 46000, 0, 0, 60);

-- Leather Letter
delete from quest_template where entry = 41130;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (7,41130,2,12,1,1,0,0,'Leather Letter','I just received a letter that was addressed to you. One of the locals knows you well and requested that you meet with them. Congratulations once more on your sharp aim and bravery; you are certainly destined to serve the Alliance well. Old Jonah has grown impatient due to his advanced age, but please do not let him catch you mentioning it.','Read the Leather Letter and speak to Old Jonah behind Northshire Abbey.','Hah! No respect for the elderly, I see. Made me wait a painfully long time, you brat.','That is but the first lesson, kid. I did not expect to see such natural talent when it comes to your survivability, but regardless, you should go make yourself useful. As time passes and you gain more insight into the land and your own capabilities, return to me and I will teach you some more.',61811,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61811,1, 0,30,40,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (  197, 41130);
replace into creature_involvedrelation	(id, quest) values (61627, 41130);
update quest_template set requiredraces = 1, requiredclasses = 4 where entry = 41130;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61811,7450,'Leather Letter',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50677,8);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50677, 'I have heard you finally left your boring life behind and decided to serve the cause of the Alliance. Who would have imagined you\'d pick up a crossbow and claim yourself to be a hunter? It certainly reminds me of the days I first began my journey.$B$BYou will need proper guidance and a steady hand! You will find me behind the Abbey, next to the stables; be prepared.$B$BOld Jonah.', 0);

-- Taming the Beast
delete from quest_template where entry = 41131;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,41131,2,12,10,10,0,0,'Taming the Beast','My grandfather used to tell me stories about what it means to be a Hunter. Somehow, for the various other races of our lands, it seems to be very different. For us, as Humans, it\'s to adapt to nature itself - to use it as a tool, one that we respect. Our ancestors tamed the wild horses, cattle, and even the fiercest prowlers, turning them into our trusted companions. These human hands can mold the land into many different shapes, and it is our ability to adapt that forges our survivability.$B$BI need you to visit Stonefield farm and tame one of the boars. A boar is strong and durable and can be both a fearsome adversary and a great companion.','Use the Taming Rod to tame a Stonetusk Boar. Practice your skills, then return the Taming Rod to Daisy Windhelm in Goldshire.','Remember to greet Grandma Stonefield while you\'re at it. That is if you haven\'t traded your manners for those of an ogre.','Congratulations! You\'ve managed to forge your first bond! Your tenacity is admirable, my friend.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61812,1, 0,0,840,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61625, 41131);
replace into creature_involvedrelation	(id, quest) values (61625, 41131);
update quest_template set requiredraces = 1, requiredclasses = 4 where entry = 41131;
-- Taming Rod is required to tame a Stonetusk Boar.
REPLACE INTO item_template VALUES
(61812, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Taming the Beast
delete from quest_template where entry = 41132;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41131,41132,2,12,10,10,0,0,'Taming the Beast','I often miss taking a dip in Stone Cairn Lake, but nowadays it\'s fully ridden with the wildlife, the gruesome gnolls, the slimy murlocs, or the foolish rogues of the Defias. Oh well, there\'s no reason to lament peaceful times, for peaceful times will surely return soon enough.$B$BTravel east towards the Logging Camp, and near its outskirts, you should be able to find Prowlers. Compared to the domesticated boar, you may have more difficulty taming this feral creature of the forests. Though scary as it may be, once you\'ve conquered your own fear, you will have no better companion. For the lupine race is very likely to create a bond with its master that will last for perhaps the rest of its life.','Use the Taming Rod to tame a Prowler. Practice your skills, then return the Taming Rod to Daisy Windhelm in Goldshire.','Sometimes, being assertive with Prowlers is the only way to go. If you think there is no other way to convince it otherwise, just jump it—bite its ear and show it who the alpha is!','Great job! You are ready for your next and final task.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61813,1, 0,0,840,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61625, 41132);
replace into creature_involvedrelation	(id, quest) values (61625, 41132);
update quest_template set requiredraces = 1, requiredclasses = 4 where entry = 41132;
-- Taming Rod is required to tame a Prowler.
REPLACE INTO item_template VALUES
(61813, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Taming the Beast
delete from quest_template where entry = 41133;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41132,41133,2,12,10,10,0,0,'Taming the Beast','When faced with a Young Forest Bear, one cannot simply remain indifferent towards its innocence and cuteness. They are formidable creatures, despite their youth, and will likely turn aggressive if they sense any threats. To tame one of these beasts is not an easy task. However, by doing so, you will acquire an unwavering companion who will be by your side forever. These bears will scare easily, but they can also be very cuddly once they get used to you.$B$BTo find them, head to the vicinity of the Logging Camp one more time. Oh, and beware of the Tower of Azora—its occupant seems to be a little off his rocker, with a soft spot for Gnomish assistants. Steer clear if you value your sanity.','Use the Taming Rod to tame a Young Forest Bear. Practice your skills, then return the Taming Rod to Daisy Windhelm in Goldshire.','I heard bears love honey. People even say that if one eats too much of it, they turn golden yellow—but my grandfather says that\'s just a silly myth.','Here we are. Your final task is complete, and my, what a terrific job you\'ve done. You\'ve learned the just how to manage animals here in Elwynn.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61814,1, 0,0,840,0,0,0,0,0,0,0,0,0,23356,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61625, 41133);
replace into creature_involvedrelation	(id, quest) values (61625, 41133);
update quest_template set requiredraces = 1, requiredclasses = 4 where entry = 41133;
-- Taming Rod is required to tame Young Forest Bear.
REPLACE INTO item_template VALUES
(61814, 12, 0, 'Taming Rod', '', 26595, 1, 64, 1, 0, 0, 0, 2047, -1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- Training the Beast
delete from quest_template where entry = 41134;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41133,41134,2,1519,10,10,0,0,'Training the Beast','You can now tame every kind of beast you wish, but that\'s only the beginning of forming a bond with one. To do that, you have to learn how to train your new ally. Don\'t worry, I know just the guy who can help you: Marven. He resides in Stormwind, in the Park, but he will likely charge you an arm and a leg to teach you the ropes.$B$BThis Marven fellow is apparently an accomplished beast tamer, who\'s even impressed Nesingwary. Although I have no idea who that is either.','Speak with Marven the Tamer in the Park in Stormwind City.','','Ah, the newest Quiver. AJ mentioned that I should expect you sooner or later. Judging by your recent success, I can only assume that Daisy did a phenomenal job at teaching you the basics. Nevertheless, here we go, lesson number two. Let\'s see how you fare.',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,420,0,0,0,0,0,0,0,0,0,23357,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61625, 41134);
replace into creature_involvedrelation	(id, quest) values (61629, 41134);
update quest_template set requiredraces = 1, requiredclasses = 4 where entry = 41134;

-- Tainted Tablet
delete from quest_template where entry = 41135;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (788,41135,2,14,1,1,0,0,'Tainted Tablet','I was tasked with delivering this tablet to you. As if Nartok, the troublesome warlock, weren\'t enough, another troll has made its way down to the Valley of Trials. He says he is here to teach aspiring warlocks from the local tribes, claiming that his methods are authentic. $B$BHowever, I\'ve never been one for curiosity or taking unnecessary risks. I simply want to stay out of trouble and avoid any conflicts, especially when it comes to something as dangerous as fel. Just remain vigilant and stay safe.','Read the Tainted Tablet and speak to Zin\'jashi inside the Den in the Valley of Trials.','Hey mon. I be Zin\'jashi, and I welcome you.$B$BI be of the Revantusk Tribe, and I be here to teach young trolls the ways of the Twisting Nether. The demons are powerful subjects mon, but they be very treacherous - so be very careful!','You don\'t have to join any orcish coven mon, but you should use them to your advantage. This orc here, this Nartok, he be talking too much. He doesn\'t really know how to twist the demons to his advantage, he is just speaking big words like he be some chosen one. Never think that mon, by summoning the demons from the Twisting Nether, you\'ve chosen to live your life away from the Loa. And one day that will catch up to you.$B$BAnyway, if you bring me an offering, me be glad to teach you. Perhaps one day you will be as strong as the Zandalari Demoniacs!',61815,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61815,1, 0,0,40,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values ( 3143, 41135);
replace into creature_involvedrelation	(id, quest) values (61634, 41135);
update quest_template set requiredraces = 128, requiredclasses = 256 where entry = 41135;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text, material) values
(61815,12221,'Tainted Tablet',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',50678,3);

REPLACE INTO `page_text` (`entry`, `text`, `next_page`) VALUES (50678, 'Me bothers not writing too much here mon. Zol\'majin sends I from Revantusk Village to be teaching the youngins about the Fel magic. If you not be dead as you be reading this, it means you have the talent to summon the will of the Twisting Nether at your own fingertips.$B$BBut be careful mon, felfire burns worse than normal fire! Me be resting in this cave they be calling a Den — next to some other warlock that seems to have a weird syndrome, he believes himself to be some chosen one. Me be hoping you not be as boring as he.$B$B<The rest of the page is covered with a drawing that symbolizes a big-headed orc.', 0);

