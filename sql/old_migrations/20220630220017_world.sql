-- Error Wars Episode I

update gameobject_template set script_name = '' where script_name = '0';
update creature_template set script_name = '' where script_name = '0';
update item_template set script_name = '' where script_name = '0';
update gameobject_template set script_name = '' where script_name = 'go_portal_to_darnassus';
update gameobject_template set script_name = '' where script_name = 'go_portal_to_ironforge';
update gameobject_template set script_name = '' where script_name = 'go_portal_to_stormwind';
update item_template set script_name = '' where script_name = 'item_portable_mailbox';
update item_template set script_name = '' where script_name = 'item_thunder_ale_drink';
update creature_template set script_name = '' where script_name = 'npc_vereesa_windrunner';
update creature_template set script_name = '' where script_name = 'npc_vestia_moonspear';

delete from player_factionchange_mounts where itementry = 8586;
delete from player_factionchange_mounts where itementry = 13317;

delete from creature_movement_scripts where id in (6, 7, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 58, 59, 60, 61, 62, 63, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 142102, 2841205, 4983009, 7972001, 7972005, 7972009, 7972013, 7972017, 7972021, 7972025, 7972029, 7972033, 7972037, 7972041, 7972045, 7972049, 7972053, 7972057, 7972058, 7972061, 7972065, 7972069, 7972073, 7972077, 7972081, 7972082, 7975001, 7975003, 7975006, 7975009);

delete from creature_movement where id in (47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 47304, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939, 53939);

delete from npc_vendor_template where entry in (301400, 455501, 1277701, 1278201, 1279201, 1458101);

delete from npc_vendor where item in (50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50008, 50012, 50416, 692);

delete from item_loot_template where entry in (50022, 50023, 50025, 50101, 50380, 50381, 50382, 50383, 50384, 50385, 50386, 50387, 50388, 50389, 50390, 50391, 50416, 50509, 50511, 50513, 51892);
 
delete from item_loot_template where item in (51810, 51811, 51216, 51216, 51809, 51029, 50027, 50026);

delete from creature_loot_template where entry in (2609, 8305, 12099, 14385, 30000, 50056, 50682, 50683, 61063, 61064, 61065, 80120, 80778, 80784, 91305, 91306, 91307, 91308, 91762, 91816, 91822, 91824, 91856, 91866, 91867, 91869, 91870, 91871, 91911, 91913, 91923, 91924, 91925, 91926, 91974, 92157, 92935);
 
update creature_template set loot_id = 0 where loot_id in (2914, 10578, 50105, 60495, 60499, 60503, 60505, 60510, 60511, 60514, 60518, 60519, 60520, 60521, 60522, 60523, 60524, 60526, 60527, 60528, 60529, 60530, 60531, 60532, 60533, 60534, 60535, 60536, 60536, 60538, 60539, 60540, 60541, 60542, 60543, 60544, 60546, 60547, 60548, 60549, 60550, 60551, 60552, 60553, 60554, 60555, 60557, 60558, 60559, 60560, 60561, 60562, 60563, 60564, 60565, 60566, 60567, 60568, 60569, 60570, 60571, 60572, 60573, 60574, 60575, 60576, 60577, 60578, 60579, 60580, 60581, 60586, 60587, 60588, 60589, 60590, 60591, 60592, 60593, 60595, 60597, 60598, 60599, 60600, 60601, 60602, 60603, 60604, 60606, 60607, 60612, 60614, 60615, 60616, 60617, 60617, 60619, 60620, 60621, 60622, 60623, 60624, 60625, 60626, 60627, 60631, 60632, 60633, 60673, 60674, 60675, 60675, 60697, 60698, 60715, 60716, 60742, 60743, 60744, 60745, 60746, 60747, 60748, 60757, 60758, 60829, 60830, 60831, 60835, 60836, 60837, 60838, 60839, 60840, 60841, 60842, 60843, 60844, 60845, 60847, 60848, 60849, 60852, 60853, 65104, 65115, 65126, 65128, 91001, 91001, 91193, 91194, 91250, 92122, 60604);

delete from creature_involvedrelation where quest in (41015, 50229, 50228, 40060, 5805, 5841, 5842, 5843, 5844, 5847, 50300, 60003, 60118, 50011, 50012, 50010, 50010, 50010, 50010, 50010, 50301, 50302, 50303, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 65004, 65006, 40050, 40059, 65005, 65007, 80801, 40049, 40058, 40069, 40070, 40134, 40135, 40215, 40154, 100007, 100008, 100009);

delete from creature_questrelation where quest in (50229, 50300, 50228, 40069, 50301, 50011, 50012, 50010, 50010, 50010, 50010, 50010, 50302, 50303, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 60118, 65004, 65007, 40058, 40060, 40049, 80801, 65006, 40050, 40059, 40070, 40134, 40135, 40215, 40154, 100007, 100008, 100009);

delete from creature_questrelation where id = 0;
delete from creature_questrelation where id = 60429;

delete from gameobject where id in (1000024, 1000024, 1000024, 1000024, 1000024, 1000024, 1000024, 1000024, 3000512);

delete from creature_addon where guid in (8465, 14806, 14807, 24048, 38347, 39540, 47304, 47774, 47775, 53867, 90861, 2570384);

update creature_addon set auras = '' where auras = '0';

update creature set wander_distance = 0 where guid in (2563983, 2563984, 2563990, 2563989, 2563987, 2563988, 2563986, 2563991, 2563992, 2563993, 2563994, 2563995, 2563996, 2563998, 2563999, 2564000, 2564001, 2564004, 2564005, 2564006, 2564007, 2564008, 2563985, 2565187, 2565186, 2565185, 2565183, 2565184, 2565182, 2565151, 2565153, 2565157, 2565159, 2565160, 2565161, 2565162, 2565163, 2565164);

update creature set movement_type = 0 where guid in (2562939, 2562941, 2562942, 2562943, 2562944, 2562945, 2562946, 2562947, 2562948, 2562949, 2562950, 2562951, 2562952, 2562953, 2562954, 2562955, 2562956, 2562957, 2562958, 2562959, 2562960, 2562961, 2562962, 2562963, 2562964, 2562965, 2562966, 2562967, 2562968, 2562969, 2562970, 2562971, 2562972, 2562973, 2562974, 2562975, 2562976, 2562977, 2562978, 2562979, 2562980, 2562981, 2562982, 2562983, 2562984, 2562985, 2562986, 2562987, 2562988, 2562989, 2562990, 2562991, 2562992, 2562993, 2562994, 2562995, 2562996, 2562997, 2562998, 2562999, 2563000, 2563001, 2563002, 2563003, 2563004, 2563005, 2563006, 2563007, 2563008, 2563009, 2563010, 2563011, 2563012, 2563013, 2563014, 2563015, 2563016, 2563017, 2563018, 2563019, 2563020, 2563021, 2563022, 2563023, 2563024, 2563025, 2563026, 2563027, 2563028, 2563029, 2563030, 2563031, 2563032, 2563033, 2563034, 2563035, 2563036, 2563037, 2563038, 2563039, 2563040, 2563041, 2563042, 2563043, 2563044, 2563045, 2563046, 2563047, 2563048, 2563049, 2563050, 2563051, 2563052, 2563053, 2563054, 2563055, 2563056, 2563057, 2563058, 2563059, 2563060, 2563061, 2563062, 2563063, 2563064, 2563065, 2563066, 2563067, 2563068, 2563069, 2563070, 2563071, 2563072, 2563073, 2563074, 2563075, 2563076, 2563077, 2562746, 2562747, 2562750, 2562751, 2562752, 2562753, 2562755, 2562756, 2562757, 2562758, 2562762, 2562765, 2562767, 2562768, 2562771, 2562772, 2562773, 2562774, 2562777, 2562778, 2562780, 2562787, 2562788, 2562789, 2562790, 2562791, 2562792, 2562793, 2562794, 2562795, 2562796, 2562798, 2562800, 2562802, 2562804, 2562805, 2562807);

update creature set wander_distance = 0 where movement_type = 0 and wander_distance >= 0;

