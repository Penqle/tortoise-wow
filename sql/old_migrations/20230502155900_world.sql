-- Gilneas City Reward Fixes
update item_template set bonding = 2 where entry = 61336; -- Knife Juggler Gloves
update item_template set display_id = 27096 where entry = 61335; -- Dragonbane Pauldrons
update item_template set display_id = 31899 where entry = 61312;-- The Black Pendant
update item_template set display_id = 31616 where entry = 61332;-- Ring of Electrical Binding
-- Kara10 Display
update item_template set display_id = 66384 where entry = 61332;-- Ring of Electrical Binding
-- Gilneas City Reward Fixes
update item_template set bonding = 2 where entry = 61336; -- Knife Juggler Gloves
update item_template set display_id = 24966 where entry = 61335; -- Dragonbane Pauldrons
update item_template set display_id = 31899 where entry = 61312; -- The Black Pendant
update item_template set display_id = 31616 where entry = 61332; -- Ring of Electrical Binding
update item_template set spellid_1 = 45421, spelltrigger_1 = 1, spellid_2 = 13679, spelltrigger_2 = 1 where entry = 61328; -- Wolfblood
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61313; -- Greymane Helmet
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61324; -- Greymane Shoulders
update item_template set spellid_1 = 45420, spelltrigger_1 = 1 where entry = 61302; -- Wolfheart Necklace
update item_template set spellid_1 = 45420, spelltrigger_1 = 1, stat_value1 = 3, stat_value2 = 0 where entry = 61311; -- Sutherland's Cuffs
update item_template set spellid_1 = 45420, spelltrigger_1 = 1, stat_type1 = 3 where entry = 61331; -- Blackcowl Sash
-- Dimbil Stormshot (Entry 61443), change display ID to 4895.
update creature_template set display_id1 = 4895 where entry = 61443;
-- Automated Servitor (entry 61432) , set display ID to 6889.
update creature_template set display_id1 = 6889 where entry = 61432;
-- NPC Greymane Instigator Entry 61366, replace display ID 13 with 20276.
update creature_template set display_id1 = 20275, display_id2 = 20276, display_id3 = 0, display_id4 = 0 where entry = 61366;
-- The scales of these npcs were overwritten, please reset them back to scale 1: 61419, 61418, 61417, 61398.
update creature_template set scale = 1 where entry in (61419, 61418, 61417, 61398);
-- Item entry 61214 change display ID to 22457.
update item_template set display_id = 22457 where entry = 61214;
-- Item entry 61339 change display ID to 9577.
update item_template set display_id = 9577 where entry = 61339;

REPLACE INTO creature_template VALUES
(61468, 18768, 0, 0, 0, 0, 'Winlassah Dawnstar', NULL, 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61469, 18777, 0, 0, 0, 0, 'Shanyra El\'aluna', 'Innkeeper', 0, 22, 22, 573, 573, 0, 0, 922, 1354, 131, 1, 1.14286, 1, 18, 5, 0, 0, 1, 70, 86, 0, 98, 1, 2500, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 35.6224, 48.9808, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61470, 18762, 0, 0, 0, 0, 'Kanarius Spellstalker', 'Keeper of Lore', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61471, 18763, 0, 0, 0, 0, 'Leoserith Spellbinder', 'Spellsmith', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61472, 18764, 0, 0, 0, 0, 'Toryn Khadinus', 'Spellsmith', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61473, 18765, 0, 0, 0, 0, 'Kalara Shadebough', 'Astromancer', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61474, 18769, 0, 0, 0, 0, 'Talorum Autumnsleaf', 'Horde Representative', 0, 60, 60, 4120, 4120, 0, 0, 3640, 35, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61475, 18770, 0, 0, 0, 0, 'Anarea Sundawn', 'Alliance Representative', 0, 60, 60, 4120, 4120, 0, 0, 3640, 35, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61476, 14386, 0, 0, 0, 0, 'Grand Arcanist Azj\'Tordin', NULL, 0, 62, 62, 4240, 4240, 0, 0, 3640, 1354, 3, 1, 1.14286, 1, 18, 5, 0, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61477, 18022, 0, 0, 0, 0, 'Defender of Ronae\'thalas', 'Astromancer', 0, 60, 60, 4120, 4120, 0, 0, 3640, 1354, 0, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61478, 18767, 0, 0, 0, 0, 'Talavana Andalorah', 'General Goods', 0, 48, 48, 2398, 2398, 0, 0, 2753, 1354, 4, 1, 1.14286, 1, 20, 5, 40, 0, 1, 74, 96, 0, 208, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 62.744, 86.273, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61479, 18766, 0, 0, 0, 0, 'Illanaya Spellwind', 'Food & Drinks', 0, 52, 52, 3082, 3082, 0, 0, 2669, 1354, 4, 1, 1.14286, 1, 20, 5, 40, 0, 1, 106, 136, 0, 234, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.4704, 96.8968, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61480, 18386, 0, 0, 0, 0, 'Brilliant Wind Serpent', NULL, 0, 58, 58, 3875, 3875, 0, 0, 3435, 14, 0, 1, 1.42857, 1, 18, 5, 0, 0, 1, 154, 184, 0, 262, 1, 2000, 2000, 2, 0, 0, 27, 0, 0, 0, 0, 70.4704, 96.8968, 100, 1, 1, 61480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41459; set @magic_number = 61476;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ah, my friend, it is good to meet you here. As you can see, the seeds of a new home for my people have been sown. I must confess, I fear what the future holds. There are so few of us left and there is no guarantee we will survive the coming years.$B$BNonetheless, we have come far, farther than I dared hope. After everything we have been through, I cannot, will not so easily surrender to any fate that sees my people in ruin.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41458; set @magic_number = 61475;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'This is amazing! To think that my ancestry lies with these people, that the Shen\'dralar are my kin! They take for granted all the knowledge that the world has lost. We stand to learn a great deal from the Shen\'dralar, and it is imperative that we remain in their good graces and render them any aid they seek.$B$BTheir knowledge will save my people, I just know it.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41457; set @magic_number = 61474;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Can you even begin to comprehend how powerful these elves are, $r? Their power resides in knowledge, a knowledge that would highly benefit both myself and the Forsaken as a whole.$B$BWere I to still breathe the same air as they, I would be breathless with excitement. And yet despite my elven nature, I still feel the compulsion to claim their power as my own. By aiding them, we shall aid ourselves. Come, let us see to their needs.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41456; set @magic_number = 61473;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The position of the stars has changed since I was young, but they nonetheless hold many secrets that influence the world we see even today. I believe we can use this power to our advantage. Mayhaps Toryn will take notice of my efforts as well.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41455; set @magic_number = 61472;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Greetings $r. I can see that you have your reservations about our abilities, but make no mistake, Ronae\'thalas will become a haven all our people can be proud of. Those who pledge aid will be rewarded, and if Azj\'tordin trusts you, then so shall I.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41454; set @magic_number = 61471;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I am tasked with both the creation and maintenance of our magical equipment and arcane defenders. It is no easy task, but I do hope that in time my toil will make Shanyra\'s life that much more tenable. Any help is, of course, appreciated in this matter.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41453; set @magic_number = 61470;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'We lost everything we had when we chose to leave the vault and library behind, but better to sacrifice material goods than to struggle and risk death before the madness of the Prince. I have already transcribed much from memory, but I could always use help in tracking down any forgotten annals.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41452; set @magic_number = 61469;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'I have done all in my ability to make this place presentable, but I was not bred for this. I am a noble of high standing, and yet here I toil like a commoner accommodating savages. Toryn isn\'t even gazing in my direction any more and my robe is soiled!$B$B... My apologies. It is unbecoming of a noble to make such an outburst. Times are hard on all of us. Now, what can I do for you?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41451; set @magic_number = 61468;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'It is crucial that we maintain good relations with our neighbors and the great powers. We have lost too much due to the Prince\'s madness. If we are to survive, then we must make friends. I hope I can count on your assistance.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Vendor list: Illanaya Spellwind.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4540, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4541, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4542, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4544, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 4601, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61479, 8950, 0, 0, 0, 0);
-- Vendor list: Talavana Andalorah.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 117, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 2287, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 2515, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 2519, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3030, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3033, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3770, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 3771, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4470, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4471, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4497, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4498, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 4599, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 8766, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 8952, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 11284, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61478, 11285, 0, 0, 0, 0);
-- Quest 40600, change short description to the following : Bring 7 Greater Tarantula Venom to Larry Ryder at the Pig and Whistle in Stormwind.
update quest_template set objectives = 'Bring 7 Greater Tarantula Venom to Larry Ryder at the Pig and Whistle in Stormwind.' where entry = 40600;
-- Item entry 61240 set sheath to shield on the back.
update item_template set sheath = 4 where entry = 61240;
-- Item entry 61209 change display ID to 20795.
update item_template set display_id = 20795 where entry = 61209;
-- item entry 61224 Dreamshard Elixir, set charges to 1.
update item_template set spellcharges_1 = 1 where entry = 61224;
-- Item entry 61225 Lucidity Potion, set charges to 1.
update item_template set spellcharges_1 = 1 where entry = 61225;
-- Gobject entry 2020000 , rename to Joshua the Redeemer
update gameobject_template set name = 'Joshua the Redeemer' where entry = 2020000;
-- Set scale of object 'Dawnstone Plans' entry 2020015 to 0.5, set respawn time to 10 seconds.
update gameobject_template set size = 0.5 where entry = 2020015;
update gameobject set spawntimesecsmin = 10, spawntimesecsmax = 10 where ID = 2020015;

