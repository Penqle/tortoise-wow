-- add the following greeting text to https://database.turtle-wow.org/?npc=60917.
set @gossip_menu_id = 41415; set @magic_number = 60917;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'My kingdom has crumbled to dust, my subjects long gone, and my memories fading. But yet, I remain here, a haunting reminder of the greatness that once was. What brings you to my forgotten realm?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- https://database.turtle-wow.org/?quest=40565 deserter shouldn't have the 's.
update quest_template set details = 'It does appear that the Deserter are behind the burning of the inn. If there is ever to be justice, we must stop them from continually dragging more and more of our most loyal into their ranks.$B$BThere shall be no quarter, they are wanted and we shall dole out justice, for all of the lives lost. For the deceit caused.$B$BDirectly to the west of Theramore, to the north eastern edge of the Quagmire is the Deserter\'s Hideout, it is there that they gain their strength.$B$BFind Sellick Voss, the new leader of the camp, slay him, and bring his medallion to me as proof of the deed.' where entry = 40565;
-- Remove https://database.turtle-wow.org/?item=10605 from the loottables of bosses. Add https://database.turtle-wow.org/?item=16045 in its place. 
update creature_loot_template set item = 16045 where item = 10605 and entry in (14889,10184,6109,14888,14890,14887,11502,11583,50112,16184,14889,14887,14890,14888,11583,11502,12397);
-- https://database.turtle-wow.org/?item=81315#dropped-by should be probably dropped by Sneed, not Edwin.
delete from creature_loot_template where item = 81315 and entry = 639;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(643, 81315, -100, 6, 1, 1, 0);
-- Make https://database.turtle-wow.org/?item=51217 drop from with 100% chance, add them to separate loot group: npc=5709
update creature_loot_template set groupid = 2 where entry = 5709 and item = 10454;
-- make https://database.turtle-wow.org/?item=51217 drop from with 5% chance, add them to separate loot group:
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(8580, 51217, 5, 9, 1, 1, 0),
(92110, 51217, 5, 9, 1, 1, 0),
(7358, 51217, 5, 9, 1, 1, 0),
(2748, 51217, 5, 9, 1, 1, 0),
(12201, 51217, 5, 9, 1, 1, 0),
(7267, 51217, 5, 9, 1, 1, 0),
(8443, 51217, 5, 9, 1, 1, 0),
(5710, 51217, 5, 9, 1, 1, 0),
(5721, 51217, 5, 9, 1, 1, 0),
(5720, 51217, 5, 9, 1, 1, 0),
(5722, 51217, 5, 9, 1, 1, 0),
(60735, 51217, 5, 9, 1, 1, 0),
(60736, 51217, 5, 9, 1, 1, 0),
(60734, 51217, 5, 9, 1, 1, 0),
(9025, 51217, 5, 9, 1, 1, 0),
(9018, 51217, 5, 9, 1, 1, 0),
(9031, 51217, 5, 9, 1, 1, 0),
(9029, 51217, 5, 9, 1, 1, 0),
(9027, 51217, 5, 9, 1, 1, 0),
(9028, 51217, 5, 9, 1, 1, 0),
(9032, 51217, 5, 9, 1, 1, 0),
(9030, 51217, 5, 9, 1, 1, 0),
(16059, 51217, 5, 9, 1, 1, 0),
(9319, 51217, 5, 9, 1, 1, 0),
(9056, 51217, 5, 9, 1, 1, 0),
(9017, 51217, 5, 9, 1, 1, 0),
(9016, 51217, 5, 9, 1, 1, 0),
(9033, 51217, 5, 9, 1, 1, 0),
(8983, 51217, 5, 9, 1, 1, 0),
(9156, 51217, 5, 9, 1, 1, 0),
(9938, 51217, 5, 9, 1, 1, 0),
(8929, 51217, 5, 9, 1, 1, 0),
(11490, 51217, 5, 9, 1, 1, 0),
(13280, 51217, 5, 9, 1, 1, 0),
(14327, 51217, 5, 9, 1, 1, 0),
(16097, 51217, 5, 9, 1, 1, 0),
(11489, 51217, 5, 9, 1, 1, 0),
(11488, 51217, 5, 9, 1, 1, 0),
(11487, 51217, 5, 9, 1, 1, 0),
(11496, 51217, 5, 9, 1, 1, 0),
(14326, 51217, 5, 9, 1, 1, 0),
(14338, 51217, 5, 9, 1, 1, 0),
(14323, 51217, 5, 9, 1, 1, 0),
(14325, 51217, 5, 9, 1, 1, 0),
(14324, 51217, 5, 9, 1, 1, 0),
(10506, 51217, 5, 9, 1, 1, 0),
(10503, 51217, 5, 9, 1, 1, 0),
(11622, 51217, 5, 9, 1, 1, 0),
(10433, 51217, 5, 9, 1, 1, 0),
(10432, 51217, 5, 9, 1, 1, 0),
(10508, 51217, 5, 9, 1, 1, 0),
(10505, 51217, 5, 9, 1, 1, 0),
(11261, 51217, 5, 9, 1, 1, 0),
(10901, 51217, 5, 9, 1, 1, 0),
(10507, 51217, 5, 9, 1, 1, 0),
(10504, 51217, 5, 9, 1, 1, 0),
(10502, 51217, 5, 9, 1, 1, 0),
(10516, 51217, 5, 9, 1, 1, 0),
(10808, 51217, 5, 9, 1, 1, 0),
(11032, 51217, 5, 9, 1, 1, 0),
(10997, 51217, 5, 9, 1, 1, 0),
(10811, 51217, 5, 9, 1, 1, 0),
(10437, 51217, 5, 9, 1, 1, 0),
(10438, 51217, 5, 9, 1, 1, 0),
(10435, 51217, 5, 9, 1, 1, 0),
(10436, 51217, 5, 9, 1, 1, 0),
(10439, 51217, 5, 9, 1, 1, 0),
(9816, 51217, 5, 9, 1, 1, 0),
(10264, 51217, 5, 9, 1, 1, 0),
(10429, 51217, 5, 9, 1, 1, 0),
(10339, 51217, 5, 9, 1, 1, 0),
(10430, 51217, 5, 9, 1, 1, 0),
(16042, 51217, 5, 9, 1, 1, 0),
(9196, 51217, 5, 9, 1, 1, 0),
(9236, 51217, 5, 9, 1, 1, 0),
(9237, 51217, 5, 9, 1, 1, 0),
(10596, 51217, 5, 9, 1, 1, 0),
(10584, 51217, 5, 9, 1, 1, 0),
(9736, 51217, 5, 9, 1, 1, 0),
(10220, 51217, 5, 9, 1, 1, 0),
(10268, 51217, 5, 9, 1, 1, 0),
(91920, 51217, 5, 9, 1, 1, 0),
(91929, 51217, 5, 9, 1, 1, 0),
(91917, 51217, 5, 9, 1, 1, 0),
(92935, 51217, 5, 9, 1, 1, 0),
(91916, 51217, 5, 9, 1, 1, 0),
(91919, 51217, 5, 9, 1, 1, 0),
(80853, 51217, 5, 9, 1, 1, 0),
(80852, 51217, 5, 9, 1, 1, 0),
(80850, 51217, 5, 9, 1, 1, 0),
(80854, 51217, 5, 9, 1, 1, 0),
(80851, 51217, 5, 9, 1, 1, 0);
-- Make https://database.turtle-wow.org/?item=51217 drop from with 1% chance, add them to separate loot group:
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(92107, 51217, 1, 9, 1, 1, 0),
(92109, 51217, 1, 9, 1, 1, 0),
(92108, 51217, 1, 9, 1, 1, 0),
(92111, 51217, 1, 9, 1, 1, 0),
(3983, 51217, 1, 9, 1, 1, 0),
(4543, 51217, 1, 9, 1, 1, 0),
(3974, 51217, 1, 9, 1, 1, 0),
(6487, 51217, 1, 9, 1, 1, 0),
(3975, 51217, 1, 9, 1, 1, 0),
(3976, 51217, 1, 9, 1, 1, 0),
(3977, 51217, 1, 9, 1, 1, 0),
(7355, 51217, 1, 9, 1, 1, 0),
(7356, 51217, 1, 9, 1, 1, 0),
(7357, 51217, 1, 9, 1, 1, 0),
(8567, 51217, 1, 9, 1, 1, 0),
(11519, 51217, 1, 9, 1, 1, 0),
(3654, 51217, 1, 9, 1, 1, 0),
(639, 51217, 1, 9, 1, 1, 0),
(4275, 51217, 1, 9, 1, 1, 0),
(4829, 51217, 1, 9, 1, 1, 0),
(1716, 51217, 1, 9, 1, 1, 0),
(7800, 51217, 1, 9, 1, 1, 0),
(4421, 51217, 1, 9, 1, 1, 0),
(7228, 51217, 1, 9, 1, 1, 0),
(4854, 51217, 1, 9, 1, 1, 0),
(12236, 51217, 1, 9, 1, 1, 0),
(12225, 51217, 1, 9, 1, 1, 0),
(8127, 51217, 1, 9, 1, 1, 0),
(7271, 51217, 1, 9, 1, 1, 0),
(7275, 51217, 1, 9, 1, 1, 0),
(7273, 51217, 1, 9, 1, 1, 0);
-- https://database.turtle-wow.org/?npc=60468 has no loot. Add appropriate level water elemental loot.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 3395, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 3914, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 4500, 0.1, 0, 1, 1, 109);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 4791, 57.129, 0, 1, 5, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 5758, 0.0973, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7070, 8.4185, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7079, 7.8345, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7080, 2.9197, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7909, 0.16, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7910, 0.16, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7989, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7990, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 7993, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 8389, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 8390, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 9295, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 9298, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 10315, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 10320, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 10620, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 11208, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 11225, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12365, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12682, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12683, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12684, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12689, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12691, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12693, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12695, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12697, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 12704, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 13463, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 13466, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 13487, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 13490, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 13492, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14466, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14467, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14470, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14474, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14478, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14479, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14484, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14489, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14491, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14492, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14496, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14498, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 14499, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 15731, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 15737, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 15743, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 16043, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 16044, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 16215, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 16218, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 16220, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 16245, 0.02, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 20400, 0.1, 0, 1, 1, 108);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 22527, 55.1338, 0, 1, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 24028, 0.01, 0, -24028, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 24032, 0.01, 0, -24032, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30045, 0.5, 0, -30045, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30046, 0.5, 0, -30046, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30047, 0.01, 0, -30047, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30080, 0.5, 0, -30080, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30081, 0.5, 0, -30081, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30082, 0.0025, 0, -30082, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30088, 0.01, 0, -30088, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30103, 0.0025, 0, -30103, 1, 0);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (60468, 30106, 0.0025, 10, -30106, 1, 0);