delete from creature_movement where id in (1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1736, 1820, 1820, 1820, 1820, 1820, 1820, 1820, 1820, 28600, 28600, 28600, 28600, 28600, 28600, 28601, 28601, 28602, 28602, 28606, 28606, 28606, 28606, 28609, 28609, 28609, 28609, 28611, 28611, 28611, 28611, 28611, 28611, 28616, 28616, 28616, 28616, 28616, 28616, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 28617, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60015, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60017, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018, 60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60018,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60020,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60021,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60023,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60024,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60025,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60027,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60028,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60031,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60036,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60040,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60041,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60042,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  60043,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  302703,  2561872);

delete from npc_trainer_template where entry in (2, 3, 4, 5, 6, 7, 8, 9);

delete from npc_trainer where entry = 1403;

update creature_ai_scripts set delay = 0 where id in (50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760);

update creature_ai_events set event_param1 = 25000, event_param2 = 120000, event_param3 = 300000, event_param4 = 700000 where action1_script in (50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760, 50530, 50580, 50581, 50582, 50583, 50584, 50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50661, 50760);

delete from creature_groups where leader_guid in (27113, 27113, 27113, 28611, 28611, 28616, 28616, 28617, 28617, 90975, 90861, 47771, 47771, 47771, 53363, 53365, 53369, 53370, 53434, 53436, 53437, 53440, 53524, 53525, 53529, 53530, 53939, 53939, 53944, 53944, 75010, 75010, 79720, 1246441, 1246441, 1246441, 1246441);

update creature_template set faction = 35 where entry in (7, 10, 31, 55, 62, 65, 67, 929, 6029, 6036, 20120, 40049, 50665, 50666, 50667, 50668, 50670, 60301, 60312, 60313, 60314, 60315, 60316, 60317, 60318, 60319, 60320, 60321, 60322, 60323, 60324, 60325, 60326, 60327, 60328, 60329, 60330, 60331, 60332, 60333, 60334, 60335, 60336, 60337, 60338, 60339, 60340, 60341, 60342, 60343, 60344, 60345, 60347, 60354, 60355, 60356, 60370, 60373, 60374, 60402, 60413, 60418, 60810, 60811, 60851, 65142, 70030, 80007, 81021, 92943);

update creature set health_percent = 100 where health_percent > 100;
update creature set mana_percent = 100 where mana_percent > 100;

delete from creature where id in (50001, 1000001, 50000, 100013, 50000, 80829, 80828, 80828, 80828);

update creature set mana_percent = 100 where guid in (2746, 52122, 53855, 54748, 64959, 69690, 69702, 91921, 91922, 91929, 92140, 92178, 92187, 92190, 92192, 92193, 92241, 92242, 92321, 92322, 92334, 92408, 92682, 92684, 92710, 2557770, 2558347, 2561216, 2561215);

update creature set spawntimesecsmin = spawntimesecsmax where spawntimesecsmin > spawntimesecsmax;

delete from creature_groups where member_guid in (90975, 90861, 53363, 53365, 53369, 53370, 53434, 53436, 53437, 53440, 53524, 53525, 53529, 53530);

delete from creature_template_addon where entry in (50056, 60428);

update creature_template set inhabit_type = 3 where inhabit_type = 0;

update quest_template set method = 2 where entry in (40324, 40321, 40325, 40322, 40323);

update gameobject_loot_template set maxcount = mincountorref where mincountorref > maxcount;

delete from gameobject_loot_template where entry in (5730, 2010819, 3000246);

replace into creature_display_info_addon values (18788, 0, 0, 0, 0);
replace into creature_display_info_addon values (18771, 0, 0, 0, 0);
replace into creature_display_info_addon values (18772, 0, 0, 0, 0);
replace into creature_display_info_addon values (18560, 0, 0, 0, 0);
replace into creature_display_info_addon values (18603, 0, 0, 0, 0);
replace into creature_display_info_addon values (18624, 0, 0, 0, 0);

delete from npc_trainer where spell in ( 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978, 24978,  24978, 46620, 46621, 46622, 46623, 46624, 46625, 47015, 47016, 47017, 47018, 47019, 47020, 46620, 46621, 46622, 46623, 46624, 46625, 47015, 47016, 47017, 47018, 47019, 47020, 46633, 46634, 46635, 46636, 46637, 46638, 46639, 46640, 46641, 46642, 46643, 46644, 46645, 46646, 46647, 46648, 46649, 46650, 46633, 46634, 46635, 46636, 46637, 46638, 46639, 46640, 46641, 46642, 46643, 46644, 46645, 46646, 46647, 46648, 46649, 46650, 46626, 46627, 46628, 46629, 46630, 46631, 46626, 46627, 46628, 46629, 46630, 46631, 46663, 46664, 46665, 46663, 46664, 46665,  46663,  46664,  46665,  46663,  46664,  46665,  46663,  46664,  46665,  46663,  46664,  46665,  46663,  46664,  46665, 46663, 46664, 46665, 46663, 46664, 46665, 46663, 46664, 46665, 45511, 45521, 45525, 45526, 45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529,  45511,  45521,  45525,  45526,  45529, 45553,  45553,  45553,  45553,  45553	,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553,  45553);

update item_template set stackable = 200 where entry = 50203;
update item_template set bag_family = 0 where entry in (60522, 60523, 60524);

delete from creature_display_info_addon where display_id = 19694;

delete from creature_equip_template where entry in (14731, 20036, 20049, 20051, 20072, 20073, 20137);

update creature_spells set probability_2 = 100 where entry = 201078;
update creature_spells set probability_1 = 100 where entry = 180021;

update creature_template set display_id1 = 4626 where entry in (15, 91295, 91295);

update creature_template set display_id1 = 341 where entry = 60558;
update creature_template set display_id1 = 16218 where entry = 60530;

update creature_template set vendor_id = 0 where entry in (6739, 60747, 60748);
update creature_template set equipment_id = 0 where entry in (60432, 60663, 93000, 93005);

update creature_template_addon set auras = '' where auras = '0';

update creature set health_percent = 100 where id = 60408;

delete from pool_gameobject where guid in (39989, 5242, 45093);

update quest_template set rewrepfaction1 = 893 where rewrepfaction1 = 1494;
update quest_template set rewrepfaction1 = 909 where rewrepfaction1 = 1555;

delete from creature_loot_template where item = 83100;

update creature_loot_template set mincountorref = 1 where item = 4278;

update creature_loot_template set chanceorquestchance = 33.3 where entry = 2447 and groupid = 6;
update creature_loot_template set chanceorquestchance = 16.6 where entry = 60525 and groupid = 1;

update item_loot_template set chanceorquestchance = 20 where entry =  83236 and groupid = 1;
update item_loot_template set chanceorquestchance = 20 where entry =  83236 and groupid = 3;
update item_loot_template set chanceorquestchance = 33.3 where entry = 83270 and groupid = 1;