-- New items for PTR:
-- Greymane Gloves.
replace into item_template values
 ('61376', '4', '4', 'Greymane Gauntlets', '', '17474', '2', '0', '1', '11924', '2981', '10', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '169', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
-- Greymane Boots.
replace into item_template values
 ('61377', '4', '4', 'Greymane Sabatons', '', '17473', '2', '0', '1', '15044', '3761', '8', '-1', '-1', '47',
 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '8', '6', '5',
 '4', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '238', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '55', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);
-- Greymane Leggings.
replace into item_template values
 ('61378', '4', '4', 'Greymane Legplates', '', '7688', '2', '0', '1', '35394', '5899', '7', '-1', '-1', '45',
 '40', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '7', '6', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '291', '0', '0', '0',
 '0', '0', '0', '13665', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
-- Greymane Bracers.
replace into item_template values
 ('61379', '4', '4', 'Greymane Vambraces', '', '35555', '2', '0', '1', '12168', '3042', '9', '-1', '-1', '47',
 '42', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '6', '4',
 '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '170', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '2', '0', '0', '0', '0', '0', '6', '0', '0', '0', '40', '0', '0', '0', '0', '7', '0', '0', '0',
 '0', '1', NULL);

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(18777, 0, 0, 0, 0);

-- Brol'ok Ogre Bounty
delete from quest_template where entry = 40852;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40852,2,5179,44,40,0,0,'Brol\'ok Ogre Bounty','With all the troubles around here, I find myself having to turn to every mercenary with a sword to get things done. It\'s an unenviable position, to say the least.$B$BSay, I\'m not paying you to listen, and you\'re not here to hear me talk. North of here, in their mounds, are significantly more ogres than I am comfortable sharing the area with. Go and relieve them of their heads. Bring me twenty, and I will organise payment.$B$B<He gives a derisive smirk before looking away.>','Bring 20 Brol\'ok Ogre Heads to Sergeant Arbington at Ravenshire in Gilneas.','You seem not to be a dead mercenary. Does that then make you a successful mercenary, or simply a lazy mercenary?','Eighteen, nineteen, tw... hmm. That one is really badly damaged, whatever did you do to him? Regardless, you did well. Here is your payment.',61380,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 11200,19800,3300,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61265, 40852);
replace into creature_involvedrelation	(id, quest) values (61265, 40852);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61380,20597,'Brol\'ok Ogre Head',12,1,2048,1,-1,-1,1,20,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61243, 61380, -100, 0, 1, 1, 0),
(61244, 61380, -100, 0, 1, 1, 0),
(61245, 61380, -100, 0, 1, 1, 0),
(61246, 61380, -100, 0, 1, 1, 0);

-- The Staff of Shinban
delete from quest_template where entry = 40853;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40853,2,5179,45,40,0,0,'The Staff of Shinban','Truthfully, $N, I don\'t really care how many dumb ogres are killed by gold-a-dozen mercenaries. Whether it\'s you or some other that brings me a bag of heads, it makes no difference.$B$BOh don\'t look at me like that, you know I\'m right. Anyway, if you want something meaningful to do, listen: our scouts overheard that two ogres are vying for power amongst the Brol\'ok. One of which calls himself Shinban Four-Eyes. A two headed ogre with three actual eyes, claims the fourth is a hidden one that gives him the vision required to lead!$B$BI would be worried about that, $N. Either he is telling the truth and is a caster powerful enough to have magical sight, or he is smart enough to understand metaphors. Both are worrying. Regardless, he is your primary target.','Slay Shinban Four-Eyes, and bring his staff to Sergeant Arbington at Ravenshire in Gilneas.','No further work, your current tasks need to be done.','He must not have been such a threat after all, to see you bringing back this trophy so quickly. Though I shall not change the pay now, a reward is a reward. Take it.',61381,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 20000,22800,3800,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61265, 40853);
replace into creature_involvedrelation	(id, quest) values (61265, 40853);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61381,20309,'Staff of Shinban',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

