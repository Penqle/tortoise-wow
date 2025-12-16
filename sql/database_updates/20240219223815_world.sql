-- make spell "Remove Insignia" have a big range, and ignore LoS
-- that way, it will not be interrupted, if player release corpse
UPDATE `spell_template` SET `rangeIndex` = '13' WHERE (`entry` = '22027');
UPDATE `spell_template` SET `attributesEx2` = '4' WHERE (`entry` = '22027');

-- Add quest chaining to Into the Dream
UPDATE quest_template SET NextQuestInChain = 40958 WHERE entry = 40957;
UPDATE quest_template SET NextQuestInChain = 40959 WHERE entry = 40958;
UPDATE quest_template SET NextQuestInChain = 40960 WHERE entry = 40959;
UPDATE quest_template SET NextQuestInChain = 40961 WHERE entry = 40960;
UPDATE quest_template SET NextQuestInChain = 40962 WHERE entry = 40961;

-- Add quest chaining to Hyjal Runestone chain
UPDATE quest_template SET NextQuestInChain = 40985 WHERE entry = 40984;
UPDATE quest_template SET NextQuestInChain = 40986 WHERE entry = 40985;
UPDATE quest_template SET NextQuestInChain = 40987 WHERE entry = 40986;
UPDATE quest_template SET NextQuestInChain = 40988 WHERE entry = 40987;
UPDATE quest_template SET NextQuestInChain = 40989 WHERE entry = 40988;
UPDATE quest_template SET NextQuestInChain = 40990 WHERE entry = 40989;

-- Add quest chaining to Manifestations of Nightmare chain
UPDATE quest_template SET NextQuestInChain = 41025 WHERE entry = 41024;
UPDATE quest_template SET NextQuestInChain = 41026 WHERE entry = 41025;

-- Add quest chaining to Suspicious Flora chain
UPDATE quest_template SET NextQuestInChain = 41106 WHERE entry = 41088;
UPDATE quest_template SET NextQuestInChain = 41090 WHERE entry = 41106;
UPDATE quest_template SET NextQuestInChain = 41091 WHERE entry = 41090;
UPDATE quest_template SET MinLevel = 59, NextQuestInChain = 41092 WHERE entry = 41091;
UPDATE quest_template SET MinLevel = 59, NextQuestInChain = 41093 WHERE entry = 41092;
UPDATE quest_template SET MinLevel = 59, NextQuestInChain = 41094 WHERE entry = 41093;
UPDATE quest_template SET MinLevel = 59, NextQuestInChain = 41096 WHERE entry = 41094;
UPDATE quest_template SET MinLevel = 59, NextQuestInChain = 41097 WHERE entry = 41096;

-- Raise stack size of Bright Dream Shards to 250
UPDATE item_template SET Stackable = 250 WHERE entry = 61199;

-- Change repeatables to non-accept type
UPDATE quest_template SET RequestItemsText = Details WHERE entry IN (40813, 40814, 40815, 40816, 40885, 40894, 40973, 41005, 41007, 41018, 41019, 41021, 41055, 41068, 41069, 41128) AND Details IS NOT NULL;
UPDATE quest_template SET Method = 0, Objectives = '', Details = NULL WHERE entry IN (40813, 40814, 40815, 40816, 40885, 40894, 40973, 41005, 41007, 41018, 41019, 41021, 41055, 41068, 41069, 41128);

-- Place class masks on Mastery of the Bow quest
UPDATE quest_template SET RequiredClasses = 13 WHERE entry = 40913;

-- Make Hyjal turn-in recipe BoP
UPDATE item_template SET Bonding = 1 WHERE entry = 61179;

-- Place profession requirements on Hyjal recipe turn-ins
UPDATE quest_template SET RequiredSkill = 164, RequiredSkillValue = 1 WHERE entry IN (40888, 40889, 40890, 41111); -- blacksmith
UPDATE quest_template SET RequiredSkill = 165, RequiredSkillValue = 1 WHERE entry IN (40875, 40895, 40897, 40898, 40899); -- leatherworking
UPDATE quest_template SET RequiredSkill = 171, RequiredSkillValue = 1 WHERE entry IN (40873, 40874); -- alchemy
UPDATE quest_template SET RequiredSkill = 186, RequiredSkillValue = 1 WHERE entry = 40886; -- mining
UPDATE quest_template SET RequiredSkill = 197, RequiredSkillValue = 1 WHERE entry IN (40900, 40902, 40903, 40904); -- tailoring
UPDATE quest_template SET RequiredSkill = 333, RequiredSkillValue = 1 WHERE entry IN (40883, 40884); -- enchanting

-- Let's try this AGAIN
UPDATE creature_template SET Name = 'Ivory Hawkstrider' WHERE entry = 61695;

-- Add linebreaks to quest 41095
UPDATE quest_template SET
Details = 'There be something other than demons on my mind, mon. My tribe, my own people. Lost to the madness of bad, very bad voodoo. One day the Loa be seeking our Speaker in his slumber. The Loa asked for strong mojo to be made, the Mojo of Dreams.$B$BA mojo that strong needed blessed water, blessed by the Dragons. So I be finding my way to the big green portal. There I found the demons and dirtied my hands with their blood as the Speaker ran away! When I be returning home, my own people sneered at me in hostility. Sent me away. No part of the Shadeflayers, they said.$B$BBad, bad voodoo took over their mind mon. But to fix bad voodoo, you be needing to pay blood and good mojo. Both price of blood and mojo can be paid in Zul''Hatha. Where you will find Gan''hota the Speaker with his Mojo of Dreams. Not far you be finding Warlord Hanzento, whose blood you need to spill. He be the reason for this foolishness and this be the right way to set things right!'
WHERE entry = 4105;

-- Revert erroneously replaced quest description for 40909
UPDATE quest_template SET
Details = 'The Winterfall and Deadwood Tribes have already been lost to madness. Their hatred burns deep and already they have sent speakers to discuss an allegiance with the corrupt Barkskin. I have no doubt in my mind it will only be a matter of time before they conspire against us.$B$BThe Timbermaw cannot stand idle whilst corruption ties hostile factions together in unison. I beseech you to travel deep into Barkskin Village to the southwest of here, near the bottom of the summit.$B$BFind and slay the Winterfall and Deadwood envoys both.'
WHERE entry = 40909;