update creature set movement_type = 2 where guid = 32347;
delete from creature_movement_template where entry = 3888;
insert into creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, wander_distance, script_id) values
(3888, 1, 2768.44, -411.098, 111.463, 1.62316, 480000, 0, 388803),
(3888, 2, 2768.44, -411.098, 111.463, 100, 2000, 0, 388801),
(3888, 3, 2766.91, -407.248, 111.471, 100, 6000, 0, 388802),
(3888, 4, 2763.06, -402.483, 111.482, 100, 0, 0, 0),
(3888, 5, 2763.35, -399.281, 111.479, 100, 0, 0, 0),
(3888, 6, 2762.86, -396.496, 111.235, 100, 10000, 0, 0),
(3888, 7, 2756.46, -418.976, 111.475, 100, 0, 0, 0),
(3888, 8, 2754.08, -425.621, 111.475, 100, 0, 0, 0),
(3888, 9, 2748.49, -435.343, 111.474, 100, 0, 0, 0),
(3888, 10, 2736.83, -432.064, 111.874, 100, 189000, 0, 388803),
(3888, 11, 2736.83, -432.064, 111.874, 100, 2000, 0, 388801),
(3888, 12, 2743.72, -433.638, 111.458, 100, 0, 0, 0),
(3888, 13, 2751.9, -428.987, 111.474, 100, 0, 0, 0),
(3888, 14, 2759.19, -415.571, 111.48, 100, 0, 0, 0),
(3888, 15, 2768.07, -415.291, 111.459, 100, 0, 0, 0);
delete from creature_movement_scripts where id in (388801, 388802, 388803);
insert into creature_movement_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (388801, 0, 28, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korra - Set Stand State');
insert into creature_movement_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (388802, 2, 0, 2, 0, 0, 0, 0, 0, 0, 4, 1296, 0, 0, 0, 0, 0, 0, 0, 0, 'Korra - Talk');
insert into creature_movement_scripts (id, delay, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) values (388803, 2, 28, 3, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Korra - Set Stand State');

update creature set movement_type = 2 where guid in (17040, 21660, 21661, 27974, 2562709, 2562710, 2562711, 2562712, 2562713, 2567587, 2569242);

update gameobject_template set data3 = 1 where entry in (2010817, 2010835, 2010837, 2010838, 2010839, 2010840, 2010843, 2010844);

delete from npc_text where id = 90000;

update item_template set disenchant_id = 0 where entry = 2540;
update item_template set disenchant_id = 0 where entry = 2541;

update item_template set extra_flags = 1 where entry = 9311;
update item_template set extra_flags = 1 where entry = 18154;
update item_template set extra_flags = 1 where entry = 21140;
update item_template set extra_flags = 1 where entry = 22058;

delete from item_template where entry = 22233;

update creature_template set equipment_id = 0 where entry in (60520, 60587, 60653, 60656, 60847);
update creature set equipment_id = 0 where id in (60520, 60587, 60653, 60656, 60847, 80851);

delete from battleground_events where map in (25, 37);

replace into conditions (condition_entry, type, value1, value2, value3, value4, flags) values (1422, 20, 1421, 80, 0, 0, 0);

update creature_template set script_name = 'boss_magni_bronzebeard' where entry = 2784;

update creature_template set name = '[Test] Custom spell cast', subname = '', script_name = 'boss_custom_spell' where entry = 80865;

replace into creature_template (entry, display_id1, display_id2, display_id3, display_id4, name, level_min, level_max, health_min, health_max, armor, faction, speed_walk, detection_range, xp_multiplier, dmg_min, dmg_max, attack_power, dmg_multiplier, ranged_attack_time, unit_class, unit_flags, ranged_dmg_min, ranged_dmg_max, ranged_attack_power, type, ai_name, inhabit_type, regeneration, flags_extra) values (5738, 4116, 4117, 4118, 4119, 'Caged Dwarf Male', 5, 5, 102, 102, 20, 68, 1, 18, 1, 6, 8, 52, 1, 2000, 1, 768, 8.624, 11.858, 100, 7, 'EventAI', 3, 3, 2);

replace into creature (guid, id, id2, id3, id4, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, wander_distance, health_percent, mana_percent, movement_type, spawn_flags, visibility_mod) VALUES (31875, 5738, 0, 0, 0, 0, 1403.85, 376.678, -84.868, 5.79449, 300, 300, 0, 100, 0, 0, 0, 0);

update creature_loot_template set maxcount = 1 where entry = 2574 and item = 4278;

delete from gameobject_loot_template where entry = 3000512;

update creature_template set skinning_loot_id = 0 where skinning_loot_id = 100001;

delete from creature_involvedrelation where id = 50677 and quest = 80729;

update creature_template set npc_flags = 4 where entry = 15;

update creature_template set npc_flags = 7 where entry = 92202;

delete from npc_vendor where item = 83422; 

delete from creature_template where entry = 81021;

update creature_template set npc_flags = 4 where entry = 1650;
update creature_template set npc_flags = 135 where entry = 6739;

delete from npc_vendor where entry = 81021;

update creature_template set npc_flags = 19 where entry = 5885;
update creature_template set npc_flags = 6 where entry = 3689;

delete from quest_end_scripts where id = 50530;

-- Missing data for SC attunement quests:

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80700,1519,60,58,0,0,'A Particular Letter','I\'ve been looking for you all around the city! Although I am more of an announcer than a mailman I was instructed to give this letter to you by well… I am not sure who he was.\n\nThe figure\'s face was covered and his voice didn\'t seem familiar at all. He said you will understand when you read it.\n\nI am not one to pry, $N, but be more careful, I wouldn\'t let the guards know I associate myself with those kinds of people.','Accept suspicious letter to ease Goddman\'s mind.','Just take it off my hands before the guards think we\'re doing something shady.','Here\'s the letter, I hope I won\'t have to do this again.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2198, 80700);
replace into creature_involvedrelation (id, quest) values (2198, 80700);

replace into item_template values (53000, 0, 0, 'Sealed Letter', 'The seal bears no crest.', 3048, 1, 2048, 1, 0, 0, 0, -1, -1, 1, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 80701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80700,80701,1519,60,58,0,0,'The Elusive SI:7','Burn this after you\'ve read it.\n\n$N,\n\nI dearly hope this letter finds you in good health, I wish I could\'ve delivered the message in person but you must understand that we like to keep secrecy at hand.\n\nI am not sure if you\'re aware of what our organisation does, or who we entirely are, but we have discovered valuable information and we might need your help.\n\nIn the envelope you will find a ring, keep it at hand while you come visit us, it will be the sign you\'ve accepted our mission and that the letter was burnt.\n\nUntil we meet,\nMathias Shaw.','Report to the SI:7 and present the ring to Mathias Shaw.','How can I help you, stranger?','Ah, my ring.\n\nIt seems you\'ve made it, apologies for the secrecy but we must be careful, even our walls have ears that do not belong to the organisation.',53001,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53001,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_involvedrelation (id, quest) values (332, 80701);

replace into item_template values (53001, 12, 0, 'Mathias Shaw\'s Ring', '', 23728, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_template (entry, name, display_id1) values (50665, 'Quest 80702 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50666, 'Quest 80702 Custom Trigger 2', 328);
replace into creature_template (entry, name, display_id1) values (50667, 'Quest 80702 Custom Trigger 3', 328);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80701,80702,69,60,60,0,0,'Young and Foolish','My agents have reported that a Scarlet caravan has started moving through various towns.\n\nFrom what we know they have already gone to Lakeshire, Darkshire, Menethil and Southshore.\n\nMy only assumption is that whoever took over the Crusade after the events that transpired the Scarlet Monastery, Hearthglen and Stratholme has realised they\'ve been running short on men.\n\nI want you to go and speak to the people of Lakeshire. The locals should have at least seen something.','Interrogate the people of Lakeshire and find out the truth. Report back to Mathias Shaw.','How is your task going?','So we were right, this would\'ve been valuable information if we didn\'t already receive another report.\n\nSorry about that, $N. I will be needing your help once more.',0,0,0,0,0,0,0,0,50665,1,50666,1,50667,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (332, 80702);
replace into creature_involvedrelation (id, quest) values (332, 80702);

update quest_template set objectivetext1 = 'Speak to Foreman Oslow' where entry = 80702;
update quest_template set objectivetext2 = 'Speak to Dorin Songblade' where entry = 80702;
update quest_template set objectivetext3 = 'Speak to Magistrate Solomon' where entry = 80702;

update creature_template set script_name = 'npc_questions_and_answers' where entry in (341, 956, 344);
update creature_template set npc_flags = 16389 where entry = 956;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80702,80730,44,60,60,0,0,'Caravan Meets Caravan','The SI:7 have means of communication that reach us quite fast and believe it or not they are very reliable.\n\nSparring you any further details you should know that a dwarven caravan that was meant to reach Aerie Peak never made it out of the Wetlands.\n\nThe caravan lays in ruins and you can only find the mutilated husks of what used to be dwarves.\n\nOur agents already poked around the zone but failed to find anything, they are currently trying to localize these newly recruited Scarlet zealots.\n\nI am not very sure of how much of a detective you believe yourself to be but I ask you to take a second look, maybe they missed something.\n\nIf you find the recruits, keep in mind that we aren’t sure what manner of persuasion the Scarlets used to brainwash them, spare as many as you can and take them to Menethil.','Follow the Caravan\'s route and look for clues.','Now do you want to buy something or just bother me?', 'Listen here pal, I am trying to make a living, so you either buy something or scram!\n\nOf course unless you got something else to talk about but make it quick!',0,0,0,0,0,0,0,0,50668,3,50669,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (332, 80730);
replace into creature_involvedrelation (id, quest) values (8305, 80730);

update quest_template set objectivetext1 = 'Search area for clues' where entry = 80730;
update quest_template set objectivetext2 = 'Ask Kixxle if he saw anything' where entry = 80730;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80730,80703,44,60,60,0,0,'Thandol Span','Yeah bub that\'s all I know, now I don\'t say I deserve any kind of compensation for the information but it will highly be appreciated.\n\n<Kixxle holds open his palm but you refuse to pay.>\n\nFine then, go on and follow the road to that bridge, Thandol Span or whatever, I hope those Scarlets get you for being such a prick!','Bring Vladeus Springriver back to Menethil Harbor and report back to Captain Stoutfist.','The Scarlet Crusade must be put to an end.','So this is all you could salvage from the idiots that willingly murdered our caravan, eh?\n\nI’ll take him to the dungeon, good job.',53002,1,0,0,0,0,0,0,50670,1,50671,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (8305, 80703);
replace into creature_involvedrelation (id, quest) values (2104, 80703);

update quest_template set objectivetext1 = 'Defeat Scarlet Recruits' where entry = 80703;
update quest_template set objectivetext2 = 'Bring Vladeus Springriver back to Menethil Harbor' where entry = 80703;

replace into creature_template (entry, name, display_id1) values (50668, 'Quest 80703 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50669, 'Quest 80703 Custom Trigger 2', 328);
replace into creature_template (entry, name, display_id1) values (50670, 'Quest 80703 Custom Trigger 3', 328);
replace into creature_template (entry, name, display_id1) values (50671, 'Quest 80703 Custom Trigger 3', 328);

replace into creature_template values (50672, 1598, 1608, 0, 0, 'Dwarf Mountaineer', NULL, 0, 30, 30, 1910, 1910, 0, 0, 1200, 57, 0, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1710, 1881, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130760, 0, 0, 0, 'GuardAI', 0, 3, 0, 0, 3, 13076, 0, 0, 0, 0, 525312, 0, 'search_for_clues');

replace into broadcast_text (entry, male_text) values (51680, 'It appears that this dwarf wasn’t only killed but also mutilated, the jaw was missing.'); 
replace into npc_text (id, broadcasttextid0) values (51680, 51680);

update creature_template set dynamic_flags = 36, npc_flags = 1 where entry = 50672;
replace into creature_template_addon (entry, bytes1) values (50672, 7);

replace into gameobject_template values (1000167, 2, 32882, 'Oil Canister', 35, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'search_for_clues');

replace into broadcast_text (entry, male_text) values (51681, 'The canister was empty, its contents most likely were poured over what was still seemingly aflame.'); 
replace into npc_text (id, broadcasttextid0) values (51681, 51681);

replace into gameobject_template values (1000168, 2,  2350, 'Small Wooden Crate', 35, 0, 0.5, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 'search_for_clues');

replace into item_template values (53002, 12, 0, 'Scarlet Recruit\'s Insignia Ring', '', 28682, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into broadcast_text (entry, male_text) values (51682, 'You are now certain that the new recruits were the ones to slaughter these dwarves.\n\nThe missing jaw however is something that raises your suspicions, your next thought would be to ask the Goblin that camps south of where you are, at the Crossroads if he was the one to sell them the oil.'); 
replace into npc_text (id, broadcasttextid0) values (51682, 51682);

update creature_template set script_name = 'npc_kixxle', npc_flags = 16391 where entry = 8305; 
update creature_template set script_name = 'npc_captain_stoutfist', npc_flags = 2 where entry = 2104; 

replace into creature_template values (50673, 2467, 2471, 2468, 2483, 'Scarlet Recruit', NULL, 0, 60, 60, 1607, 1658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 0, '');

replace into creature_template values (50674, 2565, 0, 0, 0, 'Vladeus Springriver', NULL, 0, 60, 60, 2607, 2658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 0, 'npc_vladeus_springriver');

update creature_template set npc_flags = 1 where entry = 50674;

replace into broadcast_text (entry, male_text) values (51683, 'I am taking responsibility for what I have done, don\'t worry, I will follow you and behave.'); 
replace into npc_text (id, broadcasttextid0) values (51683, 51683);

replace into gameobject_template values (1000169, 5, 381, 'Attack Trigger: Scarlet Crusade', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_scarlet_attack_trigger');

replace into gameobject_template values (1000170, 5, 381, 'Trigger Condition Dummy', 0, 0, 0.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80703,80704,150,60,60,0,0,'Are You True to Your Nature?','We\'ve been trying to no avail to interrogate the young lad you brought back, $N. He simply wouldn\'t talk, me and the other guards tried to persuade him as best as we could.\n\nConsidering you were there to put an end to their masquerade, I\'d assume you\'d have a better chance to draw some information out of him.\n\nCredits given where credits are due, you did a great job putting piece to piece together and finding them.\n\nTake whatever approach you\'d like, just see it done.','Decide what to do with Vladeus.','The figure in front of you is displeased at your sight and is practically tearing you apart in their mind.','You are at an impasse, not sure how to proceed. Given the circumstances you must make the best out of what you have.\n\nWhile contemplating the matter you take a wide look around the room, noticing that Stoutfist and the other guards left some means of approach to you.\n\nIt\'s time for you to decide how to approach the interrogation of the prisoner.\n\nTo your left you have the best means of persuading him, yet to your right you have the best means of torturing him.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2104, 80704);
replace into gameobject_involvedrelation (id, quest) values (1000171, 80704);

replace into gameobject_template values (1000171, 2, 24337, 'Incompleted Interrogation Report', 0, 4, 1, 0, 3672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into creature_template values (50676, 2565, 0, 0, 0, 'Vladeus Springriver', NULL, 0, 60, 60, 2607, 2658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 0, 'npc_vladeus_interrogation');

update creature_template set npc_flags = 3, faction = 35, equipment_id = 0 where entry = 50676;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80704,80705,150,60,60,0,0,'The Means of Persuading','During your many adventures through Azeroth you have faced several perils and foes, unlike the man present before you.\n\nYou are more than sure he\'s not a wicked sort and chose to approach this lightly, staying true to your nature.\n\nWith a table full of choices you pick the best means of persuasion and are ready to begin.','Use your persuasion skills to interrogate Vladeus.','The report seems incomplete, other than some basic information of the prisoner there\'s really nothing useful there.','Reaching for the quill and ink, you note the information you extracted from Vladeus thus finalizing the report.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqcreatureorgoid1 = 50675, reqcreatureorgocount1 = 1, objectivetext1 = 'Obtain information from Vladeus' where entry = 80705;

replace into creature_template (entry, name, display_id1) values (50675, 'Quest 80705 & 80706 Custom Trigger 3', 328);

replace into gameobject_questrelation (id, quest) values (1000172, 80705);
replace into gameobject_involvedrelation (id, quest) values (1000171, 80705);

replace into gameobject_template values (1000172, 2, 29546, 'Prison Guards\'s Coffee Mug', 0, 4, 1, 0, 3672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into broadcast_text (entry, male_text) values (51684, 'What are they going to do to me? I am sorry for all I have done, I really am.\n\nI regret all of it, and given the chance I will surely make amends.'); 
replace into npc_text (id, broadcasttextid0) values (51684, 51684);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80704,80706,150,60,60,0,0,'Seeking Justice or Vengeance?','You\'ve met many foes on your several adventures through Azeroth, for the first time something in you clicked.\n\nHow many more scum do you have to beat, maim and kill so that this twisted world gets its damnable peace?\n\nThe Scarlet Crusade has been a personal thorn in your sides as well, maybe it\'s time to deliver some sort of justice or is it vengeance?\n\nWith a table full of tools that will aid you to obtain what you need, you are ready to embrace your demons.','Find out everything by any means necessary.','The report seems incomplete, other than some basic information of the prisoner there\'s really nothing useful there.','Reaching for the quill and ink, you note the information you extracted from Vladeus thus finalizing the report.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqcreatureorgoid1 = 50675, reqcreatureorgocount1 = 1, objectivetext1 = 'Obtain information from Vladeus' where entry = 80706;

update quest_template set exclusivegroup = 80705, nextquestid = 80707 where entry in (80705, 80706);

replace into broadcast_text (entry, male_text) values (51685, 'Please, don\'t kill me, please!\n\nI don\'t know anything else, please! I just want to go home.'); 
replace into npc_text (id, broadcasttextid0) values (51685, 51685);

replace into gameobject_template values (1000173, 2, 24410, 'Iron Maiden', 0, 4, 1, 0, 3672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_questrelation (id, quest) values (1000173, 80706);
replace into gameobject_involvedrelation (id, quest) values (1000171, 80706);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80705,80707,150,60,60,0,0,'The Price for Information','You\'ve extracted all the information you could get for Vladeus. Deciding you\'re done with him you let him rest and think about your next actions.\n\nIt seems news of Whitemane\'s death and the demonic influence over Stratholme reached the ears of Lady Abbendis, the last true leader of the Scarlet Crusade.\n\nWith one of her henchmen tricking young men and women to join their cause and force them into staying she\'s trying to regain some numbers.\n\nYou decide to report this to Stoutfist and ask for his opinion.','Report to Captain Stoutfist.','<You are welcomed with nothing but a silent stare.>','It seems you got what you needed then, we will send the prisoner back to Stormwind so they decide his fate.\n\nWhatever you did to obtain this information, I won\'t judge it, I just hope you are content with your own choices.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into gameobject_questrelation (id, quest) values (1000171, 80707);
replace into creature_involvedrelation (id, quest) values (2104, 80707);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80707,80708,1519,60,60,0,0,'Scarlet Aid','My boys made preparation for the prisoner to reach Stormwind, his fate will be decided there since he’s part of their jurisdiction.\n\nYou were of great help and I am sure you want to poke around this thing even further, I might have a lead for you, not sure how much it will help though.\n\nUnder the Cathedral District’s Chapel there’s a priest in red robes, the intel I got from Shaw’s men says that his name is Brother Crowley and was sent by the Scarlet Crusade inside the city as an ambassador of sorts.\n\nHis mission was to recruit the willing to fight in the name of the Light or whatever stupid lie these Scarlets are telling to themselves.\n\nIn any case, Crowley hasn’t been that active, we are not sure if he’s the one to recruit these blokes but it’s worth a try.','Travel to the Cathedral’s District of Stormwind and speak with Brother Crowley.','How can I assist?','Bold accusation, $r, I almost feel offended.\n\nI fear it was not me, things would’ve been simpler. I assume you got a name from your prisoner, tell me what happened.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2104, 80708);
replace into creature_involvedrelation (id, quest) values (12336, 80708);

update creature_template set script_name = 'npc_brother_crowley' where entry = 12336;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80708,80709,139,60,60,0,0,'Donning the Red Flag','Abbendis must be stopped and you will be one of the thorns in her side and how better should you do it if not from the inside?\n\nWhile I hold no skill in the arts of the Arcane, a dear friend of mine who just like me will love to see her fall has provided me in the past with a few scrolls that could change one’s appearance.\n\nI am more than happy to offer you one if you were to tell nobody of it, let’s just say the scrolls were for something more meaningful, yet desperate times call for desperate measures.\n\nOnly use this when close to Tyr’s Hand, claim to be one of the disciples of the caravan you destroyed and claim your team was slain by the ogres of Arathi.','Travel to Tyr’s Hand and report to Mavel Brightwood.','Speak quickly or move along.','We’ve been expecting at least a handful of new recruits, not just one.\n\nExplain yourself immediately.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (12336, 80709);
replace into creature_involvedrelation (id, quest) values (50677, 80709);

update quest_template set srcitemid = 53003, srcitemcount = 1 where entry = 80709;

replace into creature_template values (50677, 10518, 0, 0, 0, 'Mavel Brightwood', NULL, 0, 60, 60, 5291, 7291, 3738, 4738, 2832, 67, 0, 1.1, 1.14286, 0, 20, 5, 0, 2, 1, 395, 510, 0, 268, 1, 1158, 2000, 2, 32832, 0, 0, 0, 0, 0, 0, 61.152, 84.084, 100, 7, 0, 10828, 10828, 0, 0, 0, 0, 0, 0, 0, 9128, 13730, 17143, 0, 108280, 0, 2035, 2141, 'EventAI', 0, 3, 0, 0, 3, 10828, 0, 0, 0, 0, 0, 0, '');

update creature_template set npc_flags = 3, equipment_id = 9452 where entry = 50677;

replace into item_template values (53003, 12, 0, 'Illusion: Scarlet Crusade', '', 634, 1, 0, 1, 0, 0, 0, -1, -1, 45, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19690, 0, 3, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80709,80710,139,60,60,0,0,'It’s All in Their Brains','Ready for your first assignment?\n\nYour armor looks shabby and your blade dull but if you’re not able to pull up your own weight you’re not worth the trouble of the Light.\n\nTravel the Plaguelands, slay any undead in your path and bring me their brains. Their brains are essential for something the High General has planned, simply do your job and ask no questions.\n\nGo you fool, the Light waits for nobody, go on and claim your glorious purpose.','Hunt undead all over the Plaguelands and gather their brains.','Don’t worry yourself with details, do as you were told.','Perfect condition, if anything this rotten could be called something other than disgusting.\n\nBlasted Scourge, I hope the High General is right.\n\nNow onto your next task, recruit.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqitemid1 = 53004, reqitemcount1 = 30 where entry = 80710;

replace into creature_questrelation (id, quest) values (50677, 80710);
replace into creature_involvedrelation (id, quest) values (50677, 80710);

replace into item_template values (53004, 12, 0, 'Undead\'s Rotten Brain', '', 10923, 1, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values
(8530, 53004, -90, 6, 1),
(8532, 53004, -80, 6, 1),
(8544, 53004, -90, 6, 1),
(8531, 53004, -80, 6, 1),
(10946, 53004, -90, 6, 1),
(16380, 53004, -80, 6, 1),
(16141, 53004, -90, 6, 1);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80710,80711,139,60,60,0,0,'Supplies We Need','Your next errand is to simply collect a few things here and there, nothing special.\n\nYou will find these while fighting Elementals and plants in some of the actual dangerous zones of the world, but I am more than sure you will succeed if you truly are chosen by the Light.\n\nBring me Savage Fronds and Core of the Elements, fifty of each, it will be a great help in what we wish to achieve.\n\nWhen and if you return you will officially be a member and I will give you a map as to where to find the entrance for the secret training spot.\n\nMay the Light bless your poor soul. If you return we will embrace you as a sibling, if you do not we will not mourn for you even for a second.','Travel the world and bring back the supplies you were asked to.','It’s a simple task, kill and collect, what more do you want?','Welcome back, brother and may the Light bless us both in the days to come.\n\nHere’s your insignia and here’s the map for the entrance, the High General will be very pleased to have you.\n\nFor the Scarlet Crusade, for the Light and for Lordaeron!',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set reqitemid1 = 22529, reqitemcount1 = 50 where entry = 80711;
update quest_template set reqitemid2 = 22527, reqitemcount2 = 50 where entry = 80711;
update quest_template set rewitemid1 = 53005, rewitemcount1 = 1 where entry = 80711;

replace into creature_questrelation (id, quest) values (50677, 80711);
replace into creature_involvedrelation (id, quest) values (50677, 80711);

update item_template set quality = 0, name = 'Cracked Scarlet Crusade Insignia', display_id = 31604, description = '' where entry = 50440;

replace into item_template values (53005, 13, 0, 'Scarlet Crusade Insignia', 'This insignia marks the bearer as a fully fledged member of the Scarlet Crusade.', 31604, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, null);

update item_template set max_count = 1, quality = 3, bag_family = 9, flags = 64, item_level = 60, sheath = 0 where entry = 53005;

delete from gameobject where id = 2002768 and position_x between -2902.7 and -2902.5;
delete from gameobject where id = 1000033 and position_x between -2897.2 and -2897.0;
delete from gameobject where id = 1000027 and position_x between -2899.9 and -2899.7;
delete from gameobject where id = 1000268 and position_x between -2908.7 and -2908.5;
delete from gameobject where id = 2000203 and position_x between -2908.2 and -2908.0;
delete from gameobject where id = 2000203 and position_x between -2904.2 and -2904.0;
delete from gameobject where id = 2004285 and position_x between -2905.3 and -2905.1;
delete from gameobject where id = 2004286 and position_x between -2905.0 and -2904.9;
delete from gameobject where id = 2004334 and position_x between -2899.4 and -2899.2;
delete from gameobject where id = 1000167 and position_x between -2906.9 and -2906.7;
delete from gameobject where id = 987658 and position_x between -2899.3 and -2899.1;
delete from gameobject where id = 1000168 and position_x between -2900.1 and -2900.0;
delete from gameobject where id = 1000169 and position_x between -2469.5 and -2469.3;
delete from gameobject where id = 2002889 and position_x between -3733.8 and -3733.6;
delete from gameobject where id = 2002725 and position_x between -3731.6 and -3731.4;
delete from gameobject where id = 1000171 and position_x between -3733.3 and -3733.1;
delete from gameobject where id = 180340 and position_x between -3733.8 and -3733.6;
delete from gameobject where id = 2003458 and position_x between -3734.2 and -3734.0;
delete from gameobject where id = 2003455 and position_x between -3734.4 and -3734.2;
delete from gameobject where id = 1000172 and position_x between -3733.7 and -3733.5;
delete from gameobject where id = 1000173 and position_x between -3738.1 and -3738.0;
delete from gameobject where id = 2003532 and position_x between -3741.3 and -3741.1;
delete from gameobject where id = 2003533 and position_x between -3732.3 and -3732.1;
delete from gameobject where id = 2003533 and position_x between -3744.3 and -3744.1;
delete from gameobject where id = 2003533 and position_x between -3742.7 and -3742.5;

replace into gameobject (id, map, position_x, position_y, position_z, orientation) values 
(2002768, 0, -2902.66, -2506.66, 33.4268, 2.41543),
(1000033, 0, -2897.14, -2512.39, 33.6725, 1.80282),
(1000027, 0, -2899.86, -2509.91, 33.4855, 6.2576),
(1000268, 0, -2908.6, -2510.47, 33.3968, 5.67248),
(2000203, 0, -2908.01, -2512.73, 33.6244, 3.48908),
(2000203, 0, -2904.13, -2515.66, 34.4606, 5.16355),
(2004285, 0, -2905.2, -2514.93, 34.2398, 4.77085),
(2004286, 0, -2904.97, -2518.21, 34.5729, 3.04768),
(2004334, 0, -2899.36, -2512.44, 34.5082, 0.148844),
(1000167, 0, -2906.81, -2517.01, 34.2675, 0.0742337),
(987658, 0, -2899.26, -2521.77, 34.8312, 2.88203),
(1000168, 0, -2900.01, -2522.38, 34.8497, 5.26179),
(1000169, 0, -2469.41, -2503.07, 78.5076, 6.24461),
(2002889, 0, -3733.73, -804.611, 4.32537, 4.25542),
(2002725, 0, -3731.5, -805.688, 4.32533, 4.25087),
(1000171, 0, -3733.25, -804.919, 5.29236, 2.65409),
(180340, 0, -3733.78, -803.752, 5.29256, 3.62584),
(2003458, 0, -3734.17, -804.495, 5.29256, 4.01841),
(2003455, 0, -3734.35, -805.351, 5.29256, 5.87745),
(1000172, 0, -3733.67, -805.785, 5.29234, 5.8429),
(1000173, 0, -3738.02, -808.251, 4.32543, 1.136),
(2003532, 0, -3741.25, -805.79, 4.3256, 1.0793),
(2003533, 0, -3732.29, -809.552, 4.32527, 2.60297),
(2003533, 0, -3744.24, -798.279, 4.32505, 2.61082),
(2003533, 0, -3742.68, -795.629, 4.32505, 2.61082);

delete from creature where id in (50672, 50676, 50677);

replace into creature (id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax) values 
(50672, 0, -2909.08, -2505.64, 33.0063, 3.23075, 25, 25),
(50672, 0, -2894.67, -2520.58, 34.3141, 5.58017, 25, 25),
(50676, 0, -3736.28, -809.162, 4.32525, 1.10049, 25, 25),
(50677, 0, 1682.32, -5333.22, 74.2273, 1.24345, 25, 25);

-- Horde attunement.

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (0,80720,1497,60,58,0,0,'A Dreadful Summon','$N, is it?\n\nLord Varimathras tasked me to seek you out, although it seems you have found me instead. I will try to make this short since I have no real clue of what he wants with you either.\n\nHe merely said to look for someone named $N and that I will know it’s you when I see you.\n\n<Tyler shrugs.>\n\nI assume you know where to find him, right? He stands behind the Dark Lady, forever in her shadow since the events that transpired a few years back.\n\nA word of caution if I may. Do not take everything he says to be true, after all, loyal to the cause or not, he’s a demon.','Report to Varimathras in Undercity.','Hm?','Astonishing.\n\n<Varimathras covers his mouth.>\n\nWhere are my manners, you are after all my guest. Do tell me if there’s something I can have my min-, if there’s something you’d like before we begin.\n\nPerhaps something to eat or drink, although that’d maybe infuriate the Dark Lady, one must not do any of those in her presence, after all this counts as a throne room of sorts.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5653, 80720);
replace into creature_involvedrelation (id, quest) values (2425, 80720);

update creature_template set npc_flags = 2 where entry = 5653;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80720,80721,1497,60,60,0,0,'Grim News','It seems many of the Forsaken have gone missing or found dead in various locations we occupy. One of my confidants has been reporting these events to me and I would like to have you investigate the concern further.\n\nConsidering the troubles we currently have to face in the Plaguelands there aren\'t many hands to spare and one as yourself that seeks glory or perhaps has a foolish intent of helping would be quite fit for the job.\n\nSkipping any other formalities I need you to travel to Brill, the Sepulcher and Tarren Mill and find everything you can from the local executors about this matter.\n\nThe Dark Lady doesn\'t appreciate failure and considering this has happened right under our nose I have yet to tell her of it.\n\nDon\'t misunderstand however, without any information one simply can\'t report to the other one above them.\n\nI will pay you handsomely, just get the deed done.','Travel to Brill, the Sepulcher and Tarren Mill. Speak to High Executor Darthalia, Executor Zygand and High Executor Hadrec. Report back to Varimathras.','How is your quest going?','This is very concerning indeed, if the Scarlet Crusade has found means to end the Forsaken without a fight we can\'t be sure what will transpire.',0,0,0,0,0,0,0,0,50665,1,50666,1,50667,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_template (entry, name, display_id1) values (50665, 'Quest 80702 & 80720 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50666, 'Quest 80702 & 80720 Custom Trigger 2', 328);
replace into creature_template (entry, name, display_id1) values (50667, 'Quest 80702 & 80720 Custom Trigger 3', 328);

replace into creature_questrelation (id, quest) values (2425, 80721);
replace into creature_involvedrelation (id, quest) values (2425, 80721);

update quest_template set objectivetext1 = 'Speak to Executor Zygand' where entry = 80721;
update quest_template set objectivetext2 = 'Speak to High Executor Hadrec' where entry = 80721;
update quest_template set objectivetext3 = 'Speak to High Executor Darthalia' where entry = 80721;

update creature_template set script_name = 'npc_questions_and_answers', npc_flags = 3 where entry in (2215, 1515, 1952);

delete from quest_template where entry = 80722;

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80721,80722,1497,60,60,0,0,'To Catch a Rat...','The only real way to find out more is to set a trap for the Scarlet mongrels. I have tasked a Deathguard to help you with this, obviously he has no idea he will simply be a means to an end and act as bait.\n\nIf you have a guilty conscience, turn around now and never speak of this again, I will find someone else to employ.\n\nYet if you find it in yourself to realise that sacrifices must be met sometimes I will tell you where he is.\n\nFind Maverick, he will be in the Graveyard close to the Monastery, use him to bait them and gather as much intel as you can.','Find Deathguard Maverick and set a trap for the Scarlet Crusade. Report back to Varimathras.','Quickly now.','I will have my men take him back to the Apothecary and collect a few samples that will aid us in our mission.',53010,1,0,0,0,0,0,0,50668,1,50681,2,50670,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2425, 80722);
replace into creature_involvedrelation (id, quest) values (2425, 80722);

update quest_template set objectivetext1 = 'Speak to Deathguard Maverick' where entry = 80722;
update quest_template set objectivetext2 = 'Defeat Scarlets Guards' where entry = 80722;
update quest_template set objectivetext3 = 'Inspect Maverick\'s condition' where entry = 80722;

replace into creature_template (entry, name, display_id1) values (50668, 'Quest 80703 & 80722 Custom Trigger 1', 328);
replace into creature_template (entry, name, display_id1) values (50670, 'Quest 80703 & 80722 Custom Trigger 3', 328);

replace into creature_template values (51567, 2852, 0, 0, 0, 'Deathguard Maverick', NULL, 0, 30, 30, 1910, 1910, 0, 0, 1200, 57, 0, 1.08, 1.14286, 0, 20, 5, 0, 0, 1, 42, 53, 0, 122, 1, 1710, 1881, 1, 0, 0, 0, 0, 0, 0, 0, 42.1344, 57.9348, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130760, 0, 0, 0, 'GuardAI', 0, 3, 0, 0, 3, 13076, 0, 0, 0, 0, 525312, 0, 'npc_maverick');

replace into broadcast_text (entry, male_text) values (51690, 'Are you the one Lord Varimathras spoke about, for the important mission?'); 
replace into npc_text (id, broadcasttextid0) values (51690, 51690);

replace into broadcast_text (entry, male_text) values (51691, 'Maverick seems to be in a deep slumber nothing would be able to wake him up.'); 
replace into npc_text (id, broadcasttextid0) values (51691, 51691);

replace into item_template values (53010, 12, 0, 'Vial of Mysterious Concoction', '', 33451, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

update creature_template set npc_flags = 1, faction = 68 where entry = 51567;

replace into creature_template values (50680, 2512, 0, 0, 0, 'Scarlet Magician', NULL, 0, 60, 60, 1607, 1658, 2289, 2369, 2810, 7, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 0, 'npc_scarlet_magician');

replace into creature_template values (50681, 2462, 0, 0, 0, 'Scarlet Guard', NULL, 0, 60, 60, 1607, 1658, 2289, 2369, 2810, 89, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 0, '');

replace into creature_template values (50682, 2525, 0, 0, 0, 'Scarlet Alchemist', NULL, 0, 60, 60, 6607, 7658, 2289, 2369, 2810, 7, 0, 1, 0.857143, 0, 20, 5, 0, 0, 1, 154, 184, 0, 268, 1, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 12352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123520, 0, 59, 296, 'EventAI', 0, 3, 0, 0, 3, 12352, 0, 0, 0, 0, 0, 0, 'npc_scarlet_magician');

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (50682, 53010, -100, 6, 1);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewmoneymaxlevel, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80722,80723,1497,60,60,0,0,'Trusted Apothecary','Not much of an alchemist myself, $N, but I know someone who can help us identify what this vial contains and why it acts like this.\n\nApothecary Zinge is down in the Apothecarium in Undercity alongside others from the Royal Apothecary, not only is she a bright mind but she also knows who’s better to be served, if you somehow understand the sayings of an ignorant fool.\n\n<Varimathras makes the quote mark with his fingers.>\n\nIn any case, we really need to cut to the chase here, I will report of our findings to Sylvannas but I won’t mention the vial until we find out what’s in it, she will be furious if she finds out but I can soothe her, I’ve been doing it since the end of the Third War.\n\nMove quickly but in silence, shadows guide you.','Take the vial to the Apothecarium and speak to Varimathras’ trusted apothecary.','You were sent by who?','I am not sure how much Lord Varimathras told you so you will excuse the cold treatment, he must trust you a great deal however if he sent you to me and even told you I work for him.\n\nNow let’s see what you got there.	',53010,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

update quest_template set srcitemid = 53010, srcitemcount = 1 where entry = 80723;

replace into creature_questrelation (id, quest) values (2425, 80723);
replace into creature_involvedrelation (id, quest) values (5204, 80723);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80723,80724,1497,60,60,0,0,'Consulting an Expert','Well, well, well. And you said this thing simply puts undead to “sleep”, right?\n\nThis isn’t like any potion like I’ve ever seen, we have something similar down south in Silverpine for the mindless worgen with Wolfsbane but seriously at least those are alive and kicking unlike us and the Scourge.\n\n<Apothecary Zinge crosses her arms for a second.>\n\nThis is definitely magic in nature, there’s not much I can do about it, never fiddled with it, I can only assume it’s a concoction made out of Peacebloom and Ghost Hair Thread but it has to be enhanced with some sort of magic.\n\nI’m not sure if he will be willing to aid you but there’s a slight chance, he will definitely ask for something in return that old coot.\n\nI’ve marked your map, go in the middle of the lake and you’ll find him there. Approach him with respect and fear, $c, that’s one of the greatest magic users I have ever seen and some even believe he turned into a lich by now.','Find Gunther Arcanus in Tirisfal Glades.','Another visitor.','I know I’ve told the Forsaken I’d lend them a hand, suppose that day finally came then.\n\nApothecary Zinge you said? Never heard of her, may be that my memory is a bit foggy.\n\nYou got all the stuff I needed and you came back quick enough not to be a disappointment.\n\nLet me have a look at this vial you speak of, it’s intriguing at the very least.',53010,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53010,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (5204, 80724);
replace into creature_involvedrelation (id, quest) values (1497, 80724);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80724,80725,1497,60,60,0,0,'In Gunther’s Favor','I sometimes miss Dalaran and think of the days when I used to be alive, being a student of the arcane arts was really meaningful to me.\n\nWhile I understand my condition, during the Scourge’s control over my mind my memories were the one that allowed me to break free and remain who I was.\n\nNot trying to get all soppy on you, $c, but I already know what this vial is and how it was done, but I need you to do me a favour before I tell you. Think of it as an equivalent exchange.\n\n<Gunther laughs.>\n\nYou will learn of that later. Go to the former town known as Ambermill, behind the Town Hall I once buried a locket and sealed it with magic.\n\nI will give you a scroll that will erase the spell, do be careful.','Travel behind Ambermill and dig for Gunther’s locket.','Were you successful?','You fought a mage for it?\n\nI assume he didn’t mention his name while fighting you so there’s no point in overthinking it, it’s time for me to relay the information I have on the vial, although I might’ve lied a tiny bit.',53012,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53011,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1497, 80725);
replace into creature_involvedrelation (id, quest) values (1497, 80725);

replace into item_template values (53011,12, 0, 'Gunther\'s Scroll', '', 1301, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into item_template values (53012, 12, 0, 'Gunther\'s Locket', '', 34510, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO gameobject_template VALUES (1000176, 2, 49, 'Dirt Mound', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_gunthers_favor');

REPLACE INTO creature_template VALUES (50683, 2708, 0, 0, 0, 'Archmage Alphus Wordwill', NULL, 0, 60, 60, 6883, 6883, 5751, 5751, 3252, 73, 2, 1.1, 1.14286, 0, 20, 5, 0, 0, 1, 164, 212, 0, 272, 1, 2000, 2000, 8, 512, 0, 0, 0, 0, 0, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10149, 10179, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2, 0, 'npc_alphus_wordwill');

update creature_template set equipment_id = 5498 where entry = 50683;

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (50683, 53012, -100, 6, 1);

replace into gameobject_template values (1000177, 3, 10, 'Gunther\'s Lockbox', 0, 4, 0.7, 43, 1000177, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (1000177, 53012, -100, 6, 1);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80725,80726,1497,60,60,0,0,'Soul and Alchemy','Well, as I said, a tiny little lie, because I do know how this vial came to be but not entirely how they made the thing they used for it.\n\nI am not sure you’re accustomed to Alchemy but let me put it like this briefly.\n\nA skilled alchemist at time creates something we call the Philosopher’s Stone, it’s an object that helps in transmutation which involves a little bit of magic.\n\nThe issue with the stone that was used for this vial is that it definitely was infused with life magic.\n\nYou’re probably asking yourself why would life magic affect undead? \n\nUndead are considered an abomination that is both alive and dead, thing of them as something that breaks the balance between life and death magic.\n\nI’m not sure if you should over complicate your mind with this, but this is of Necromantic nature, surely you didn’t think Necromancy only used death magic, did you?\n\nFrom what I can gather this Philosopher’s Stone was infused with either life force or souls itself, so it could be shadow magic too, honestly, I am not very sure myself and I won’t know until I get my hands on it, that be said you should return to your master or whoever told you to come seek me and have him help you get this, I will hold onto the vial until then for further examination.','Return to Varimathras in Undercity.','Back already?','I didn’t expect Gunther to fiddle with this, he will be very helpful and from what you told me he can inspect the curse further if he is to find this Philosopher’s Stone.\n\nWell, now that’s done, we need to report to the Dark Lady, like it or not.',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1497, 80726);
replace into creature_involvedrelation (id, quest) values (2425, 80726);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80726,80727,1497,60,60,0,0,'Dark Temper for a Dark Lady','Time has come to report this to the Dark Lady, she will definitely not be pleased I hid this from her but maybe she will be more understanding if you were to report it, I do know it seems like I am saving my own skin but do understand this is the best way to proceed.\n\nSimply give her this scroll, everything is already written there.','Report to Sylvannas.','<Sylvannas reads the report.>','You bring this to me now?\n\nWhen was I to be informed about this vial, which clearly is a tremendous danger to our survival?\n\nI bet you didn’t act over your own accord when it comes to this, seems like my dear Dreadlord needs another earful.',53013,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53013,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (2425, 80727);
replace into creature_involvedrelation (id, quest) values (10181, 80727);

replace into item_template values (53013, 12, 0, 'Varimathras\'s Report', '', 1301, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80727,80728,1497,60,60,0,0,'The Future Looks Grim','The reports says you were helped by Gunther Arcanus, Bethor insisted for a long time to take him in, as he seemed to be a valuable asset to the Forsaken, although clearly he has yet to show his usefulness.\n\nIf the case remains he will be able to find out what this object was and if he can muster up an antidote for this plague he will definitely prove himself.\n\nI order you to go to Tyr’s Hand, in Eastern Plaguelands, slay any kind of Scarlet fool and claim their uniform alongside their insignia, bring those back to Gunther and tell her that by order of the Dark Lady he must provide you an illusion that will let you infiltrate their ranks.\n\nIf you still have doubts as to why you should help us, well, remember that everything is For the Horde.','Travel to Tyr’s Hand and obtain a Scarlet Initiate Uniform.','What am I supposed to do with these?','Ah yes, my first order from the Banshee Queen, formidable. I would’ve helped you regardless of her arrogance, but let’s proceed.\n\nShe was smart enough to make you collect these however, which is quite impressive, I will grant you an illusion.',53014,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (10181, 80728);
replace into creature_involvedrelation (id, quest) values (1497, 80728);

replace into item_template values (53014, 12, 0, 'Scarlet Initiate Uniform', '', 16612, 1, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

replace into quest_template (prevquestid, entry, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4) values (80728,80729,1497,60,60,0,0,'A Different Shade of Red','The illusion is ready, now it’s up to you.\n\nYou will have to go to the Tyr\'s Hand and claim to be a new recruit, try to be as subtle as you may be, although considering I am giving you a Novice’s disguise you’re uh “seniors” will mostly make fun of you.\n\nIn any case, seek any that are interested in talking with a newbie and find out what their plans might be.\n\nI will patiently wait here while I am taking another look at this damn vial, can’t simply understand it currently, must test it more.','Travel to Tyr’s Hand and report to Mavel Brightwood.','Speak quickly or move along.','Ah, another recruit, what took you so long to get here?',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53003,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

replace into creature_questrelation (id, quest) values (1497, 80729);
replace into creature_involvedrelation (id, quest) values (50677, 80729);

replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (9447, 53014, -30, 6, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (9452, 53014, -30, 6, 1);
replace into creature_loot_template (entry, item, chanceorquestchance, groupid, mincountorref) values (9449, 53014, -30, 6, 1);

update quest_template set exclusivegroup = 80709, nextquestid = 80710 where entry in (80709, 80729);

update quest_template set nextquestinchain = 80710 where entry = 80729;
update quest_template set nextquestinchain = 80710 where entry = 80709;

-- Continue...

update creature_template set script_name = "larvae_cot" where entry = 65115;

update creature_template set script_name = '' where script_name = 'npc_zohjik_questComplete';

update creature_template set movement_type = 0 where entry in (92210, 92211, 92212, 1698);
update creature set movement_type = 0 where id in (92210, 92211, 92212, 1698);

delete from npc_trainer where entry = 3689;

delete from creature_loot_template where entry in (50682, 50683, 60843, 60844);

delete from npc_gossip where npc_guid in (69680, 79730, 79732);

delete from gossip_menu where entry in (10000, 15612, 15611, 56010);

delete from quest_template where entry = 60002;

update quest_template set ReqCreatureOrGOCount1 = 0 where entry = 40366;
update quest_template set ReqCreatureOrGOCount3 = 0 where entry = 40366;
update quest_template set ReqCreatureOrGOCount4 = 0 where entry = 40366;

update quest_template set ReqItemCount1 = 1 where entry = 40424;

delete from quest_template where entry = 1156;

update creature_template set faction = 35 where entry = 50665;
update creature_template set faction = 35 where entry = 50666;
update creature_template set faction = 35 where entry = 50667;
update creature_template set faction = 35 where entry = 50668;
update creature_template set faction = 35 where entry = 50669;
update creature_template set faction = 35 where entry = 50670;
update creature_template set faction = 35 where entry = 50671;
update creature_template set faction = 35 where entry = 50675;
update creature_template set faction = 35, display_id1 = 4626 where entry = 70030;

update creature_template set equipment_id = 0 where entry = 80851;

delete from creature_involvedrelation where quest = 60002;

delete from areatrigger_involvedrelation where id = 80204;

update item_template set script_name = '' where script_name = 'item_zhojik_whistle';

delete from gossip_menu_option where menu_id = 15611;

delete from quest_template where entry = 60000;
delete from quest_template where entry = 60001;
delete from quest_template where entry = 60002;

delete from creature_involvedrelation where quest = 60000;
delete from creature_involvedrelation where quest = 60001;
delete from creature_questrelation where quest = 60001;
delete from creature_questrelation where quest = 60000;

update quest_template set ReqCreatureOrGOCount3 = 0 where entry = 80703;
update quest_template set ReqCreatureOrGOCount4 = 0 where entry = 80703;

delete from generic_scripts where id in (10003, 60401);

delete from gossip_scripts where id = 15611;
delete from gossip_menu_option where menu_id = 50450 and condition_id = 24470;

update creature_template set gossip_menu_id= 0 where entry = 9076;
update creature_template set gossip_menu_id= 0 where entry = 15611;
update creature_template set gossip_menu_id= 0 where entry = 51536;
update creature_template set gossip_menu_id= 0 where entry = 66004;
update creature_template set gossip_menu_id= 0 where entry = 66005;
update creature_template set gossip_menu_id= 0 where entry = 91003;

delete from creature_linking where guid = 190228 and master_guid = 190242;

update spell_proc_event set procflags = 0 where entry = 6346;

delete from quest_start_scripts where id = 60000;

replace into creature_movement_scripts values (14, 0, 26, 0, 0, 0, 0, 2276, 10, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Event Assassin Southshore Attack magistrate');

delete from creature_movement where id = 1246441;
delete from creature_movement where id = 1246442;
delete from creature_movement where id = 1246438;
delete from creature_movement where id = 1246440;
delete from creature_movement where id = 1246439;