-- Shinban Four-Eyes, Display ID 11563, has 18523 equipped, faction 45, level 45, humanoid, scale 1.1 (casts 12523 every 6 seconds).

REPLACE INTO creature_template VALUES
(61481, 11563, 0, 0, 0, 0, 'Shinban Four-Eyes', NULL, 0, 45, 45, 2217, 2217, 0, 0, 2725, 45, 0, 1, 1.14714, 1.1, 18, 5, 0, 0, 1, 78, 95, 0, 204, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 63.7824, 87.7008, 100, 7, 0, 61481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 84, 115, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61481, 61381, -100, 0, 1, 1, 0);

set @equip_template = 20380; set @weapon_1 = 18523; set @weapon_2 = 0; set @weapon_3 = 0; set @creature = 61481;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

-- Shinban Four-Eyes
set @creature_entry = 61481;
set @description = ': Shinban Four-Eyes';
set @spell_list_id = 180177;

set @spellid_1 = 12523; -- Pyroblast
set @probability_1 = 100; 
set @casttarget_1 = 1; 
set @castflags_1 = 4;
set @delayinitialmin_1 = 0; 
set @delayinitialmax_1 = 0; 
set @delayrepeatmin_1 = 6; 
set @delayrepeatmax_1 = 6;

set @spellid_2 = 0;
set @probability_2 = 0;
set @casttarget_2 = 0;
set @castflags_2 = 0;
set @delayinitialmin_2 = 0;
set @delayinitialmax_2 = 0;
set @delayrepeatmin_2 = 0; 
set @delayrepeatmax_2 = 0;

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
update creature_template set spell_list_id = @spell_list_id, ai_name = '', script_name = '', spell_id1 = 0, spell_id2 = 0, spell_id3 = 0 
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

-- Vernon's Task
delete from quest_template where entry = 40854;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40854,2,5179,44,40,0,0,'Vernon\'s Task','Greetings, $N.$B$BIt is rare that I admit my incorrect assumptions, but I must atone for this one. I previously thought the ogres of Brol\'ok should be allowed to grow and fester, like a pustulant sore, right next to Ravenshire. Let the living there be the ones to suffer with it.$B$B But alas, whatever still holds vigil over this godforsaken land has a sense of irony. It was just last night that I saw a group of ogres attack, and kill, one of our own Deathstalkers. Out of my own pocket, I now purchase vengeance. Bring me twenty of their heads, and be rewarded.','Bring 20 Brol\'ok ogre heads to Deathstalker Vernon at Stillward Church in Gilneas.','Be swift, vengeance is a desire best sated immediately.','Glorious, simply glorious. Ah, the sweet taste of it, knowing a debt has been repaid twenty-fold.',61380,20,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 14000,19800,3300,68,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61283, 40854);
replace into creature_involvedrelation	(id, quest) values (61283, 40854);

-- A Chief Among Brutes
delete from quest_template where entry = 40855;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40855,2,5179,45,40,0,0,'A Chief Among Brutes','Recent events have made me reconsider my outlook on life. Or, lack thereof.$B$BWhat is it that demands the most respect in this world, $N? I would say that is power. Raw and unadulterated. Sheer strength of will, force of arm, power. And what causes any kingdom to fall into ruins, to crumble into ash? The loss of leadership, the lack of power!$B$B Ah, forget my musings and ramblings, I have much too much time and much too much contempt. To speak plainly: the Brol\'ok have a champion vying for power in their little mounds, known as Maulfist. He is called a chief, even amongst the ogres, so he must be exceptionally powerful... bring me his crown, if you can. I will reward you handsomely if so.','Bring the Crown of Maulfist to Deathstalker Vernon at Stillward Church in Gilneas.','Yes, $N? Have you brought death to their mounds?','Ah, delightful. Such brutish craftsmanship, their work often looks quite pathetic, doesn\'t it? Ah don\'t mind me, your reward, your reward at once.',61382,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 20000,22800,3800,68,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61283, 40855);
replace into creature_involvedrelation	(id, quest) values (61283, 40855);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61382,3853,'Crown of Maulfist',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61247, 61382, -100, 0, 1, 1, 0);

