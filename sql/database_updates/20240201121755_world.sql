-- Item "Letter to Samual" 60205: grammar fix.
UPDATE `page_text` SET `text` = 'Little brother, it has been an eternity since we have seen one another. I am currently stranded on an island called Lapidis off the coast of Stranglethorn Vale near the south seas with others in the fleet. We call this place home, and have for a while now, and are repairing our ship.\n\nWhen repairs are done, I will be stopping to see you and Karl. I look forward to this day very well, and hope you are doing well.\n\nYour Older Brother Arnold.' WHERE `entry` = 50509;

-- Greetings text grammar fixes:
-- NPC "Commander Anarileth".
update broadcast_text set male_text = 'Welcome to Brinthilien, young $c. May the Eternal Sun shine upon you.' where entry = 61851;
-- NPC "Magistrate Solomon".
UPDATE `broadcast_text` SET `male_text` = 'Who is this $c who goes before the Court of Lakeshire in the Kingdom of Stormwind?  State your business within this township, $R.  The orc threat to the Kingdom is far too great to squander time in idle conversation.' WHERE `entry` = 41337;
-- NPC "Tanalla Sagebranch".
UPDATE `broadcast_text` SET `male_text` = 'We must always prepare our stockpiles, for demons encroach upon Hyjal day after day. If their goal is to attempt to corrupt Nordrassil, we shall be ready to deny them.$B$BWhat can I do for you $c?' WHERE `entry` = 61327;
-- NPC "Senior Foreman Nazz Firecracker".
UPDATE `broadcast_text` SET `male_text` = 'Slackers! All of them! Back in my day it was a privilege to work with that kind of firepower. Kids these da—\n\n<Nazz turns his attention towards you.>\n\nHey kid. Welcome to Powder Town! Came to rest? Then stay for the thrill! These idiotic \"Engineers\" Nert provided could make us blow at any minute!\n\nAnyway, got some work around here for you if you like getting your hands dirty for coin. Why else would you come to Powder Town?!\n\nOh, and don\'t worry about making yourself useful, just stay and visit. You wouldn\'t be the first anyway.\n\nNOW BEAT IT!' WHERE `entry` = 61024;
-- NPC "Nelson the Nice".
UPDATE `broadcast_text` SET `male_text` = 'I come to Silithus every year around this time. The weather is phenomenal for my bunions.$B$BYou should take a stroll with me, friend. Enjoy the sights and whatnot.' WHERE `entry` = 9747;
-- NPC "Brother Neals".
UPDATE `broadcast_text` SET `male_text` = 'Thanks for what you\'ve done. The memories I hold in that church will not be forgotten, and perhaps, in time, there can be more made there when the land heals and the crops are sown. If the Light is so gracious, we may yet have such a future. Farewell. Travel safe now, ya hear?' = NULL WHERE `entry` = 66463;
-- NPC "Kelvar Greybrew".
UPDATE `broadcast_text` SET `male_text` = 'You are an inspiration to us all.' WHERE `entry` = 52105;
UPDATE `broadcast_text` SET `male_text` = 'You are an inspiration to us all.', `female_text` = 'You are an inspiration to us all.' WHERE `entry` = 8170;
-- NPC "Slip".
UPDATE `broadcast_text` SET `male_text` = 'Not many people come back here. You useful? Think you could do some handy work for me?' WHERE `entry` = 60502;
-- NPC "Talom Stridecloud".
UPDATE `broadcast_text` SET `male_text` = 'Something seems amiss within these lands, as if the ground and the earth itself cries of a great misery being done. You can feel this, can\'t you?', `female_text` = NULL WHERE `entry` = 92199;
-- NPC "Orin Stonefury".
UPDATE `broadcast_text` SET `male_text` = 'My family called Lordaeron home once, heh, believe it or not. Valuable money was to be made from ore and jewelcrafting that we Stonefury were once known for many years ago! Now all that\'s left of my family\'s legacy is smouldering ruins, piles of stone, and burnt wood. Not to mention the corpses!$B$BIf I\'m going to fight for anything, it may as well be here.', `female_text` = NULL WHERE `entry` = 60528;

-- Solnius and Erennius. Issue: Typographical errors and inconsistency in the capitalization of "the Awakening", "the dragonflight" and "the [Emerald] Dream":
-- Aggro (Solnius):
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (30169, 'You think you can interfere with my eternal duty? The Awakening has been foretold long before your kind has existed, mortals. You shall regret setting foot on our hallowed ground!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Add phase (Solnius):
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (30170, 'The Dream beckons us all. You shall remain here forever...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Death (Solnius):
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (30171, 'I have waited so long... the Awakening cannot be stopped, not by you... I must awaken the dragonflight... I am the only one who can put an end to this... I cannot... be... stopped...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Killing a player (Erennius):
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (30172, 'Your efforts will disturb everything... Begone!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Death (Erennius):
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (30173, 'The shadow must not prevail... The dragonflights must stand... against it...', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Hard Mode success (Erennius):
replace INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (30174, 'The shadow, it fades... I am free from the nightmare that consumed my mind. I must thank you, adventurers, for you have saved me from madness. The Awakening has been stopped, and I may be free to rest at last.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);