UPDATE `creature_template` SET `subname` = 'Shell Co. Private Security' WHERE `entry` = 51234;
UPDATE `creature_template` SET `subname` = 'Shell Co. Investment Expert' WHERE `entry` = 51243;
UPDATE `creature_template` SET `subname` = 'Shell Co. Investment Expert' WHERE `entry` = 51252;

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (60903, 'Welcome to the Shell Co. Trading Company!\n\nWith my genius I have invented a brand new currency that will take the world by storm, the magical Shellcoin will turn the world on its head, and create an all new way to get rich.\n\nDown on your luck, well, now is the time to invest in Shellcoin and hit big like many others have!', 'Welcome to Shell Co. Trading Company!\n\nWith my genius I have invented a brand new currency that will take the world by storm and create a brand new opportunity for innovation.\n\nDown on your luck? Well, now is the time to invest in Shellcoin and hit big like many others have!', 0, 0, 0, 5, 0, 0, 0, 0, 0);

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (47025, 'Hello there, future partner! Surprised to see a gnome in Orgrimmar?\n\nWell don\'t be! We are all friends here at Shell Co. You see, the world is divided into two kinds of people.\n\nNo, I don\'t mean Alliance and Horde. That\'s an artificial division. I\'m talking about us, entrepreneurs with a vision, and the poor ignorant commoners.\n\nYou are one of us, right?', 'Hello there, future partner! Surprised to see a gnome in Orgrimmar?\n\nWell don\'t be! We are all friends here at Shell Co. You see, the world is divided into two kinds of people.\n\nNo, I don\'t mean Alliance and Horde. That\'s an artificial division. I\'m talking about us, entrepreneurs with a vision, and the poor ignorant commoners.\n\nYou are one of us, right?', 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (47030, 'You there, I see you have brought yourself to the Shell Co. Trading Company!\n\nA new currency has reached our ears in Orgrimmar, one that is taking the humans by storm. It is a magical coin that will change Azeroth forever. Highly time to invest your spoils, young one.\n\nLook at me, I was once a pathetic druid, nothing to my name, and now I am one of the biggest shareholders of Shellcoin. Invest early, and you\'ll get returns you wouldn\'t dare dreaming of.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `quest_template` SET
`objectives` = 'Speak to Khan Jehn and follow his instructions.',
`objectivetext1` = 'Speak to Khan Jehn and follow his instructions'
WHERE `entry` = 40616;

UPDATE `quest_template` SET
`details` = 'We\'re in a rough spot. The boss is scary, but he ain\'t worth fighting hordes of ghosts or some ancient curse. When he finds out, he\'ll have us hunted to the ends of Azeroth.\n\nAs much as it pains me to say, we\'re gonna have to cower and hide behind some real muscle if we don\'t all want to end up six feet under.\n\nThere\'s only one force in this world that even the boss wouldn\'t cross, and that\'s The Horde. No one else would take a bunch of deadbeat Venture Co. refugees, either.\n\nYeah, I know. Even that\'s a stretch. We ain\'t got much choice though, and the Horde sure don\'\t like us less than our former associates, yeah? If we got a chance to win them over, then we gotta at least try.\n\nIt\'s that or spend the rest of our lives on the run. It\'s time for us to go straight, $N.',
`RequestItemsText` = 'Alright, we made it to Durotar.\n\nStep 1 complete. Now for Step 2 of my master plan. That I just now made up...',
`NextQuestInChain` = 80109
WHERE `entry` = '80108';

UPDATE `item_template` SET `description` = 'An amulet made from the broken core of the Analyzer Construct.' WHERE `entry` = '60518';

UPDATE `item_template` SET `description` = 'Property of the Shell Co. Trading Company. Buy buy buy! Hurry before the market value skyrockets!' WHERE `entry` = 81118;

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (47019, 'Cover for me, will you? I need to go invest my wages over at the Shell Co office.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `item_template` SET `display_id` = 66312 WHERE `entry` = 81118;
UPDATE `item_template` SET `display_id` = 66314 WHERE `entry` = 51255;

-- Colonel's kurzen respawn timer is wrong. It should not be 30 minutes:

UPDATE `creature` SET `spawntimesecsmin` = 300, `spawntimesecsmax` = 300 WHERE `id` = 813;