-- Add the loot tables of NPC entry 7309 (Earthen Custodian) to all the following npcs below:
-- Greymane Justicar (61417).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61417, 4338, 26.4455, 0, 1, 2, 0);
-- Greymane Worker (61394).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61394, 4338, 26.4455, 0, 1, 2, 0);
-- Greymane Knight (61365).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61365, 4338, 26.4455, 0, 1, 2, 0);
-- Greymane Noble (61390).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61390, 4338, 26.4455, 0, 1, 2, 0);
-- Greymane Elite (61388).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61388, 4338, 26.4455, 0, 1, 2, 0);
-- Greymane Cleric (61391).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61391, 4338, 26.4455, 0, 1, 2, 0);
-- Greymane Footman (61389).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61389, 4338, 26.4455, 0, 1, 2, 0);
-- Greymane Arbalest (61364).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61364, 4338, 26.4455, 0, 1, 2, 0);
-- Darkpelt Worgen (61462).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61462, 4338, 26.4455, 0, 1, 2, 0);
-- Darkpelt Shadowcaster (61426).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61426, 4338, 26.4455, 0, 1, 2, 0);
-- Darkpelt Alpha (61425).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61425, 4338, 26.4455, 0, 1, 2, 0);
-- Darkpelt Rager (61424).
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 3864, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 7453, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 7909, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 8029, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 9293, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 10312, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 10604, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 3914, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 7910, 0.08, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 1707, 0.1896, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 4419, 0.24, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 4422, 0.36, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 30025, 0.5, 0, -30025, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 30027, 0.5, 0, -30027, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 30029, 0.5, 0, -30029, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 4424, 0.56, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 4421, 0.78, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 3928, 1.0427, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 6149, 1.46, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 1645, 2.1801, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 30048, 2.5, 0, -30048, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 4601, 4.6445, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 4306, 10.3318, 0, 1, 2, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (61424, 4338, 26.4455, 0, 1, 2, 0);
-- Set the respawn time of all these creatures as well to 4hrs.
update creature set spawntimesecsmin = 14400, spawntimesecsmax = 14400 where ID in (61424,61425,61426,61462,61364,61389,61391,61388,61390,61365,61394,61417);
-- Set the respawn time of the following creatures to 48 hrs.
update creature set spawntimesecsmin = 172800, spawntimesecsmax = 172800 where ID in (61419,61420,61421,61422,61423,61263,61264,61418);
-- Swap the displayids of npc entries: 61478 and 61473.
update creature_template set display_id1 = 18765 where entry = 61478;
update creature_template set display_id1 = 18767 where entry = 61473;
-- NPC ENTRY 61366 GREYMANE INSTIGATOR, change display ids to 20275, 20276.
update creature_template set display_id1 = 20275, display_id2 = 20276 where entry = 61366;
-- Remove the subname from 61477 and change it's type to mechanical.
update creature_template set subname = NULL, type = 9 where entry = 61477;
-- NPC Demetreus (Entry 61450), change greeting text to :
update broadcast_text set male_text = 'The Wolf Serpent sees through me, hears through me, feels through me. I am the thunder of his voice, the instrument of his judgement.$B$BFor as long as you linger in the Wolfswood, you shall abide by my word.' where entry = 61450;
-- NPC Bearbane (Entry 61459), change greeting text to :
update broadcast_text set male_text = 'Another one of you aimless outlanders wandering up here. I wonder what exactly you\'re hoping to find.' where entry = 61459;
-- NPC Lurn Five-Pelts (Entry 61452), change greeting text to :
update broadcast_text set male_text = 'We are the pellars, an order of faithful guardians of the land and her children. Healers, shepherds, teachers.$B$BWe see beyond the mirages of politics to aid those in Gilneas who take refuge in the old ways. Farmers, huntsmen, humble folk who did not lose themselves in their groves of cold stone.$B$BJoin us, return to your roots.' where entry = 61452;
-- NPC Mustang (Entry 61449) add vendor flags and repair flags, change greeting text to :
update broadcast_text set male_text = 'If ever be you needing help with fixing your gear, I know how to mend most things that break. If not, you could always sell your scraps to old Mustang.' where entry = 61449;
update creature_template set npc_flags = 16391 where entry = 61449;
-- NPC Levandra (Entry 61454) add vendor flags, add limited supply herbs to sell list, change greeting text to :
update broadcast_text set male_text = 'Have you coin, have you gold? For a copper and a silver, roots and blooms, flowers and shrooms, and yet bulbs from the dell to you I\'ll gladly sell.' where entry = 61454;
update creature_template set npc_flags = 7 where entry = 61454;
-- Item 61225 set item charges to 1, item should be deleted upon use.
update item_template set spellcharges_1 = -1 where entry = 61225;
-- Item 61224 set item charges to 1, item should be deleted upon use.
update item_template set spellcharges_1 = -1 where entry = 61224;
-- Vendor list for NPC Levandra from NPC Maria Lumere (entry 1313), remove the following items: 3371, 3372, 8925, 18256, 9301).
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 765, 3, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 785, 1, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 2447, 3, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 2449, 1, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 2453, 2, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 3355, 1, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 3356, 1, 7200, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61454, 3357, 1, 7200, 0, 0);

-- Backup System Activation
delete from quest_template where entry = 40856;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40856,2,133,33,25,512,0,'Backup System Activation','Gnomeregan\'s intricate network of ducts, pipes, channels, vents, and airways are essential for maintaining a healthy flow of air. However, they also circulated the toxic gases that had such a devastating impact on our brethren.$B$BAs a precaution, we established a comprehensive backup system that redirects the airflow in case of an emergency. Unfortunately, many of these channels have been closed off and sealed, necessitating the manipulation of levers and valves to reactivate them.$B$BWe require your technical expertise to access two crucial access points within the city. The first is the Alpha Channel, which is responsible for our backup power generation and is located in the Engineering Labs. The second is the Reserve Pump Channel, found near the Launch Bay, which is essential for the operation of our reserve air pumps.$B$BThese channels must be activated! We must return the great city of Gnomeregan to the marvel of technology that it once was!','Activate the Alpha Channel Valve and the Reserve Pump Channel Lever deep within Gnomeregan for Master Technician Wirespanner in Dun Morogh.','Our success is critical on the activation of these backup systems. I would advise you to recruit some backup in this task, for Gnomeregan is filled with all manner of terrible things.','Adventurer! I am pleased to inform you that the Alpha Channel and Reserve Pump Channel are performing exceptionally well, operating at approximately 87% efficiency. No, wait, 88%! Given the devastation of Gnomeregan, this is indeed a welcome surprise.$B$BI cannot express enough gratitude for the invaluable assistance you have provided in helping us restore this facility. Without your efforts, we would not have made nearly as much progress as we have.$B$BAs a token of our appreciation, please accept this humble offering from all of us here at the Reclamation Facility. May it aid you with your future endeavors.',0,0,0,0,0,0,0,0, 60042,1,60043,1,0,0,0,0, 0,0, 0,0,3350,54,350,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61383,1,61384,1,61385,1,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61437, 40856);
replace into creature_involvedrelation	(id, quest) values (61437, 40856);

update quest_template set type = 81 where entry = 40856;
update quest_template set objectivetext1 = 'Activate the Alpha Channel Valve' where entry = 40856;
update quest_template set objectivetext2 = 'Activate the Reserve Pump Lever' where entry = 40856;

