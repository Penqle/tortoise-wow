REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (5015093, 180322, 229, 46.7312, -259.546, 106.436, 0, 0, 0, 0, 1, 300, 300, 100, 1, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES (5015094, 180322, 229, 46.3562, -312.19, 106.5, 3.12665, 0, 0, 0.999972, 0.00747014, 300, 300, 100, 1, 0, 0);

UPDATE item_template SET bonding = 1 WHERE entry IN (50524, 50525);

-- Make Dim Torch have 1 copper sell price so deleting 50+ of them isn't a chore for people leveling Survival
UPDATE item_template SET sell_Price = 1, buy_price = 4 WHERE entry = 6182;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3324
UPDATE `quest_template` SET `Details` = 'So, who was this about, Marven Horsen? Larsen Wormen?$B$B<Larry lets a crass smirk rest on his face.>$B$BCarver Molsen, he certainly is a character, hangs around that old farmstead, goes by the name \'The Dead Acre\' these days, used to be called the Easton Fields.$B$BYou got what you needed, now go on, and tell who you need to.' WHERE `entry` = 40601;

UPDATE `quest_template` SET `Objectives` = 'Travel to the Dead Acre, and kill Carver Molsen, recover the Deed to Easton Fields, the Deed to Molsen Farm and the Westfall Church for Gryan Stoutmantle at Sentinel Hill in Westfall.' WHERE `entry` = 40602;

-- Removed Glowing Cat Figurine's vendor price.
UPDATE `item_template` SET `buy_price` = 1200, `sell_price` = 0 WHERE `entry` = 5332;

UPDATE `broadcast_text` SET `male_text` = 'The ambitions and desires of Kul Tiras are a complicated matter, our goal here is to determine the true value of these southerners, and to see if mainlanders can truly be trusted.\n\nShould the nobility from Stormwind prove themselves loyal to the old ways and old causes, then perhaps there may be a future of cooperation.\n\nWe shall see in time where the heart of Stormwind is rightly at.', `female_text` = NULL, `chat_type` = 0, `sound_id` = 0, `language_id` = 0, `emote_id1` = 0, `emote_id2` = 0, `emote_id3` = 0, `emote_delay1` = 0, `emote_delay2` = 0, `emote_delay3` = 0 WHERE `entry` = 61017;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2773
UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?', 
`OfferRewardText` = 'They will fear you, $N.' WHERE `entry` = 9054;

UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?', 
`OfferRewardText` = 'As you don more of this armor, you will notice that your persona is changing. You will gain a preternatural ability for killing. Perhaps, even, a lust for blood.\n\nLet it be said that I will not be held responsible for what chaos you may invoke...' WHERE `entry` = 9055;

UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?', 
`OfferRewardText` = 'You are turning into a fearsome creature, $N.' WHERE `entry` = 9056;

UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?',
 `OfferRewardText` = 'I have taken special care in making these shoulders as large and pronounced as possible.\n\nTake my word for it; you''re going to love them...' WHERE `entry` = 9057;
 
UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?', 
`OfferRewardText` = 'The boots are ready, $N! Wear them well.' WHERE `entry` = 9058;

UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?', 
`OfferRewardText` = 'Let the rage of the crypt fiend guide your hand, $N.' WHERE `entry` = 9059;

UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?',
 `OfferRewardText` = 'A girdle fit for royalty! It''s ready for you, $N.' WHERE `entry` = 9060;
 
UPDATE `quest_template` SET `RequestItemsText` = 'Do you have the items I asked for, $c?', 
`OfferRewardText` = 'The wristguards are ready. Enjoy!' WHERE `entry` = 9061;
