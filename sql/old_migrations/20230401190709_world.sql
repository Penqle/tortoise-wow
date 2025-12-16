update item_template set dmg_min2 = 3, dmg_max2 = 5, dmg_type2 = 1, dmg_min1 = 95, dmg_max1 = 176 where entry = 60486; -- Fishbringer

UPDATE page_text SET text = 'Buildings crumble and decay with age, but steel lasts. So it was that the kingdom of Corthan was not a nation built, but a nation forged. No forge fire could burn hotter than the passion of its people. No hammer could strike with greater force than their will. No metal could endure the blows of the hammer the way the people''s determination could. Corthan and her people were trueforged steel, and like a fine blade, it was destined that they should know blood and battle.' WHERE entry = 50558;
UPDATE page_text SET text = 'War, however, is a sin in this world, and our sins were great indeed. Drought, famine, pestilence, paranoia. One after another each tested the will of the people of Corthan, and each battle left the steel of our kingdom dented, wearing away at the sharp edge of our discipline. Buildings may crumble and decay with age, but it is a sword''s doom to be lost, left to rust and sink beneath the soil, lost to the ages.' WHERE entry = 50559;
UPDATE page_text SET text = 'Let this record be testament to Corthan, to the Azotha. All swords may eventually be laid down for the last time, but the truly great swords leave behind their names and a legacy to be carried on into the future. The blade of Corthan may no longer spill blood and bring our enemies to their knees, but its name must endure. Do not let it be forgotten, lest another blade be forged, more terrible than that which came before.' WHERE entry = 50560;

UPDATE quest_template SET NextQuestInChain = 40377 WHERE entry = 40376;
UPDATE quest_template SET NextQuestInChain = 40378 WHERE entry = 40377;
UPDATE quest_template SET NextQuestInChain = 40379 WHERE entry = 40378;
UPDATE quest_template SET NextQuestInChain = 40380 WHERE entry = 40379;
UPDATE quest_template SET NextQuestInChain = 40381 WHERE entry = 40380;
UPDATE quest_template SET NextQuestInChain = 40382 WHERE entry = 40381;
UPDATE quest_template SET NextQuestInChain = 40383 WHERE entry = 40382;
UPDATE quest_template SET NextQuestInChain = 40384 WHERE entry = 40383;
UPDATE quest_template SET RewRepValue1 = 200 WHERE entry = 40384;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3119

UPDATE `creature_template` SET `skinning_loot_id` = 745 WHERE `entry` = 1063;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3118

UPDATE `creature_template` SET `armor` = 2999 WHERE `entry` = 3581;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3117

UPDATE `quest_template` SET `ZoneOrSort` = 331 WHERE `entry` = 40569;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3129

UPDATE `item_template` SET `display_id` = 20825 WHERE `entry` = 81290;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3090

UPDATE `broadcast_text` SET `male_text` = 'Come forth, ye dreamers and claim your vengeance!' WHERE `entry` = 10881;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3092

UPDATE `creature_template` SET `gold_min` = 1300000, `gold_max` = 1820000 WHERE `entry` = 6109;
UPDATE `creature_template` SET `gold_min` = 1300000, `gold_max` = 1820000 WHERE `entry` = 12397;
UPDATE `creature_template` SET `gold_min` = 1300000, `gold_max` = 1820000 WHERE `entry` = 14887;
UPDATE `creature_template` SET `gold_min` = 1300000, `gold_max` = 1820000 WHERE `entry` = 14888;
UPDATE `creature_template` SET `gold_min` = 1300000, `gold_max` = 1820000 WHERE `entry` = 14889;
UPDATE `creature_template` SET `gold_min` = 1300000, `gold_max` = 1820000 WHERE `entry` = 14890;