REPLACE INTO gameobject_template VALUES
(2020017, 2, 353, 'Alpha Channel Valve', 0, 32, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_alpha_channel_valve'),
(2020018, 2, 353, 'Reserve Pump Lever', 0, 32, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go_reserve_pump_lever');

REPLACE INTO creature_template VALUES
(60042, 328, 0, 0, 0, 0, 'quest_40856_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(60043, 328, 0, 0, 0, 0, 'quest_40856_dummy_triger', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 35, 0, 1, 1.14286, 1, 20, 5, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

replace into item_template values
 ('61383', '2', '3', 'Intricate Gnomish Blunderbuss', '', '66406', '3', '0', '1', '27152', '6788', '26', '-1', '-1', '37',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '100',
 '3', '30', '78', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '0', '0', '0', '75', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61384', '4', '3', 'Ionized Metal Grips', '', '27825', '3', '0', '1', '10032', '2508', '10', '-1', '-1', '37',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '6', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '152', '0', '0', '10',
 '0', '0', '0', '13679', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '40', '0', '0', '0', '0', '43', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61385', '4', '0', 'Magnetic Band', '', '14438', '3', '0', '1', '16432', '4108', '11', '-1', '-1', '37',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '3', '6', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '45420', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Removing Leper Leadership
delete from quest_template where entry = 40857;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40857,2,1,13,6,512,0,'Removing Leper Leadership','Greetings adventurer, I am Teezle Dualflash, once widely known in Gnomeregan, and I have returned with valuable information that could greatly aid our cause. I have discovered the identity of the leader of the leper gnomes who has been causing chaos on the surface, and his name is Neevan Gubblewire. He has been rallying the lepers to his cause, continually causing trouble for the reclamation facility, hindering our efforts, and threatening the future success of our cause.$B$BThat is why I implore you, brave adventurer, to help us bring Neevan Gubblewire to justice. It will not be an easy task, but it must be done. You should be able to find him somewhere on the surface outside of Gnomeregan to the south of here. Will you help me with this matter?','Slay Neevan Gubblewire for Teezle Dualflash at the Gnomeregan Reclamation Facility in Dun Morogh.','Have you found that ruffian that calls himself leader?','Impressive work, $c. You have slain Neevan Gubblewire and scattered his leper ruffians, making our work safer and more secure. Your bravery and determination are admirable, and you have served our cause well. I will be sure to pass along your name with everyone I am sure to run into.$B$BTake one of these as a token of my appreciation, and best of luck out there.',0,0,0,0,0,0,0,0, 61482,1,0,0,0,0,0,0, 0,0, 0,5400,900,54,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61386,1,61387,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61435, 40857);
replace into creature_involvedrelation	(id, quest) values (61435, 40857);

-- Npc Neevan Gubblewire, display ID 6930, faction 63, humanoid, scale 1, weapon 2131, weapon2 11585
REPLACE INTO creature_template VALUES
(61482, 6930, 0, 0, 0, 0, 'Neevan Gubblewire', NULL, 0, 13, 13, 314, 314, 0, 0, 511, 63, 0, 1, 1.14286, 1, 20, 5, 40, 0, 1, 21, 27, 0, 76, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 27.2272, 37.4374, 100, 7, 0, 61482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 10, 50, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @equip_template = 20381; set @weapon_1 = 2131; set @weapon_2 = 11585; set @weapon_3 = 0; set @creature = 61482;
replace into creature_equip_template values (@equip_template, @weapon_1, @weapon_2, @weapon_3);
update creature_template set equipment_id = @equip_template where entry = @creature;

replace into item_template values
 ('61386', '4', '6', 'Gubblewire Shield', '', '21539', '2', '0', '1', '1616', '404', '14', '-1', '-1', '14',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '5', '1', '7', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '330', '0', '0', '5',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '0', '4', '0', '0', '55', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);

-- replace into item_template values
 -- ('61387', '4', '2', 'Backup Tinkering Trousers', '', '28431', '2', '0', '1', '1144', '286', '7', '-1', '-1', '14',
 -- '', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '5', '1',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 -- '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 -- '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '45', '0', '0', '0', '0', '21', '0', '0', '0',
 -- '0', '1', NULL);

-- Work Overdue
delete from quest_template where entry = 40858;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40858,2,1,10,6,0,0,'Work Overdue','You wouldn\'t happen to have seen Technician Stormlight around have you? Small stature, bald, brown goatee?$B$BI\'ve been waiting for an access terminal repair for practically a full day now, and I need his work done before we can continue our procedures. If you could, find him and tell him to hurry it up. He should still be inside the Reclamation Facility.','Find Technician Stormlight within the Gnomeregan Reclamation Facility in Dun Morogh.','Yes?','Can\'t you see that I am busy here? I am trying to get this access terminal operational with subpar tools and inadequate materials! It\'s proving to be quite a challenge, even for a gnome of my skill.$B$BSay, you wouldn\'t mind helping me out, would you?',0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,90,54,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61437, 40858);
replace into creature_involvedrelation	(id, quest) values (61429, 40858);

-- Hydrocondensor Modulator
delete from quest_template where entry = 40859;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40858,40859,2,1,10,6,512,0,'Hydrocondensor Modulator','I have been expecting a shipment from Tinker Town for a few days now. You see, a lot of our rare materials were sent over here once we got things settled. A lot of my work on these access panels needs a Hydrocondensor Modulator, but it was stolen on the trip here by a group of leper gnomes. They ransacked quite a few valuable goods.$B$BNow, getting hold of a new one is not an easy task. We could only construct them in Gnomeregan, so unless you want to go digging through that trogg infested ruin, I suggest you look for the one that got stolen. Try rooting around the old houses to the south of here, no doubt they have it stashed somewhere safe.','Find the Hydrocondensor Modulator for Technician Stormlight at the Gnomeregan Reclamation Facility in Dun Morogh.','Have you had any success in finding my modulator?','<Technician Stormlight lets out an exhausted sigh of relief.>$B$BI was getting ready to start preparing the copper tubes and bronze frameworks as a backup! You have certainly saved a colossal headache by finding this blasted thing. Now I can get started on some real fixing. Thanks again, $c.',61388,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,800,54,200,0,0,0,0,0,0,0,0,0, 61389,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61429, 40859);
replace into creature_involvedrelation	(id, quest) values (61429, 40859);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61388,7841,'Hydrocondensor Modulator',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2020019, 3, 24107, 'Hydrocondensor Modulator', 0, 4, 1, 43, 2020019, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020019,61388,-100,0,1,1,0);

replace into item_template values
 ('61389', '4', '2', 'Stormlight Boots', '', '9530', '2', '0', '1', '872', '218', '8', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '2', '4', '2',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '42', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- The Dawnstone Coupler
delete from quest_template where entry = 40860;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40860,2,5179,43,35,512,0,'The Dawnstone Coupler','When Gnomeregan was built many years ago we had access to all sorts of materials from around the world. Dawnstone, one such material that we used, was excellent for being a coupler of energy. It was highly resistant to both magical, and powerful currents of energy. Making it highly versatile in its uses.$B$BWe have been unable to recreate any replicas to fix those that have broken down, having to replace them with subpar stand-ins that break much more often.$B$BThough it would appear we have a surge of luck on our side. You see, Gilneas has opened its gates once again. Rumors of civil problems are abound there.$B$BI need you to head to Gilneas far to the north and gather me a supply of four Dawnstone Ore. It should be found at the Dawnstone Mine near the city.','Travel to Gilneas in the north and collect 4 Dawnstone Ore for Technician Voltgear at the Gnomeregan Reclamation Facility in Dun Morogh.','We have been going through Copper Couplers faster than I can wrap my head around! If we are to keep up with all of the repair work required in this facility we need something that can last.','<Master Technician Wirespanner gazes upon the ore, an expression of giddy joy washes across his face.>$B$BThese dull, repressed glints, I remember them fondly. Excellent work $c, with this ore we will be able to produce enough conductors to fix what is needed in the facility.',61390,4,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,4400,54,200,0,0,0,0,0,0,0,0,0, 61391,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61430, 40860);
replace into creature_involvedrelation	(id, quest) values (61430, 40860);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61390,4690,'Dawnstone Ore',12,1,2048,1,-1,-1,1,4,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61399, 61390, -28, 0, 1, 1, 0);

