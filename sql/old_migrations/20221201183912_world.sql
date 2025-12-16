-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2513
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2514
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2510
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2509
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2508

UPDATE `item_template` SET `stackable` = 30 WHERE `entry` = 60628;

UPDATE `quest_template` SET `Title` = 'The Garrison Armory Disaster', `Details` = 'Hey you, do you think you can help?\n\nThe Garrison Armory is nothing more than a trogg infestation. A trogg infestation that claimed the lives of twelve workers. It was one of the last dangers we ever expected to face, but when they came in, they came in fast.\n\nThe dead need to be avenged, and the mine needs to be cleared out for our own security.\n\nThe miners and I have collected enough coin to pay for someone to do the job right, go in there and clean it out good, don\'t show them mercy.', `Objectives` = 'Slay 10 Boulderclaw Tunnelers, 8 Boulderclaw Geomancers, 8 Boulderclaw Bashers, and 6 Boulderclaw Ambushers for Foreman Tanoth at the Garrison Armory in Blasted Lands.', `OfferRewardText` = 'The dead will not be forgotten, but at the least we have avenged their deaths. Thanks again for everything that you have done.\n\nTake this coin, it is from all of us.', `RequestItemsText` = 'Has the infestation been cleansed?' WHERE `entry` = 40428;

UPDATE `quest_template` SET `RewRepFaction1` = 21 WHERE `entry` = 40411;

UPDATE `quest_template` SET `Details` = 'Now that you\'ve recovered the supplies we can turn our attention to other matters entirely. In Kalimdor we have a network of clients and contacts that we keep in touch with for all sorts of purposes.\n\nOne such contact is located within Steamwheedle Port and hasn\'t sent his delivery of goods yet. He goes by the name Jabbey and is a vendor there.\n\nI\'d like you to head there and find out what the hold up is so that we can get it all to McCoy.\n\nYou can find Steamwheedle Port to the east of Gadgetzan in the deserts of Tanaris.\n\nNow, of course, make sure you keep it on the hush-hush that this is related to the Bloodsail.\n\nOh, and make sure to bring water, I hear it\'s quite dry there.' WHERE `entry` = 40332;

UPDATE `quest_template` SET `Details` = 'Five nights ago we were harassed by a band of trolls with blue hair, they threw all sorts of javelins at us.\n\nThey made off with crates and bundles of supplies, not to mention killing a few good folk before we fought them off.\n\nThose trolls are Skullsplitter, and came from the Ziata\'jai Ruins to the north east of here. Head there, and recover 5 Bloodsail Supply Crates.\n\nWhile you\'re there, you may as well kill some as well to get some payback, we need to keep our image after all.' WHERE `entry` = 40331;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2507
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2499
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2492

UPDATE `quest_template` SET `Details` = 'It sure has been a while since we\'ve heard from old \'Wincing\' Willy. He has been appointed to manage the supplies out far to the north west at Bloodsail Compound, it is located just to the southwest of the Gurubashi Arena.\n\nSomething must have gone wrong, or him and his men have gone rogue.\n\nI want you to travel there, and meet up with him and figure out why there has been supply shortages.\n\nIf there\'s anything we Bloodsail need, it\'s to keep our supply lines in check!' WHERE `entry` = 40330;

UPDATE `quest_template` SET `Details` = '$N, ya now have the power to tame a pet, but you must also gain the skills ta train it.\n\nTravel to Ironforge and find the Hall of Arms. There you must speak to one of our most revered animal trainers, Belia Thundergranite. She\'ll give ya the power to train your new pet, so get goin\' $Glad:lass;!\n\nBelia is a friendly sort; you should have no problems gaining her approval. Good luck, $N.' WHERE `entry` = 6086;

UPDATE `creature_template` SET `type` = 5 WHERE `entry` = 92937;