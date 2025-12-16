-- name = 'Sirandil Swiftsilver', subname = 'Druid of the Claw', level = 50, display_id1 =6230, equipment_id =; Repair NPC&Vendor. Copy vendor menu from https://database.turtle-wow.org/?npc=3367
-- name = 'Ravos Ragepaw', subname = 'Druid of the Talon', level = 50, display_id1 = 2686, equipment_id =;
-- name = 'Delas Dreamwalker', subname = 'Druid of the Wild', level = 50, display_id1 = 13443, equipment_id =; Has the following gossip: “Ishnu-alah, dreamer, and welcome to our concealed enclave. May it provide some respite from the long journey ahead into the Emerald Nightmare.”
-- name = 'Ancient Protector', subname = 'The Emerald Dream', level = 50, display_id1 = 2429, equipment_id; 
-- name = 'Emerald Grovekeeper', subname = 'The Emerald Dream', level = 50, display_id1 = 2423, has gossip: “The Emerald Dream is within our reach, dreamer.”/Copy vendor menu from: https://database.turtle-wow.org/?npc=60705 additionally add this to the table - https://database.turtle-wow.org/?item=21721
-- name = 'Zephyra', subname = 'The Emerald Dream', level = 50, display_id1 = 6757, flight NPC, copy script from the Gryphon in Goldshire
REPLACE INTO creature_template VALUES
(61191, 6230, 0, 0, 0, 0, 'Sirandil Swiftsilver', 'Druid of the Claw', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 16388, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61192, 2686, 0, 0, 0, 0, 'Ravos Ragepaw', 'Druid of the Talon', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61193, 13443, 0, 0, 0, 0, 'Delas Dreamwalker', 'Druid of the Wild', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 1, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61194, 2429, 0, 0, 0, 0, 'Ancient Protector', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61195, 2423, 0, 0, 0, 0, 'Emerald Grovekeeper', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 5, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61196, 6757, 0, 0, 0, 0, 'Zephyra', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

set @gossip_menu_id = 41351; set @magic_number = 61195;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Emerald Dream is within our reach, dreamer.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

set @gossip_menu_id = 41350; set @magic_number = 61193;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ishnu-alah, dreamer, and welcome to our concealed enclave. May it provide some respite from the long journey ahead into the Emerald Nightmare.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Emerald Grovekeeper vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 21721, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2593, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2594, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2595, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2596, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 2723, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 4600, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61195, 8766, 0, 0, 0, 0);
-- Sirandil Swiftsilver vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2320, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2321, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2324, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2325, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2604, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2605, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2678, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2692, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  2928, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 3371, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3372, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3713, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 3777, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4289, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4291, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4340, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4342, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4399, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  4400, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 6217, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6260, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6529, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  6532, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 7005, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  8343, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191,  8925, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 14341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 18256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61191, 50231, 0, 0, 0, 0);
-- Greeting edit for https://database.turtle-wow.org/?npc=80200: Thank the Sunwell you made it here in one piece, $N. We have much to do.
set @gossip_menu_id = 41352; set @magic_number = 80200;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Thank the Sunwell you made it here in one piece, $N. We have much to do.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;
-- Change Sticky Ooze-Tar drop rate from Monstrous Ooze, Crimson Ooze and Black Ooze to 25%.
update creature_loot_template set chanceorquestchance = 25 where item = 81400 and entry in (1033,1031,1032);
-- Make Hawk's Vigil chain an actual chain.
UPDATE quest_template SET NextQuestInChain = 55216 WHERE entry = 55215;
UPDATE quest_template SET NextQuestInChain = 55217 WHERE entry = 55216;
UPDATE quest_template SET NextQuestInChain = 55218 WHERE entry = 55217;
UPDATE quest_template SET NextQuestInChain = 55219 WHERE entry = 55218;
UPDATE quest_template SET NextQuestInChain = 55220 WHERE entry = 55219;
UPDATE quest_template SET NextQuestInChain = 55221 WHERE entry = 55220;
UPDATE quest_template SET NextQuestInChain = 55222 WHERE entry = 55221;
UPDATE quest_template SET NextQuestInChain = 55223 WHERE entry = 55222;
UPDATE quest_template SET NextQuestInChain = 55224 WHERE entry = 55223;
UPDATE quest_template SET NextQuestInChain = 55225 WHERE entry = 55224;
-- Set respawn time of https://database.turtle-wow.org/?object=1000510 to instant.
update gameobject set spawntimesecsmin = 1, spawntimesecsmax = 1 where ID = 1000510;
-- Set respawn time of https://database.turtle-wow.org/?object=142076 to instant.
update gameobject set spawntimesecsmin = 1, spawntimesecsmax = 1 where ID = 142076;
-- Set respawn time of https://database.turtle-wow.org/?object=1000511 to instant.
update gameobject set spawntimesecsmin = 1, spawntimesecsmax = 1 where ID = 1000511;
-- New NPC Deviate Coiler Hatchling.
REPLACE INTO creature_template VALUES
(61197, 1742, 0, 0, 0, 0, 'Deviate Coiler Hatchling', NULL, 0, 11, 11, 666, 666, 0, 0, 538, 14, 0, 1, 1.14286, 0.7, 20, 5, 0, 1, 1, 52, 68, 0, 64, 1, 2000, 2000, 1, 0, 0, 27, 0, 0, 0, 0, 17.732, 24.3815, 100, 1, 1, 3630, 0, 3630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES (61197, 24844, 0, 0, 0);
-- Quest fix 40368 (RMJ).
UPDATE quest_template SET MinLevel = 20, QuestLevel = 22, RewXP = 950 WHERE entry = 40368;
-- Nerf to Ring of Authority, non-unique >> unique, Armor from 350 to 100 (RMJ).
UPDATE item_template SET Armor = 100, Max_count = 1 WHERE entry = 50189;
-- Set respawn timers to newly-spawned Leprous Workers in Blacksand Oil Fields (RMJ).
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE guid BETWEEN 2574448 AND 2574455;
-- Swap completely ridiculous money rewards for Silvermoon daily quests (RMJ).
UPDATE quest_template SET RewOrReqMoney = 50 WHERE entry = 80252;
UPDATE quest_template SET RewOrReqMoney = 500 WHERE entry = 80258;
UPDATE quest_template SET RewOrReqMoney = 2000 WHERE entry = 80253;
UPDATE quest_template SET RewOrReqMoney = 5000 WHERE entry = 80254;
-- Silvermoon daily quest fixes (RMJ).
UPDATE quest_template SET PrevQuestId = 80256 WHERE entry IN (80252, 80253, 80258);
UPDATE quest_template SET RewMoneyMaxLevel = 0, RewXP = 0 WHERE entry = 80252;
-- Fix for https://database.turtle-wow.org/?quest=80391 (RMJ).
UPDATE quest_template SET RewXP = 1450 WHERE entry = 80391;
-- No reason for this not to chain in from the same NPC. Same requirements, same NPC (RMJ).
UPDATE quest_template SET NextQuestInChain = 3519 WHERE entry = 4495;
UPDATE quest_template SET NextQuestInChain = 2498 WHERE entry = 923;
-- Greeting edit for https://database.turtle-wow.org/?npc=60474.
update broadcast_text set male_text = 'Welcome to Darnassus, crown jewel of Teldrassil.$B$BThis city serves as the heart and soul of the Kaldorei, and for good reason. Its grace and beauty mirrors that of our culture, our legacy.' where entry = 60474;
-- Turn these quests into chains. 40201 to 40203, 40204 to 40205 (RMJ).
UPDATE quest_template SET NextQuestInChain = 40202 WHERE entry = 40201;
UPDATE quest_template SET NextQuestInChain = 40203 WHERE entry = 40202;
UPDATE quest_template SET NextQuestInChain = 40205 WHERE entry = 40204;
-- Edits for https://database.turtle-wow.org/?quest=60143 (RMJ).
UPDATE quest_template SET Details = 'Have you ever stood at the edge of Teldrassil and looked out over the Veiled Sea? It\'s a magnificent sight, $N. I cannot recommend enough that you experience it at least once.$B$BI often travel with my sewing kit to the waterfalls near Wellspring Lake, right as they pour over the side of the trunk. It is a wonderfully serene spot where I may work in peace. The last time I was there, however, I was attacked by maddened timberlings and fled without my kit!$B$BThose tools have been with me for as long as I can remember, and I can\'t bear the thought of them tumbling over into the sea, lost forever. Would you kindly recover my kit for me, $N?', OfferRewardText = 'Oh, you\'ve found it! You have my eternal gratitude, $N!$B$BWill a well-tailored shirt suffice as repayment for your efforts? I stock them in a number of different colors to suit any taste. Please, take your pick. If a shirt is not to your liking, perhaps I could interest you in some raw material for your own purposes?', RewXP = 750, RewMoneyMaxLevel = 480, RewRepFaction1 = 69, RewRepValue1 = 100 WHERE entry = 60143;
-- Slight edit to strange naming for Mountain Berry assets (RMJ).
UPDATE item_template SET Name = 'Mountain Berry Bush Seeds' WHERE entry = 51707;
UPDATE gameobject_template SET Name = 'Mountain Berry Bush' WHERE entry = 1000371;
-- Duty to the light quest text error #2774.
update quest_template set OfferRewardText = '<You explain why Brother WIlhelm sent you. Eldrin\'s angry, defensive posture softens as you explain, and eventually you see the shine of tears in his eyes.>$B$BMiles away and as busy serving the Light as he is, yet he still finds time to help us. It pains me to burden him so yet again. He\'s already done so much for us, you see.$B$BThings\'ve been hard this year, so I\'ve been goin\' without so Sara and Eric don\'t have to, and... Well, thank you. Bless Brother Wilhelm, and bless you, $N.$B$BHere. I know it\'s not much, but Sara makes them for the locals. Maybe you can find some use in it. Take it! It\'s the least we can do in return for your selfless deed.' where entry = 60141;
-- Set Uneven Dirt respawn time to 5 seconds https://database.turtle-wow.org/?object=2010896 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE guid = 5008104;
-- Slight text cleanup and added Darnassus rep bonus to https://database.turtle-wow.org/?quest=40300 (RMJ).
UPDATE quest_template SET Details = 'Hail young $c. Are you by chance destined for the human city of Stormwind? If so, I have a favor to ask.$B$BFishing is a rare choice of occupation among my kinsmen, but one I take a great deal of pleasure in. Truly there is no more relaxing way to pass the time, something we Kaldorei are in no short supply of. I often gather clams from the banks I fish along, containing pearls as pure white as Elune herself on the darkest night.$B$BIt is from these pearls I have put together a necklace for Shailiea, the woman I have been pining for and courting for many decades now. Please, deliver to her this necklace and tell her it is from her secret admirer. Let me quickly wrap this in a piece of cloth.$B$BThe quickest way to reach Stormwind would be from the south dock in Auberdine. Once in Stormwind, you should be able to find Shailliea residing in the Park.', RequestItemsText = 'Elune be with you, $c. What brings you to me?', OfferRewardText = 'What is this? From a secret admirer?$B$BOh, silly Androl. He hasn''t realized that I have known for years. I wish he would be more forward about his affections. Nonetheless, I thank you, $N. Please take this coin for your troubles.', RewRepFaction1 = 69, RewRepValue1 = 50 WHERE entry = 40300;
-- As per @Dragunovi's request, add 30s cooldown to https://database.turtle-wow.org/?item=60099 (RMJ).
UPDATE item_template SET spellcooldown_1 = 30000 WHERE entry = 60099;
-- As per @Gheor's request, update displayIDs of following NPCs (RMJ).
UPDATE creature_template SET display_id1 = 13409 WHERE entry = 61193;
UPDATE creature_template SET display_id1 = 2432 WHERE entry = 61195;
-- Text cleanup for https://database.turtle-wow.org/?quest=40201 (RMJ).
UPDATE quest_template SET Details = 'I spent much time among the keepers on Stonetalon Peak. It was a time of tranquility, to find true balance of self and harmony with nature. In my time there, I learned much of how best to wield the power of the land to conserve and protect nature. It is only when I began my work here within Teldrassil that my efforts began to falter, and there have been... complications.$B$BIt would appear the land itself holds some taint that I cannot grasp. I have struggled in my efforts to bend nature''s will, straining myself more than ever before, and one of my Protectors has withered away and broken its bond with me.$B$BI would ask you to speak with Tasala Whitefeather, the one who once lead the harpies within the region, and ask her if she has news of the treant. Do not worry; she is free from the evil that grips her kind.$B$BYou should find her just down the hill to the north. Follow the road and you will see her near the cliff''s edge.', RequestItemsText = 'It is not often I have visitors. What can I assist you with?', OfferRewardText = 'Yes, Malos and I have spoken on occasion. He has been studying the corruption of nature for some time now, and has even offered his assistance in understanding and, maybe someday, reversing the corruption of my kind. He is a good and kind soul, and if he needs my help then I shall offer what I can.' WHERE entry = 40201;
-- Greeting edit for https://database.turtle-wow.org/?npc=60465.
update broadcast_text set male_text = 'What brings a young $r all the way up here? I can only assume you seek my counsel.' where entry = 60465;
-- As per @Shang's request, update name of https://database.turtle-wow.org/?npc=80244 (RMJ).
UPDATE creature_template SET name = 'Andalideth Suncaller' WHERE entry = 80244;
-- Greeting edit for Aerla Goldenmoon https://database.turtle-wow.org/?npc=60621.
update broadcast_text set male_text = 'We have many allies across the Great Sea, located far to the east within the Eastern Kingdoms. The boat that arrives at this dock leads to the harbor of the human city of Stormwind, the heart of the Alliance.$B$BIf the boat is not here, have patience. It shall arrive shortly.' where entry = 60621;
-- Greeting edit for Gallen Grahamsift https://database.turtle-wow.org/?npc=60549.
update broadcast_text set male_text = 'Greetings traveler. If you are looking to reach our ancient homeland of Kalimdor to the west, you will need passage by boat. One of our ships from Auberdine makes regular stops here in Stormwind.$B$BDo not fret if the boat is not here; it will arrive in due time.' where entry = 60549;
-- As per @Woji 🇵🇱's request, add 20 silver sell price to all 3 rewards of https://database.turtle-wow.org/?quest=55225 (RMJ).
UPDATE item_template SET sell_price = 2000 WHERE entry IN (81416, 81417, 81418);
-- As per @Woji 🇵🇱's request, change respawn time of Refined Gem Shipment to 5 seconds https://database.turtle-wow.org/?object=2010843 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 5000113;

delete from creature_template where entry between 61191 and 61197;
REPLACE INTO creature_template VALUES
(61219, 6230, 0, 0, 0, 0, 'Sirandil Swiftsilver', 'Druid of the Claw', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 16388, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61213, 2686, 0, 0, 0, 0, 'Ravos Ragepaw', 'Druid of the Talon', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),

(61214, 13409, 0, 0, 0, 0, 'Delas Dreamwalker', 'Druid of the Wild', 41350, 50, 50, 2990, 2990, 0, 0, 2958, 290, 1, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),

(61215, 2429, 0, 0, 0, 0, 'Ancient Protector', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61216, 2432, 0, 0, 0, 0, 'Emerald Grovekeeper', 'The Emerald Dream', 41351, 50, 50, 2990, 2990, 0, 0, 2958, 290, 5, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(61217, 6757, 0, 0, 0, 0, 'Zephyra', 'The Emerald Dream', 0, 50, 50, 2990, 2990, 0, 0, 2958, 290, 0, 1, 1.14286, 0, 20, 5, 40, 0, 1, 96, 125, 0, 248, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 70.664, 97.163, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),

(61218, 1742, 0, 0, 0, 0, 'Deviate Coiler Hatchling', NULL, 0, 11, 11, 666, 666, 0, 0, 538, 14, 0, 1, 1.14286, 0.7, 20, 5, 0, 1, 1, 52, 68, 0, 64, 1, 2000, 2000, 1, 0, 0, 27, 0, 0, 0, 0, 17.732, 24.3815, 100, 1, 1, 3630, 0, 3630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');
delete from pet_spell_data where entry = 61197;
REPLACE INTO `pet_spell_data` (`entry`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`) VALUES (61218, 24844, 0, 0, 0);

delete from gossip_menu where entry = 41351;
delete from broadcast_text where entry = 61195;
delete from npc_text where id = 61195;
set @gossip_menu_id = 41351; set @magic_number = 61216;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'The Emerald Dream is within our reach, dreamer.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from gossip_menu where entry = 41350;
delete from broadcast_text where entry = 61193;
delete from npc_text where id = 61193;
set @gossip_menu_id = 41350; set @magic_number = 61214;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Ishnu-alah, dreamer, and welcome to our concealed enclave. May it provide some respite from the long journey ahead into the Emerald Nightmare.');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id where entry = @magic_number;

delete from npc_vendor where entry in (61191,61195);
-- Emerald Grovekeeper vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 21721, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 159, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1179, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1205, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1645, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 1708, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2593, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2594, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2595, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2596, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 2723, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 4600, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61216, 8766, 0, 0, 0, 0);
-- Sirandil Swiftsilver vendor list.
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2320, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2321, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2324, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2325, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2604, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2605, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2678, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2692, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2880, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 2901, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  2928, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 3371, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3372, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3466, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3713, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 3777, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  3857, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4289, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4291, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4340, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4342, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4399, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  4400, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 5956, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 6183, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 6217, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 6256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6260, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6529, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6530, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  6532, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 7005, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  8343, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219,  8925, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 14341, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 18256, 0, 0, 0, 0);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `itemflags`, `condition_id`) VALUES (61219, 50231, 0, 0, 0, 0);
-- NPC with entryID 61217 - please make this NPC a brief flying mount, just like the gryphon in Goldshire or the wyvern in Razor Hill.
set @gossip_menu_id = 41353; set @magic_number = 61217;
replace into gossip_menu (entry, text_id, condition_id) VALUES (@gossip_menu_id, @magic_number, '0'); 
replace into broadcast_text (entry, Male_Text) values (@magic_number, 'Yauur?');
replace into npc_text (ID, BroadcastTextID0) values (@magic_number, @magic_number);
update creature_template set gossip_menu_id = @gossip_menu_id, npc_flags = 1, script_name = 'npc_flying_mount' where entry = @magic_number;
-- Makes Corruption Bind on Equip, there's currently no special occasion that mandates that it stays a BoP, its not even an epic.
update item_template set bonding = 2 where entry = 12782; -- Corruption
-- BoP Crafteds requiring their skill to wear to avoid gaming the system
update item_template set required_skill = 197, required_skill_rank = 300 where entry = 14154; -- Truefaith Vestments
update item_template set required_skill = 197, required_skill_rank = 300 where entry = 14153; -- Robe of the Void
update item_template set required_skill = 197, required_skill_rank = 300 where entry = 14152; -- Robe of the Archmage
-- For quest 299 adjust respawn time of object 331, 333, 334, 35252 to 5 seconds (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid BETWEEN 15208 AND 15211;
-- Set respawn time of Sealed Documents Container to 5 seconds object=2010902 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 5008158;
-- Set respawn time of Sealed Documents Crate to 5 seconds object=1000510 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 4011321;
-- Quest=9025 does not correctly chain off of quest=9024 (RMJ).
UPDATE quest_template SET NextQuestInChain = 9025 WHERE entry = 9024;
-- Text edits for https://database.turtle-wow.org/?quest=40549 (RMJ).
UPDATE quest_template SET
Details = 'So, $N, the footprints were definitely quillboar hooves. I followed them well into the Barrens, thinking they would lead me to the Kraul. I was wrong. The raiding party actually stopped just outside Bael Modan, which makes your job easier.$B$BVenturing into the Kraul... The mere thought makes me shudder.$B$BBack to the topic. The camp is north of Bael Modan, close to the road. You should have no trouble finding it. Try to sneak in, or kill them all. Doesn''t matter to me. What is important - find some evidence, maybe some items that could''ve been taken from the inn.$B$BAnd to adress the elephant in the room: the orc. He said that he is here to investigate the inn too. I''m keeping an eye on him- I don''t trust him. I feel like the Horde is trying to cover up something. Good luck.'
WHERE entry = 40549;
-- Add item level and disenchant ID to https://database.turtle-wow.org/?item=81341 (RMJ).
UPDATE item_template SET item_level = 29,disenchant_id = 7 WHERE entry = 81341;
-- Text edits for https://database.turtle-wow.org/?quest=40553 (RMJ).
UPDATE quest_template SET
Details = 'Go and report our findings to Captain Vimes. I will stay here for some time, to watch over the inn. I can''t leave the orc alone with the evidence. I still don''t trust him.'
WHERE entry = 40553;
-- Text edits for https://database.turtle-wow.org/?quest=40557 (RMJ).
UPDATE quest_template SET
Details = 'Lieutenant Caldwell still hasn''t returned from his mission to find Paval Reethe. I fear the worst. But, alas, we can only wait.$B$BWhen it comes to our investigation. Well, another dead end.$B$BHowever, Falgran reported that the horde has been causing some trouble. Please, assist him with this matter. He is where you met him before.'
WHERE entry = 40557;
-- Fix quest requirement of https://database.turtle-wow.org/?quest=40579 and add proper chaining behavior (RMJ).
UPDATE quest_template SET PrevQuestId = 40578 WHERE entry = 40579;
UPDATE quest_template SET NextQuestInChain = 40579 WHERE entry = 40578;
-- Text edits for https://database.turtle-wow.org/?quest=40558 (RMJ).
UPDATE quest_template SET
Details = 'You remember the orc, right? He wants us to talk. He knows something that we don''t.$B$B$N, please remain calm, and try not to provoke them. I know it may be difficult, given our history, but they are much like you and me.$B$BJust perhaps a bit more green.'
WHERE entry = 40558;
-- Text edits for https://database.turtle-wow.org/?quest=40573 (RMJ).
UPDATE quest_template SET
Details = 'Krog''s suspicions were founded, he was right to believe the quilboar may have had something to do with the burning of the inn.$B$BBefore you arrived, so did I. I followed a track, or should I say smell towards a pack of quilboar, they donned the colour of war and were headed towards the Razorfen Kraul, their main den.$B$BLuckily for us, they have stopped in their trails close to it, conveniently near the road.$B$BYour task will be to extract information from them, if any. Although I highly trust my tracking skills, I find my brute force lacking. Judge me if you must, but see the deed done.$B$BAnd the human... He is here to investigate, too. Better leave him alone, for now.'
WHERE entry = 40573;
-- Text edits for https://database.turtle-wow.org/?quest=40582 (RMJ).
UPDATE quest_template SET
RequestItemsText = 'I have spoken with the Alliance representative and they have agreed to exchange information, though I fear the news we must deliver.$B$BI hope your diplomacy is better than mine. It''s customary to speak in their tongue if you are to call the meeting, but we''ve only learned some of their language in internment camps. Bah!$B$BNow that I think about it, you don''t talk much do you? We''re doomed.',
OfferRewardText = 'I''m afraid that the human won''t act rationally when we tell them about the death of their comrades. They will think of us as savages.'
WHERE entry = 40582;
-- Change respawn time of MacGrann's Meat Locker to 5 seconds https://database.turtle-wow.org/?object=272 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 10027;
-- Bloodtalon Scythemaw and Venomtail Scorpid should not have a 25 seconds respawntimer, please set it to 5 minutes.
update creature set spawntimesecsmin = 300,spawntimesecsmax = 300 WHERE id in (3123,3127);
-- https://database.turtle-wow.org/?npc=80242 Ashylah Starcaller should be changed to faction 69 (Darnassus).
update creature_template set faction = 69 where entry = 80242;
-- https://database.turtle-wow.org/?npc=60712 and https://database.turtle-wow.org/?npc=60734 are Mechanical and should be immune to Bleed effects.
update creature_template set mechanic_immune_mask = 16384 where entry in (60712,60734);
-- https://database.turtle-wow.org/?quest=40662 should be updated with the following text.
UPDATE quest_template SET
Details = 'Who would suspect a Kul Tiran sailor to show so much affection? Those that many call crass, blunt, and overly loud at that.$B$BHe has surpised me, in a rather nice way; to be remembered after such a long time really is a compliment.$B$BHere, I prepared a letter for him, and -just- for him. Do not think to pry it open, my magic will know if you do.$B$B<She gives a wicked stare, and lets out a laugh to ease her feigned threat.>$B$BTake it to the sailor, and let him know his actions are appreciated.'
WHERE entry = 40662;
-- https://database.turtle-wow.org/?quest=40663 should be updated with the following text (RMJ).
UPDATE quest_template SET
Details = 'All this time stationed around and yet we hardly have any ale to tide over the boredom.$B$BSay mainlander, you must have freedom to walk the streets of the city without a job looming over your head, how about a favor?$B$BWe are currently busy with tasks during the day, but we could use some loosening up during the night, if you catch my drift.$B$BHead into the city, it should be ripe with ale, find me 3 Flasks of Port, that should do quite well.',
Objectives = 'Find 3 Flasks of Port for Sailor Valia at the Kul Tiran Embassy in Stormwind Harbor.',
RequestItemsText = 'So, you find the port...?$B$BLike the ale.',
OfferRewardText = 'Ahh, this is the good stuff.$B$BWell, from one sailor to, whatever you are mainlander, thanks a bunch.'
WHERE entry = 40663;
-- Change display ID of item 60859 to 26771.
update item_template set display_id = 26771 where entry = 60859; 
-- Fix item names for DB display (RMJ).
UPDATE item_template SET Name = 'Ranger''s Letter' WHERE entry = 80226;
UPDATE item_template SET Name = 'Magister''s Letter' WHERE entry = 80227;
UPDATE item_template SET Name = 'Paladin''s Letter' WHERE entry = 80228;
UPDATE item_template SET Name = 'Priest''s Letter' WHERE entry = 80229;
UPDATE item_template SET Name = 'Swordsman''s Letter' WHERE entry = 80231;
-- Text edit for https://database.turtle-wow.org/?quest=40564 (RMJ).
UPDATE quest_template SET OfferRewardText = 'What did you learn, soldier?' WHERE entry = 40564;
-- Text edit for https://database.turtle-wow.org/?quest=60110 (RMJ).
UPDATE quest_template SET
Objectives = 'Kill Githyiss the Vile and collect her Venom Sac, then return to Gilshalan Windwalker.',
OfferRewardText = 'Do not be troubled by what needed be done, $N. Githyiss was aggressive beyond our ability to manage. The reason for this, I do not know, but one I hope to uncover in my research.$B$BHold your head with pride; you have ensured the continued safety of Shadowglen.'
WHERE entry = 60110;
-- Text edit for https://database.turtle-wow.org/?quest=40565 (RMJ).
UPDATE quest_template SET
RequestItemsText = 'Have you found Sellick Voss?'
WHERE entry = 40565;
-- Text edit for https://database.turtle-wow.org/?quest=60143 (RMJ).
UPDATE quest_template SET
OfferRewardText = 'Oh, you''ve found it! You have my eternal gratitude, $N!$B$BWill a well-tailored shirt suffice as compensation for your efforts? I keep a number of different colors in stock to suit any taste. Please, take your pick.$B$BIf a shirt is not to your liking, perhaps I could interest you in some raw material for your own purposes?'
WHERE entry = 60143;
-- Text edit for https://database.turtle-wow.org/?quest=40201 (RMJ).
UPDATE quest_template SET
OfferRewardText = 'Yes, Malos and I have spoken on occasion. He has been studying the corruption of nature for some time now, and has even offered his assistance in understanding and, perhaps someday, reversing the corruption of my kind.$B$BHe is a good and kind soul, and if he needs my help, then I will do whatever is in my power.'
WHERE entry = 40201;
-- Name fix for https://database.turtle-wow.org/?quest=40202 (RMJ).
UPDATE quest_template SET title = 'Tesala''s Word' WHERE entry = 40202;
-- Text fix for https://database.turtle-wow.org/?quest=40203 (RMJ).
UPDATE quest_template SET
Details = 'I fear there is no recourse but to destroy the treant lest it cause harm to our people or the creatures of Teldrassil. From the information Tesala provided, we can safely assume that it will be patrolling the eastern banks of the Wellspring Lake.$B$BSeek the Distorted Treant out, give it a merciful end, and bring back a sample of its roots that I may better understand what possessed it. Exercise caution: a Protector is not likely to go without a fight.$B$BGo quickly now. That treant may hold answers to what lies at the heart of nature''s unrest here in Teldrassil.',
OfferRewardText = '<Malos contemplates the roots you hand him with a look of great concern.>$B$BThese roots appear decayed, as if the treant was already dead by the time you found it. What a horrible fate for a forest protector... No, for any of nature''s creatures. I cannot begin to fathom how this could have happened.$B$BThis is a disturbing revelation indeed, and I am afraid that it raises more questions than answers. My research continues without the breakthrough we had hope for. Nonetheless, you have done both myself and the forests a great service. Please, take one of these items as a token of my gratitude.'
WHERE entry = 40203;
-- Text fix for https://database.turtle-wow.org/?quest=40204 (RMJ).
UPDATE quest_template SET
OfferRewardText = 'Have you come to aid in securing the Darnassus perimeter?$B$BThat is good to hear. We are in need of all the assistance available with the sentinel forces spread so thin. Recent events have strained our resources, and we now defend not only Ashenvale and Darkshore, but our homes here in Teldrassil as well.'
WHERE entry = 40204;
-- Text fix for https://database.turtle-wow.org/?quest=40205 (RMJ).
UPDATE quest_template SET
OfferRewardText = 'You have done a great service to the Kaldorei today, $N. Though I weep for the fate of our former allies, sorrow cannot give way to weakness.$B$BElune guided your hand in defending our people''s lands, and for carrying out her will, you are to be rewarded.'
WHERE entry = 40205;
-- NPC GUID 2567483, 2567482 set respawn time to 10 hrs.
update creature set spawntimesecsmin = 36000, spawntimesecsmax = 36000 where guid in (2567483,2567482);
-- Rew money and rew reputation added for quests 40704 and 40705.
update quest_template set rewmoneymaxlevel = 630, rewrepfaction1 = 470, rewrepvalue1 = 150 where entry in (40704,40705);
-- Fixes for new Alliance Stonetalon quests (RMJ).
UPDATE quest_template SET NextQuestInChain = 40695 WHERE entry = 40694;
UPDATE quest_template SET NextQuestInChain = 40696 WHERE entry = 40695;
UPDATE quest_template SET NextQuestInChain = 40701 WHERE entry = 40700;
-- Rew money added for quests 40608,40694,40695,40696,40700,40701,40702.
update quest_template set rewmoneymaxlevel = 650 where entry in (40608,40694,40695,40696);
update quest_template set rewmoneymaxlevel = 500 where entry in (40700,40701);
update quest_template set rewmoneymaxlevel = 780 where entry = 40702;
-- Item 60976, 60977, 60978 add required level 55.
update item_template set required_level = 55 where entry in (60976,60977,60978);
-- Quest chain fix for new Stonetalon quests (RMJ).
UPDATE quest_template SET NextQuestInChain = 40698 WHERE entry = 40697;
UPDATE quest_template SET NextQuestInChain = 40692 WHERE entry = 40691;
-- Remove redundant requirement from https://database.turtle-wow.org/?quest=40692 (RMJ).
UPDATE quest_template SET ReqCreatureOrGOId1 = 0 WHERE entry = 40692;
-- Fixes for https://database.turtle-wow.org/?quest=40197 (RMJ).
UPDATE quest_template SET
MinLevel = 18,
QuestLevel = 20
WHERE entry = 40197;
-- Fixes for https://database.turtle-wow.org/?quest=40120 (RMJ).
UPDATE quest_template SET
MinLevel = 18,
QuestLevel = 20,
Title = 'Aggressive Wildlife',
Objectives = 'Gather 5 Ghostpaw Pelts from the local Ghostpaw Wolf population and bring them to Ardaen Evermoon in Ashenvale.'
WHERE entry = 40120;
-- Striker's Pauldrons proc update (RMJ).
UPDATE item_template SET spellid_1 = 9415,spellid_2 = 0 WHERE entry = 21367;
-- Change respawn time of Razlik's Tools to 5 seconds https://database.turtle-wow.org/?object=1000250 (RMJ).
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid = 4011315;
-- Change faction of https://database.turtle-wow.org/?npc=80242 to Darnassus (nice job changing it from Silvermoon to Ratchet, guys) (RMJ).
UPDATE creature_template SET faction = 69 WHERE entry = 80242;
-- The fist weapon Willbreaker attaches strangely while sheathed #2821.
update item_template set sheath = 7 where entry = 60410;
-- Quest 40464 and quest 40467 give way too little RewMoneyMaxLevel. Compare to quest=4264.
UPDATE quest_template SET RewMoneyMaxLevel = 37200 WHERE entry in (40464,40467);
-- Npc 80605 should NOT offer quest 80303.
delete from creature_questrelation where id = 80605 and quest = 80303;
-- Add RewMoneyMaxLevel and Darnassus rep to https://database.turtle-wow.org/?quest=40706 and https://database.turtle-wow.org/?quest=40707.
UPDATE quest_template SET RewMoneyMaxLevel = 1867 WHERE entry in (40706,40707);
-- Add money reward at max level to https://database.turtle-wow.org/?quest=40697 and https://database.turtle-wow.org/?quest=40698.
UPDATE quest_template SET RewMoneyMaxLevel = 1200 WHERE entry in (40697,40698);
-- Fix vendor option for https://database.turtle-wow.org/?npc=10857 (Hax).
UPDATE `gossip_menu_option` SET `action_menu_id` = 0, `action_script_id` = 0, `condition_id` = 0 WHERE `menu_id` = 3421 AND `id` = 1;
-- Change the health of: npc=14888, npc=14889, npc=14887 to 832750.
update creature_template set health_min = 832750, health_max = 832750 where entry in (14887,14888,14889);
-- Fix for item 5007. Adds 1 damage reflect to band of thorns, solely for flavor purpose and that's it. (Dragunovi)
update item_template set spellid_1 = 20888, spelltrigger_1 = 1 where entry = 5007; -- Band of Thorns
-- Make https://database.turtle-wow.org/?npc=6508 tamable with the Raptor pet family.
update creature_template set beast_family = 11, type_flags = 1 where entry = 6508;
-- https://database.turtle-wow.org/?quest=1101 shouldnt reward mage eye blunderbuss as an extra reward.
update quest_template set rewitemid1 = 0, rewitemcount1 = 0 where entry = 1101;
-- Replace https://database.turtle-wow.org/?item=51810 with new.
replace into item_template values
 ('51810', '2', '4', 'Gnoll Slammer', '', '19613', '2', '0', '1', '2562', '512', '21', '-1', '-1', '13',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '4', '1', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2200', '0',
 '0', '11', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '2', '3', '0', '0', '45', '0', '0', '0', '0', '1', '0', '0', '0',
 '0', '1', NULL);
-- Parity fix for the following enchant items. Change icon and add a "Use Spell" text similar to other Enchant Formulas. item 60966 and 60969.
update item_template set display_id = 7798 where entry in (60966,60969);
-- Add item IDs 65100 and 65101 to loot group 12 for Emeriss (ID 14889) and make sure all items have equal drop chances.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30404, 65100, 0, 1, 1, 1, 0);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30404, 65101, 0, 1, 1, 1, 0);
-- Add item ID 65102 to loot group 11 for Lethon (ID 14888) and make sure all items have equal drop chances.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30402, 65102, 0, 1, 1, 1, 0);
-- Add item IDs 65103 and 65104 to loot group 10 for Ysondre (ID 14887) and make sure all items have equal drop chances.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30400, 65103, 0, 1, 1, 1, 0);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30400, 65104, 0, 1, 1, 1, 0);
-- Add item ID 65105 to loot group 12 for Taerar (ID 14890) and make sure all items have equal drop chances.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (30405, 65105, 0, 1, 1, 1, 0);
-- https://database.turtle-wow.org/?object=13873  respawn immediately, set respawn time to 5 minutes.
update gameobject set spawntimesecsmin = 300, spawntimesecsmax = 300 where id = 13873;
-- Fix quest item for quest=55005 not allowing all party members to loot (1 per party per run rather than 1 for whole party).
UPDATE item_template SET flags = 2048 WHERE entry = 81315;
-- Remove Blizzlike chaining of quest=7625 into Imp Delivery. Imp Delivery requires TWO prereq quests, and if Arcanite isn't completed, you'll be offered a quest you can't accept, only for it to vanish. Blizzlike or not, this is less than ideal behavior.
UPDATE quest_template SET NextQuestInChain = 0 WHERE entry = 7625;
-- Fix racemask on both pointer quests to Tome of Divinity (Paladin Res Quest) only being for humans.
UPDATE quest_template SET RequiredRaces = 515 WHERE entry IN (2998, 3681);
-- Set react of  https://database.turtle-wow.org/?npc=2044 to Hostile.
update creature_template set faction = 16 where entry = 2044;
-- Edits for Farstrider.
UPDATE quest_template SET
ZoneOrSort = 147,
PrevQuestId = 80201
WHERE entry BETWEEN 80211 AND 80216;

UPDATE quest_template SET
ZoneOrSort = 147,
RewRepValue1 = 50,
RewMoneyMaxLevel = 30,
RewXP = 40,
NextQuestInChain = 80201,
Details = 'At last, $N, you are awake. It would seem that we survived the perilous journey south from the remnants of Lordaeron. We will have to make the best of our situation and work to make this our new home.$B$BThere is much to be done if we are to make this more than a temporary settlement for our people, $N. This lodge has only had to accommodate a handful of hunters and hasn''t seen much traffic since the Second War, thus why its maintenance is questionable at best.$B$BVyrin Swiftwind resides in the lodge and has held station here much longer than any of us. If we are to make a home for ourselves here, then we should seek her counsel and ask where to focus our efforts.',
RequestItemsText = '',
OfferRewardText = 'You wish to assist?$B$BWell, your offer is welcome, $c. I have been the lone ranger at this lodge for years, so you can imagine my shock at seeing so many of my kind arriving with news that my homeland has fallen. Now, I have to contend with a hundred refugees.$B$BWe have much work to do, friend, but the burden will be lessened with the refugees assisting. We Quel''dorei must stand united now more than ever; we only have each other now.'
WHERE entry = 80200;

UPDATE quest_template SET
ZoneOrSort = 147,
RewRepValue1 = 100,
RewMoneyMaxLevel = 170,
RewXP = 90,
RewOrReqMoney = 25,
Details = 'Wagons full of refugees have arrived from the north, and more are surely on the way.$B$BBecause this was used as a dwarven hunting lodge, the larders are fully stocked with meat. Unfortunately, most of the meat was in the process of being salted and the lodge does not have ample firewood. Some of the refugees have already begun chopping wood for the lumber supply.$B$BGo out and collect some of the bundles of wood they\'ve prepared. You\'ll find them near the trees growing around the lodge, but be careful not to venture too far out into the valley: The creatures of Loch Modan are too dangerous for a young $c such as yourself.',
OfferRewardText = 'Thank you, $N. With this, we should have more than enough wood to keep our people warm and bellies full.'
WHERE entry = 80201;
-- https://database.turtle-wow.org/?npc=61027 should not drop https://database.turtle-wow.org/?item=60862 when not on the quest - especially for Alliance.
update creature_loot_template set chanceorquestchance = -100 where entry = 61027 and item = 60862;