replace into item_template values
 ('61391', '2', '5', 'Servocharged Wrench', '', '34820', '2', '0', '1', '87596', '21899', '17', '-1', '-1', '44',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '8', '7', '4',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3400', '0',
 '0', '92', '148', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '85', '0', '0', '0', '0', '26', '0', '0', '0',
 '0', '1', NULL);
-- New creature displays added.
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20346, 0, 0, 1, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20347, 0, 0, 1, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20348, 0, 0, 1, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20349, 0, 0, 1, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20350, 0, 0, 1, 0);
REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES (20351, 0, 0, 1, 0);
-- Add the following npcs ((Make sure their entries are not used by other mobs.)
REPLACE INTO creature_template VALUES
(61483, 20346, 0, 0, 0, 0, 'Azshanaya Spellwind', 'Conjurer', 0, 60, 60, 4048, 4048, 0, 0, 3840, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61484, 18515, 0, 0, 0, 0, 'Kalaya Spellbinder', 'Enchantress', 0, 60, 60, 5146, 5146, 0, 0, 4640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41461; set @magic_number = 61484;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ronae\'thalas used to be an academy closely connected to the Eldre\'thalas elite before the sundering. Many of us even attended this academy in it\'s prime.$B$BWhile the sundering destroyed much, a lot of the wards and magical reservoirs remain active to this day. It is my job to reshape and draw upon the lingering magic here so that it may assist us.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41460; set @magic_number = 61483;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'While we could only bring few things from Eldre\'thalas, we never lost our magic. Conjuration has allowed us to create many items, primarily food and supplies. My services are in high demand and I do what I must for my people.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- The overwritten NPC has been restored.
REPLACE INTO creature_template VALUES
(61381, 1571, 0, 0, 0, 0, 'Frell Rosewick', NULL, 41408, 38, 38, 1599, 1599, 0, 0, 1780, 84, 3, 1, 1.14286, 0.7, 18, 5, 0, 0, 1, 56, 69, 0, 152, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 53.8384, 74.0278, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
-- Gobject Reserve Pump Level (Entry 2020018) change display to 'GnomeLever'.
update gameobject_template set displayid = 23839 where entry = 2020018;

-- High Energy Regulator
delete from quest_template where entry = 40861;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40861,2,133,33,25,512,0,'High Energy Regulator','The destruction of Gnomeregan set us back in our technology in quite a few ways. So much of our work was lost in the blink of an eye.$B$BWe are basically working blind. If we are to ever make real progress here in this facility, then we require a very rare item of significant importance.$B$BThe High Energy Regulator is something that was created to manage surges of intense energy. Without it, it is impossible to channel excessive amounts of power to where we need it, which is exactly what we are trying to do here!$B$BCurrently, this facility is operating at low power to prevent an override or oversurge to our systems. But we can work faster, MUCH faster. I need you to find the schematic for the High Energy Regulator that was lost in Gnomeregan. We can truly utilize this facility in the way it was meant to run if we can get ahold of it.','Find the Schematic: High Energy Regulator within Gnomeregan and bring it to Weezan Littlegear at the Gnomeregan Reclamation Facility in Dun Morogh.',' Damned spanner, always.. $B$BOh, you startled me, you wouldn\'t happen to have recovered the schematic would you?','Hmm, this is much more complicated than I remember, but with a little bit of elbow grease and some studious applications of gnomish engineering, it shouldn\'t be too hard to create a proper replica. It will take some time to test its efficiency before we put it into practice, but this has saved us a lot of time in designing a new prototype.$B$BThanks again $c. Here, take this, a Low Energy Regulator as thanks for your help.',61392,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,0,3050,54,350,0,0,0,0,0,0,0,0,0, 61393,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61441, 40861);
replace into creature_involvedrelation	(id, quest) values (61441, 40861);

update quest_template set type = 81 where entry = 40861;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61392,4690,'High Energy Regulator',12,2,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'A highly intricate, and overly complex design.',0);

REPLACE INTO gameobject_template VALUES
(2020020, 3, 27228, 'Schematic: High Energy Regulator', 0, 4, 1, 43, 2020020, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020020,61392,-100,0,1,1,0);

replace into item_template values
 ('61393', '4', '0', 'Low Energy Regulator', '', '20627', '2', '0', '1', '30000', '7500', '12', '-1', '-1', '30',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '27538', '0', '0', '0', '600000', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '1', NULL);

-- Malfunction Mayhem
delete from quest_template where entry = 40862;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40862,2,1,10,6,0,0,'Malfunction Mayhem','Greetings! I am Cassie Copperlight, a gnomish tinker. I find myself in a bit of a bind, you see: a recent batch of bad data membranes from Tinker Town has caused a catastrophic failure in many of the Servitors in the lower levels of the Reclamation Facility. I may need your help.$B$BYour task is to venture down into those lower levels and destroy the malfunctioning Servitors. Additionally, I need you to retrieve any spare parts lying about so that I can build functioning replacements. Around seven should do. It won\'t be easy, but with your skill and bravery, we can fix this problem and prevent any further damage.','Slay 10 Malfunctioning Servitors and gather 7 Spare Parts for Cassie Copperlight at the Gnomeregan Reclamation Facility in Dun Morogh.','I would be careful dealing with those Servitors. They may be primarily built to help with tasks, but they can be quite dangerous!','<A heavy sigh of relief escapes Cassie Copperlight.>$B$BPhew.$B$BWell, that is one crisis averted. It shouldn\'t be long until the other malfunctioning Servitor\'s are all destroyed. I got some spare silver for what you\'ve done. Hope to see you around!',61394,7,0,0,0,0,0,0, 61464,10,0,0,0,0,0,0, 0,0, 250,3600,600,54,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61438, 40862);
replace into creature_involvedrelation	(id, quest) values (61438, 40862);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61394,7840,'Spare Parts',12,1,2048,1,-1,-1,1,7,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2020021, 3, 23809, 'Spare Parts', 0, 4, 1, 43, 2020021, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020021,61394,-100,0,1,1,0);

