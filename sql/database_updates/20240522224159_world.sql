-- **Additional notes:** 

-- Create a copy of the creature Akh Z'ador with a new entryid. 61986

-- When on this quest, Sanv K\'la gets the following gossip option:

-- You are out of breath, what has happened?

-- <Kas\'tal sends me, he fears for the safety of your people!>

-- Clicking the option triggers the following event:

-- Sanv K'la: “I do not understand, what do you…?”

-- Outside his hut in the Harborage Sanv Tas'dal <Projection of the Riftlord> will spawn. Every draenei NPC in the Harborage will be feared and scream: “AAAAAAAH!!” or “They have returned! Run for your lives!” ((Spawn Sanv Tas'dal at the following coords : X:-10109.4335, Y:-2819.2778, Z:22.004, Orientation: 0.587))

-- Sanv Tas'dal yells: “Sanv K'la. After years of searching for you and the other lost sheep of mine, you finally reveal yourself.”
-- (10 seconds)
-- Sanv Tas\'dal yells: “Your need for pitiful hiding is over, my brethren. For I have secured us a safe haven in our homeworld, the place you should all return to.”
-- (10 seconds)
-- Sanv Tas\'dal yells: “Join me, as I can give you whatever you desire. Yet, most importantly, I can give you a purpose; a purpose greater than anything you could possibly fathom!”
-- (10 seconds)
-- Sanv Tas\'dal yells: “Anyone eager to follow me back into the fulfilling embrace of our saviors, come forth! And those who wish to defy me…
-- (10 seconds, Sanv Tas\'dal becomes hostile afterwards)
-- Sanv Tas\'dal yells: “Prepare to be cast into the endless oblivion of the Twisting Nether!!”

-- At 60%, Sanv Tas\'dal will yell the following:

-- Sanv Tas\'dal yells: “You feeble races. Your defiance is laughable in the face of certain death. Perish, and let your bodies pave the way for the enlightened!”

-- At 50%, (The new copy of) Akh Z'ador will appear in the Harborage at the following coordinates (X:-10117.5458, Y:-2831.6997, Z:21.8479, Orientation : 0.8486 and cast 51108 on Sanv Tas\'dal. On spawn he will yell the following:

-- Akh Z'ador yells: “Friends of the Harborage! Stay vigilant! Assist me in banishing this foul specter from our new home. The corrupt and demonic have to place here!”

-- ((Wait 3 seconds))
-- Sanv Tas\'dal yells: “Impertinant fool! Your pathetic display of magic won\'t change a thing! Your fate is already sealed!”

-- Once Sanv Tas\'dal dies, he will say the following:

-- Sanv Tas\'dal yells: “No! This will not be the end, there is nowhere to hide for you anymore!”

-- ((Wait 8 seconds))
-- Akh Z'ador says: “The evil shadow of my former master is cast into the void again. Friends, speak with Sanv K\'la, while I regain my strength.”

-- Akh Z'ador then despawns after 15 seconds.

-- Killing Sanv Tas\'dal <Projection of the Riftlord> completes the quest objective.


-- Fate Of The Harborage
delete from quest_template where entry = 41326;
replace into quest_template (prevquestid, entry, method, zoneorsort, questlevel, minlevel, questflags, specialflags, title, details, objectives, requestitemstext, offerrewardtext, reqitemid1, reqitemcount1, reqitemid2, reqitemcount2, reqitemid3, reqitemcount3, reqitemid4, reqitemcount4, reqcreatureorgoid1, reqcreatureorgocount1, reqcreatureorgoid2, reqcreatureorgocount2, reqcreatureorgoid3, reqcreatureorgocount3, reqcreatureorgoid4, reqcreatureorgocount4, srcitemid, srcitemcount, reworreqmoney, RewMoneyMaxLevel, rewxp, rewrepfaction1, rewrepvalue1,  rewrepfaction2, rewrepvalue2, rewrepfaction3, rewrepvalue3, rewrepfaction4, rewrepvalue4, rewspell, rewspellcast, completeemote, rewitemid1, rewitemcount1, rewitemid2, rewitemcount2, rewitemid3, rewitemcount3, rewitemid4, rewitemcount4, rewchoiceitemid1, rewchoiceitemcount1, rewchoiceitemid2, rewchoiceitemcount2, rewchoiceitemid3, rewchoiceitemcount3, rewchoiceitemid4, rewchoiceitemcount4,requiredminrepfaction,requiredminrepvalue,objectivetext1) values (41325,41326,2,8,60,30,0,0,'Fate Of The Harborage','Quickly, rush to the Harborage and warn Sanv K\'la! If we do not evacuate all in time, who knows what horrible tragedy will befall us! I will attempt to contact Master Akh Z\'ador in the meantime, hopefully he can aid us sooner than anticipated. $R, I place all my hopes on you. Perhaps there is still time.','Alert Sanv K\'la of the imminent danger.','$N, you are restless. Tell me, could you find Akh Z\'ador?','I am devastated. Not even in the wildest of dreams could I have imagined this to happen. Sanv Tas\'dal, once my mentor as chieftain and noble leader of our tribe, succumbing to the sweet lies of the Burning Legion. If it wasn\'t for you and Akh Z\'ador, then my people and I would have followed him back to Draenor, to live the rest of our lives as drones for the Legion\'s machinations.$B$BThe Harborage is forever in your debt. Words cannot express how heavy my gratitude towards your selflessness lies, so please: Take this symbol of appreciation from all draenei of this humble sanctuary.',0,0,0,0,0,0,0,0, 61985,1,0,0,0,0,0,0, 0,0, 0,58100,8300, 0,0,0,0,0,0,0,0, 0,0,0, 0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0, 0,0,'');
-- Reward Items:
-- Garbs of the Riftwalker - Cloth Chest, Spelldmg and Hit
-- Nethershard Band - Ring, AP and Crit
-- Harborage Defender Pauldrons - Plate Shoulders, Stam, Strength, Parry%
-- Draenethyst Pendant - Necklace, Spelldmg, AP, Defense
replace into creature_questrelation		(id, quest) values (60850, 41326);
replace into creature_involvedrelation  (id, quest) values (91781, 41326);
update quest_template set nextquestinchain = 41327	 where entry = 41326;
update quest_template set type = 62					 where entry = 41326;

update creature_template set script_name = '', npc_flags=3 where entry = 91781;
update creature_template set ai_name = 'EventAI', script_name = '', faction = 35 where entry = 61985;

-- When on this quest, Sanv K\'la gets the following gossip option:
replace into broadcast_text (entry, Male_Text) values (30195, 'You are out of breath, what has happened?');
replace into npc_text (ID, BroadcastTextID0) values (30195, 30195);
-- Clicking the option triggers the following event:
replace into broadcast_text (entry, Male_Text) values (30196, '<Kas\'tal sends me, he fears for the safety of your people!>');
-- Sanv K'la says:
replace into broadcast_text (entry, Male_Text) values (30197, 'I do not understand, what do you...?');

-- Outside his hut in the Harborage Sanv Tas'dal <Projection of the Riftlord> will spawn. Every draenei NPC in the Harborage will be feared and scream:
replace into broadcast_text (entry, Male_Text) values (30208, 'They have returned! Run for your lives!');
-- Sanv Tas'dal yells:
replace into broadcast_text (entry, Male_Text) values (30198, 'Sanv K\'la. After years of searching for you and the other lost sheep of mine, you finally reveal yourself.');
-- (10 seconds)
-- Sanv Tas\'dal yells:
replace into broadcast_text (entry, Male_Text) values (30199, 'Your need for pitiful hiding is over, my brethren. For I have secured us a safe haven in our homeworld, the place you should all return to.');
-- (10 seconds)
-- Sanv Tas\'dal yells:
replace into broadcast_text (entry, Male_Text) values (30200, 'Join me, as I can give you whatever you desire. Yet, most importantly, I can give you a purpose; a purpose greater than anything you could possibly fathom!');
-- (10 seconds)
-- Sanv Tas\'dal yells:
replace into broadcast_text (entry, Male_Text) values (30201, 'Anyone eager to follow me back into the fulfilling embrace of our saviors, come forth! And those who wish to defy me...');
-- (10 seconds, Sanv Tas\'dal becomes hostile afterwards)
-- Sanv Tas\'dal yells:
replace into broadcast_text (entry, Male_Text) values (30202, 'Prepare to be cast into the endless oblivion of the Twisting Nether!');
-- At 60%, Sanv Tas\'dal will yell the following:
replace into broadcast_text (entry, Male_Text) values (30203, 'You feeble races. Your defiance is laughable in the face of certain death. Perish, and let your bodies pave the way for the enlightened!');
-- Akh Z'ador yells at 50% HP of Sanv Tas'dal:
replace into broadcast_text (entry, Male_Text) values (30204, 'Friends of the Harborage! Stay vigilant! Assist me in banishing this foul specter from our new home. The corrupt and demonic have to place here!');
-- ((Wait 3 seconds)) Sanv Tas\'dal yells:
replace into broadcast_text (entry, Male_Text) values (30205, 'Impertinant fool! Your pathetic display of magic won\'t change a thing! Your fate is already sealed!');
-- Once Sanv Tas\'dal dies, he will  yells:
replace into broadcast_text (entry, Male_Text) values (30206, 'No! This will not be the end, there is nowhere to hide for you anymore!');
-- ((Wait 8 seconds)) Akh Z'ador says:
replace into broadcast_text (entry, Male_Text) values (30207, 'The evil shadow of my former master is cast into the void again. Friends, speak with Sanv K\'la, while I regain my strength.');

-- 41326: Target Has Incomplete Quest 41326 In Log
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (41326, 9, 41326, 1, 0, 0, 0);

-- Gossip for Sanv K'la.
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES (60114, 0, 0, '<Kas\'tal sends me, he fears for the safety of your people!>', 30196, 1, 1, -1, 0, 60114, 0, 0, NULL, 0, 41326);
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (60114, 30195, 0, 41326);

-- Gossip scripts for Sanv K'la.
DELETE FROM `gossip_scripts` WHERE `id`=60114;
INSERT INTO `gossip_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(60114, 0, 0, 4, 147, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv K\'la - Remove Gossip Flag'),
(60114, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30197, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv K\'la - Say Text'),
(60114, 2, 0, 10, 61985, 60000, 1, 100, 0, 0, 0, 0, 8, 0, -1, 1, -10109.4, -2819.28, 22.004, 0.587, 0, 'Fate Of The Harborage: Summon Creature Sanv Tas\'dal'),
(60114, 5, 0, 68, 60114, 2, 60421, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Start Script for All'),
(60114, 12, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30198, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 22, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30199, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 32, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30200, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 42, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30201, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 52, 0, 0, 0, 0, 0, 0, 61985, 100, 8, 2, 30202, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60114, 52, 0, 22, 14, 0, 0, 0, 61985, 100, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Set Faction to Monster'),
(60114, 120, 0, 4, 147, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv K\'la - Add Gossip Flag');
DELETE FROM `generic_scripts` WHERE `id`=60114;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(60114, 0, 0, 15, 16, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Run in Fear'),
(60114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30208, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Say Text'),
(60114, 20, 0, 20, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Move Home'),
(60114, 25, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Draenei Exile - Enter Evade Mode');

-- Events list for Sanv Tas'dal
DELETE FROM `creature_ai_events` WHERE `creature_id`=61985;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (6198501, 61985, 0, 2, 0, 100, 0, 60, 1, 0, 0, 6198501, 0, 0, 'Sanv Tas\'dal - Say Text at 60% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (6198502, 61985, 0, 2, 0, 100, 0, 50, 1, 0, 0, 6198502, 0, 0, 'Sanv Tas\'dal - Summon Akh Z\'ador at 50% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (6198503, 61985, 0, 6, 0, 100, 0, 0, 0, 0, 0, 6198503, 0, 0, 'Sanv Tas\'dal - Start Script on Death');
DELETE FROM `creature_ai_scripts` WHERE `id`=6198501;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6198501, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 30203, 0, 0, 0, 0, 0, 0, 0, 0, 'Sanv Tas\'dal - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=6198502;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6198502, 0, 0, 10, 91782, 60000, 0, 0, 0, 0, 0, 1, 0, 60115, -1, 2, -10117.5, -2831.7, 21.8479, 0.8486, 0, 'Sanv Tas\'dal - Summon Creature Akh Z\'ador');
DELETE FROM `generic_scripts` WHERE `id`=60115;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(60115, 0, 0, 15, 51108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Akh Z\'ador - Cast Spell Nether Distortion'),
(60115, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 30204, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Akh Z\'ador - Say Text'),
(60115, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 30205, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text');
DELETE FROM `creature_ai_scripts` WHERE `id`=6198503;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(6198503, 0, 0, 39, 60116, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Sanv Tas\'dal - Start Script');
DELETE FROM `generic_scripts` WHERE `id`=60116;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(60116, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 30206, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Sanv Tas\'dal - Say Text'),
(60116, 8, 0, 0, 1, 0, 0, 0, 91782, 0, 8, 2, 30206, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Akh Z\'ador - Say Text'),
(60116, 23, 0, 18, 0, 0, 0, 0, 91782, 0, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fate Of The Harborage: Akh Z\'ador - Despawn Creature');

-- Use escort faction for Akh Z'ador.
UPDATE `creature_template` SET `faction`=113 WHERE `entry`=91782;

