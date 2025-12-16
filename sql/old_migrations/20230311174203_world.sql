-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2981

UPDATE `quest_template` SET `OfferRewardText` = 'Oh, a letter?$B$B<Rugnar begins to read intently.>$B$BWell, this is unexpected news, I must offer my thanks for everything you\'ve done. The last thing I expected was a letter back so quickly. Take this, for all of the troubles.' WHERE `entry` = 55023;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2992

UPDATE `quest_template` SET `RewRepFaction1` = 69, `RewRepValue1` = 125 WHERE `entry` = 40706;
UPDATE `quest_template` SET `RewRepFaction1` = 69, `RewRepValue1` = 125 WHERE `entry` = 40707;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2958
-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2959

UPDATE `quest_template` SET `RequestItemsText` = 'Each day we must stay vigilant to combat the growing darkness.', `OfferRewardText` = 'This has been a long time coming, I would have never imagined this monster would be removed from the world this soon.$B$BYou may have the potential to follow in my footsteps, given your prowess in finding demons.' WHERE `entry` = 40398;

UPDATE `quest_template` SET `Details` = 'You have done me a great service in gathering this artifact from amongst those demonic worshippers. It will be better served in my hands, rather than to serve evil.$B$BI may have used you for my own good, but I am not a traitor, and I will make it worth your while now that you have achieved what I desired. I will forge for you a Glaive in my namesake, one that can slay all manner of the Burning Legion. But, I will not depart with such a weapon so easily, I require one last exchange.$B$BDeep within the Sunken Temple are the guardians of the Green Dragonflight, corrupted, and twisted from their long slumber in the Emerald Dream. One of their defenders, Hazzas is one I knew long ago, he is a powerful being, and should not be tormented any longer.$B$BBring me his heart, and free him from torment, only then will you earn your reward.', `OfferRewardText` = 'The Heart of Hazzas, you are resourceful $r, much more than I would have ever anticipated, now then, to forge your weapon,as I had promised.' WHERE `entry` = 40400;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/2993

UPDATE `creature_template` SET `loot_id` = 7397 WHERE `entry` = 60920;
UPDATE `creature_template` SET `loot_id` = 7397 WHERE `entry` = 60921;
UPDATE `creature_template` SET `loot_id` = 7397 WHERE `entry` = 60922;

-- Fixes https://github.com/slowtorta/turtlewow-bug-tracker/issues/867

UPDATE `game_event` SET `start_time` = '2020-03-31 00:19:48' WHERE `entry` = 152;

 UPDATE `spell_template` SET `name`='Pattern: Shadowskin Boots' WHERE (`entry`='47241');
 UPDATE `spell_template` SET `castingTimeIndex`='14' WHERE (`entry`='47241');
 
 UPDATE `spell_template` SET `description`='Begins taming a beast to be your companion. Your armor is reduced by $s3% while you focus on taming the beast for $d. Once tamed, the beast will be very unhappy and disloyal. Try feeding the pet immediately to make it happy.' WHERE `entry`='1515'; 
 
 UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2086;
 UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 2087;