-- The Mercy of Humility
delete from quest_template where entry = 40863;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40863,2,1,12,7,512,0,'The Mercy of Humility','Greetings, adventurer. I am Father Gavin, a humble priest of the Argent Dawn. I come to you with a request that weighs heavily upon my soul. I was recently ambushed in Dun Morogh and my prized possession, \'The Mercy of Humility\', an old religious text, was taken from me by the violent Rockjaw Troggs. I fear for its safety, as these brutish creatures are known to destroy anything they can\'t use.$B$BI implore you to aid me in recovering this valuable relic. I am certain the Troggs near Ironband\'s Compound to the south east are those that possess it. Slay them and recover the text before it is damaged beyond repair.$B$BBring this book back to me, and I will make sure you are justly rewarded for your service to the Light.','Recover The Mercy of Humility from the Rockjaw Troggs near Ironband\'s Compound for Father Gavin in Dun Morogh.','It is imperative that you recover The Mercy of Humility before it is too late.','By all that is divine, the tome is recovered...$B$BThe weight has been lifted, and my soul is free. You have done me a great service in recovering this text, and for it I must thank you dearly.$B$BPlease, take this robe, as a gesture of my good will.',61395,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4080,680,529,250,0,0,0,0,0,0,0,0,0, 61396,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (1253, 40863);
replace into creature_involvedrelation	(id, quest) values (1253, 40863);

replace into gossip_menu (entry, text_id, condition_id) VALUES (41462, 30110, '0'); 
replace into broadcast_text (entry, Male_Text) values (30110, 'Even in the cold such as this, one can embrace the warmth found within the Light. Do you have a moment to pray $c?');
replace into npc_text (ID, BroadcastTextID0) values (30110, 30110);
update creature_template set gossip_menu_id = 41462, npc_flags = 3 where entry = 1253;

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61395,1134,'The Mercy of Humility',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(1116, 61395, -14, 0, 1, 1, 0),
(1118, 61395, -14, 0, 1, 1, 0);

replace into item_template values
 ('61396', '4', '1', 'Robe of Humility', '', '12653', '2', '0', '1', '704', '176', '5', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '0', '0', '0',
 '0', '0', '0', '7676', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '45', '0', '0', '0', '0', '21', '0', '0', '0',
 '0', '1', NULL);
 
-- Chemical Cleanup
delete from quest_template where entry = 40864;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40864,2,1,12,8,0,0,'Chemical Cleanup','As you may have noticed, the lower sections of the Reclamation Facility have been contaminated by a chemical leak, which has resulted in the appearance of corrosive backup. These dangerous substances were created due to an unstable arcane converter, which was leaking magical eminence.$B$BAs a chemist, it is my duty to oversee the cleanup of these hazardous materials. However, the corrosive backup has proven to be particularly challenging to contain, let alone eliminate! Could you offer your assistance in this matter? Thinning the numbers of oozes would make my life a lot easier.','Slay 8 Corrosive Backup from the lower levels for Chemist Glowsight at the Gnomeregan Reclamation Facility in Dun Morogh.','I\'m trying to think of a more scientific solution to this problem, just in case your smashing solution does not pan out.','By Mekkatorque\'s word, you\'ve done a good job in cleaning up that chemical backup.$B$BThere is still some work to be done, but we will surely finish the job soon.$B$BHere, take this as payment for your help.',0,0,0,0,0,0,0,0, 61465,8,0,0,0,0,0,0, 0,0, 125,4080,680,54,200,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61433, 40864);
replace into creature_involvedrelation	(id, quest) values (61433, 40864);

-- Chemical Betrayal!
delete from quest_template where entry = 40865;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40865,2,1,14,8,0,0,'Chemical Betrayal!','The Robot XV-81, a highly sophisticated chemical clean-up Servitor, has turned rogue due to magical interference. It\'s causing chaos in the lower levels of the Reclamation Facility, and poses a threat to anyone in its path.$B$BI must ask of you to venture into the depths below, locate XV-81, and destroy it before it causes any further harm. Most importantly I must ask you to recover it\'s Chemical Processing Membrane, an extremely rare piece of technology locked deep within its brain!','Slay XV-81 and return the Chemical Processing Membrane to Chemist Glowsight at the Gnomeregan Reclamation Facility in Dun Morogh.','The chemists here at the Reclamation Facility are relying on you, $N!','You\'ve done it!$B$BThe Chemical Processing Membrane has been recovered. I cannot express how thankful I am to see this! I was already dreading the sheer amount of work we would have to do to make a new one.$B$BNow, we can begin work on the XV-82 with the Tinkers and make it much more sound to deal with chemical issues and resilient to arcane interference.$B$BHere, take this as a token of appreciation. Without you, I would still be scratching my head to think of a solution!',61397,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4320,720,54,250,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 61398,1,61399,1,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61433, 40865);
replace into creature_involvedrelation	(id, quest) values (61433, 40865);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61397,17923,'Chemical Processing Membrane',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61466, 61397, -100, 0, 1, 1, 0);

