UPDATE quest_template SET
Details = 'Theramore was founded by many from the nation of Kul Tiras; our leader Jaina even hails from there. Our stance of cautious neutrality with the Horde has caused problems for many of the veterans. These soldiers once saw brothers and sisters die in combat, or had families pass in war.$B$BMore and more of our kin stray from Theramore with each day. Either deserting outright or being exiled for overly aggressive and divisive actions in attempts to lead us to conflict.$B$BWhile I hold respect for those that served I do not tolerate disloyalty. The Deserters have begun to go too far, wearing our tabards, uniforms, and lurking within the swamp.$B$BThey must be dealt with before they bring all-out war to us. The Hideout is located directly to the west of Theramore, within the Quagmire. Head there and remove their presence.',
Objectives = 'Find the Deserters'' Hideout and slay 9 Deserter Turncoats and 9 Deserter Exiles for Colonel Breen at Theramore Isle in Dustwallow Marsh.'
WHERE entry = 40687;

UPDATE quest_template SET
OfferRewardText = '<Privateer Groy practically snatches it from your hands, a wide grin upon his face.>$B$BAhh, its been a while... a long while. I suppose you want something in return for running all that way. Here, some coin to cover the trip. If I ever need more I''ll let you know, heh.'
WHERE entry = 40411;

-- Fixed too short respawn timers for some nodes of Small Thorium Vein and Truesilver Deposit.

UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407806;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407805;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407804;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407803;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407802;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407801;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407800;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407799;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407798;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407797;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407796;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407795;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407794;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407793;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407792;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407791;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407790;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407789;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407788;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407787;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407786;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407785;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407784;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407783;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407782;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407781;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407780;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407779;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407778;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407777;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407776;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 407775;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013462;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013455;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013450;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013466;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013444;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013485;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013503;
UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `guid` = 4013510;

UPDATE `quest_template` SET `QuestLevel` = 40 WHERE `entry` = 40565;
UPDATE `quest_template` SET `QuestLevel` = 35 WHERE `entry` = 40561;
UPDATE `quest_template` SET `QuestLevel` = 35 WHERE `entry` = 40561;

UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 1124;

DELETE FROM `gameobject` WHERE `guid` = 47750;

UPDATE `item_template` SET `required_level` = 60 WHERE `entry` = 60465;
UPDATE `item_template` SET `bonding` = 1 WHERE `entry` = 60465;

-- New Nigh Elf skins:

UPDATE `custom_character_skins` SET `skin_female` = 12 WHERE `token_id` = 61105;
UPDATE `custom_character_skins` SET `skin_female` = 0 WHERE `token_id` = 61104;
UPDATE `custom_character_skins` SET `skin_female` = 0 WHERE `token_id` = 61106;