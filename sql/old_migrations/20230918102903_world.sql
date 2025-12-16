-- NPC Krilee Stormshot (Entry 61445), add vendor flags, and add basic guns to their sell list, they should also be able to repair.
update creature_template set npc_flags = 16391 where entry = 61445;
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 2509, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 2511, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 2516, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 2519, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 3023, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 3024, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 3033, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 5441, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61445, 0, 11284, 0, 0, 0, 0);
-- Torkspark Boomwrench <Innkeeper>, display ID 3457, faction 64, level 25, humanoid, scale 1, gossip/innkeeper flags, gossip text : "Welcome to the Gnomeregan Reclamation Facility! If you are looking for refuge from the cold snow, there is no better place." ((IS A INNKEEPER)).
REPLACE INTO creature_template VALUES
(61644, 3457, 0, 0, 0, 0, 'orkspark Boomwrench', 'Innkeeper', 0, 25, 25, 1002, 1002, 0, 0, 1200, 64, 129, 1, 1.14286, 1, 18, 5, 0, 0, 1, 42, 53, 0, 122, 1, 2000, 2000, 1, 37376, 0, 0, 0, 0, 0, 0, 45.144, 62.073, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41543; set @magic_number = 61644;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Welcome to the Gnomeregan Reclamation Facility! If you are looking for refuge from the cold snow, there is no better place.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

-- Item "Jadestone Protector" fix: class, display, subclass.
update item_template set display_id = 66448, class = 4, subclass = 6 where entry = 61526; -- Jadestone Protector.
-- Finally caught the issue, stupid vanilla spaghetti.
update spell_template SET effectMiscValue2 = 127 WHERE entry = 642; -- Divine Shield Rank 1.
update spell_template SET effectMiscValue2 = 127 WHERE entry = 1020; -- Divine Shield Rank 2.
update spell_template SET RecoveryTime = 400000 WHERE entry = 45604; -- Flourish.