replace into item_template values
 ('61398', '4', '2', 'Gnomish Chemistry Belt', '', '12464', '2', '0', '1', '432', '108', '6', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '0', '0', '3',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '20', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

replace into item_template values
 ('61399', '4', '3', 'Xtra-Protective Gloves', '', '25811', '2', '0', '1', '672', '168', '10', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '1', '4', '1',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '72', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '25', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);

-- Dark Iron Technology
delete from quest_template where entry = 40866;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40866,2,1,10,6,0,0,'Dark Iron Technology','Ever since we left Tinker Town, there have been messages of a raid near Ironband\'s Compound to the south east. You would suspect Troggs to be behind such a thing, but no, Dark Irons are here in Dun Morogh.$B$BWhilst this is alarming, it could also prove to be a chance to get ahold of some Dark Iron Technology. I do know that there are some skilled engineers and magic users amongst their ranks, and I want to see first hand what they are capable of.$B$BHead down there, and take what you can find. Bring it back to me so I can do some studying.','Gather Dark Iron Technology at Ironband\'s Compound for Tenner Pipegadge at the Gnomeregan Reclamation Facility in Dun Morogh.','So, have you made it to Ironband\'s Compound yet?','This is it, huh? To be honest, I expected more, but perhaps this is only because they are so far from their home.$B$BOh well, I will still go ahead and study this in more depth. At the least you were able to kill some of those rather brutish Dark Iron.$B$BHere, take this coin as thanks.',61400,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 250,3720,620,54,300,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61446, 40866);
replace into creature_involvedrelation	(id, quest) values (61446, 40866);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61400,7839,'Dark Iron Technology',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO gameobject_template VALUES
(2020022, 3, 22826, 'Dark Iron Technology', 0, 4, 1, 43, 2020022, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

replace into gameobject_loot_template values
(2020022,61400,-100,0,1,1,0);

-- Mastering the Formula I
delete from quest_template where entry = 40867;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (0,40867,2,1,10,6,0,0,'Mastering the Formula I','Greetings $c, I am the Master Chemist here at the Reclamation Facility, working on a groundbreaking formula to purify the air in our once beloved city of Gnomeregan. However, I am in dire need of materials to test my theories.$B$BI require a Pure Aqua Sample, which can only be obtained from the unbalanced aqua found in Dun Morogh\'s Ice Flow Lake. These elementals are known for their unique and magical properties, making them a perfect specimen for my research.$B$BIf you could gather one Pure Aqua Sample for me, it would be of great assistance. Do approach cautiously, as the elementals can be quite dangerous.','Gather a Pure Aqua Sample from the Unbalanced Aqua located at the Ice Flow Lake in Dun Morogh for Master Chemist Volterwhite.','The sample I have tasked you with gathering is of extreme importance. Do not delay in this matter.','<Master Chemist Volterwhite takes his time studying the sample with utmost care.>$B$BHmm, this may prove to be a vital piece in the complex puzzle I am working on. I need to test a few things first...',61401,1,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,3900,650,54,100,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61436, 40867);
replace into creature_involvedrelation	(id, quest) values (61436, 40867);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61401,1328,'Pure Aqua Sample',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(61463, 61401, -100, 0, 1, 1, 0);

-- Mastering the Formula II
delete from quest_template where entry = 40868;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (40867,40868,2,1,10,6,0,0,'Mastering the Formula II','The magical fluctuations of the sample you provided were quite extreme. In order to harness and channel this energy, I require a few materials. Materials that I have been waiting on for some time now.$B$BWith the disturbance of Gol\'Bolar Quarry and the untimely demise of a contractor working there, I have been left empty handed on my supply of Snowvale Root and Gol\'Bolar Ore. Perhaps you can help with acquiring these things for me?$B$BSnowvale Root is often carried by Frostmane Seers who have travelled to their retreat far in the mountains. I will require three samples of it from them. As for the Gol\'Bolar Ore, I am sure Prospector Gehn at the Quarry will provide it on our behalf here.','Gather 3 Snowvale Root from Frostmane Seer\'s in Dun Morogh, and the Shipment of Gol\'Bolar Ore from Prospector Gehn at the Gol\'Bolar Quarry for Master Chemist Volterwhite at the Gnomeregan Reclamation Facility in Dun Morogh.','You\'re disturbing my work. That is, unless, you have those materials I asked you to acquire?','The grounded nature of the Gol\'Bolar Ore and the controlled energy of the Snowvale Root should do well in controlling the extreme fluctuations of the aqua sample you brought me earlier.',61402,3,61403,1,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0, 0,4080,680,54,150,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');

replace into creature_questrelation		(id, quest) values (61436, 40868);
replace into creature_involvedrelation	(id, quest) values (61436, 40868);

replace into item_template (entry, display_id, name, class, quality, flags, buy_count, allowable_class, allowable_race, item_level, stackable, spellcooldown_1, spellcategorycooldown_1, spellcooldown_2, spellcategorycooldown_2, bonding, description, page_text) values
(61402,1464,'Snowvale Root',12,1,2048,1,-1,-1,1,3,-1,-1,-1,-1,4,'',0),
(61403,7914,'Shipment of Gol\'Bolar Ore',12,1,2048,1,-1,-1,1,1,-1,-1,-1,-1,4,'',0);

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(1397, 61402, -68, 0, 1, 1, 0);

update creature_template set script_name = 'npc_prospector_gehn' where entry = 1255;
update creature_template set script_name = 'npc_master_chemist_volterwhite' where entry = 61436;

-- The missing NPCs have been added to DB again.
REPLACE INTO creature_template VALUES
(61483, 20346, 0, 0, 0, 0, 'Azshanaya Spellwind', 'Conjurer', 0, 60, 60, 4048, 4048, 0, 0, 3840, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61484, 18515, 0, 0, 0, 0, 'Kalaya Spellbinder', 'Enchantress', 0, 60, 60, 5146, 5146, 0, 0, 4640, 1354, 3, 1, 1.14286, 1, 18, 5, 40, 0, 1, 110, 142, 0, 272, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 3, 0, 74.448, 102.366, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41461; set @magic_number = 61484;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ronae\'thalas used to be an academy closely connected to the Eldre\'thalas elite before the sundering. Many of us even attended this academy in it\'s prime.$B$BWhile the sundering destroyed much, a lot of the wards and magical reservoirs remain active to this day. It is my job to reshape and draw upon the lingering magic here so that it may assist us.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41460; set @magic_number = 61483;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'While we could only bring few things from Eldre\'thalas, we never lost our magic. Conjuration has allowed us to create many items, primarily food and supplies. My services are in high demand and I do what I must for my people.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- NPC Cassie Copperlight change subname to <Aspiring Tinkerer>, add quest flags.
update creature_template set subname = 'Aspiring Tinkerer', npc_flags = 19 where entry = 61438;
-- NPC Bimock Sparkbrake remove the following item from his vendor list : Portable Wormhole Generator: Orgrimmar (entry 51313).
delete from npc_vendor where entry = 61439 and item in(83511,51313);
-- Add this item as a quest reward to the following quest 'Removing Leper Leadership' (entry 40857), the player should be able to pick from the two rewards.
-- replace into item_template values
 -- ('61387', '4', '2', 'Backup Tinkering Trousers', '', '28431', '2', '0', '1', '1144', '286', '7', '-1', '-1', '14',
 -- '', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '1', '5', '1',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '58', '0', '0', '0',
 -- '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 -- '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 -- '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '45', '0', '0', '0', '0', '21', '0', '0', '0',
 -- '0', '1', );
-- Give entry 61474 the following gossip for Alliance players only: "I have nothing to say to you. Begone from my sight."
-- 30000: Target Is Race (Orc, Undead, Tauren, Troll, Goblin).
replace INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (30000, 14, 434, 0, 0, 0, 0);
-- 30001: Target Is Race (Human, Dwarf, Night Elf, Gnome, High Elf).
replace INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (30001, 14, 589, 0, 0, 0, 0);

update gossip_menu set condition_id = 30000 where entry = 41457 and text_id = 61474;
replace into gossip_menu (entry, text_id, condition_id) VALUES (41457, 30111, '30001'); 
replace into broadcast_text (entry, Male_Text) values (30111, 'I have nothing to say to you. Begone from my sight.');
replace into npc_text (ID, BroadcastTextID0) values (30111, 30111);

-- Give entry 61475 the following gossip for Horde players only: "I do not believe we should associate. I cordially ask you to refrain from speaking to me again." 
update gossip_menu set condition_id = 30001 where entry = 41458 and text_id = 61475;
replace into gossip_menu (entry, text_id, condition_id) VALUES (41458, 30112, '30000'); 
replace into broadcast_text (entry, Male_Text) values (30112, 'I do not believe we should associate. I cordially ask you to refrain from speaking to me again.');
replace into npc_text (ID, BroadcastTextID0) values (30112, 30112);
