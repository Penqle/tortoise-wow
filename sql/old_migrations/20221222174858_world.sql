-- Snowball respawn timer:
UPDATE `creature` SET `spawntimesecsmin` = 50400, `spawntimesecsmax` = 72000 WHERE `id` = 50112;
-- Change respawn timer of Oilmaster Higgle Wirefuse to 5 mins:
UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 61036;
-- NPC Warleader Temukar make unkillable and unaggroable:
UPDATE `creature_template` SET `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 61045;
-- NPC Vengeful Spirit needs ghost effects:
UPDATE `creature_template` SET `auras` = '9617' WHERE `entry` = 61118;
-- Wolfves don't drop the Silvermane Pelt for Protecting Aerie Peak:
REPLACE INTO `creature_loot_template` VALUES
(2924, 60898, -72, 4, 1, 1, 0),
(2925, 60898, -72, 4, 1, 1, 0),
(2926, 60898, -72, 4, 1, 1, 0);
-- Remove Dark Ranger skin temporary fix:
UPDATE `custom_character_skins` SET `skin_male` = 16 WHERE `token_id` = 81206;
-- Removed corrupted reward for Earth Rumble quest:
UPDATE `quest_template` SET `RewChoiceItemId1` = 0, `RewChoiceItemId2` = 0, `RewChoiceItemCount1` = 0, `RewChoiceItemCount2` = 0, `RewItemId1` = 60865, `RewItemCount1` = 1 WHERE `entry` = 40637;
-- Fixes for Grizzlore Wants Thunder quest:
UPDATE `quest_template` SET `Details` = 'Grizzlore - me! I want more booze! <hick!>\n\nThunder… <hick!> …brew! Lager… <hick!>\n\nGrimbooze brews it well. You go there. Westfall! <hick!>\r\n', `Objectives` = 'Acquire Thunderbrew Lager from Grimbooze Thunderbrew in Westfall or Innkeeper Karakul in Swamp of Sorrows for Grizzlore.' WHERE `entry` = 50326;
-- Grammar fixes for various quests:
UPDATE `quest_template` SET `Objectives` = 'Kill 15 Crushridge Ogres and 15 Crushridge Brutes.' WHERE `entry` = 60119;
UPDATE `quest_template` SET `OfferRewardText` = '...Laz sent you? Oh, please don\'t break my knees! Anything but that...\n\nWait, you\'re here to help with the Yeti fur?\n\nWell, isn\'t that a relief? I could certainly use help.' WHERE `entry` = 55036;
UPDATE `quest_template` SET `Details` = 'I\'m in need of some help here. A whole damn lot of help!\n\nI was supposed to receive an order of Yeti Fur from a trusted source, but they up and went AWOL on me!\n\nLook pal, if you can help me keep my knees, and not go missing from Azeroth, that would be a huge help.\n\nTo the southwest is a cave full of yeti. Damn near packed with them. Get me ten Yeti Fur. That should be more then enough to bring back to Laz. And please, be quick! We don\'t got all day here!\n\nI see you got the Yeti Fur. Let me box this up right quick to send to Laz!' WHERE `entry` = 55037;
UPDATE `quest_template` SET `Details` = 'There, it\'s all packaged up and good to go. Please, take this crate to Tradesman Laz in Sparkwater Port, and give him my apologies for the lateness. I included a small cut of money there for him as well for being late!\n\nThanks again for all the help, I would have been much worse off without you.' WHERE `entry` = 55038;
UPDATE `quest_template` SET `RequestItemsText` = 'Welcome back to Sparkwater. Did you deal with Tarlo yet?' WHERE `entry` = 55038;
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2573
UPDATE `item_template` SET `spellid_2` = 21335 WHERE `entry` = 83224;
-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2572
UPDATE `item_template` SET `description` = 'Though battered and scarred the totem still brims with energy' WHERE `entry` = 60104;