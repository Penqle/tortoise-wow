UPDATE `quest_template` SET `Title` = 'The Harvest Golem Mystery' WHERE `entry` BETWEEN 40470 AND 40485;

UPDATE `quest_template` SET
`Details` = 'The mysterious animation runes... I\'ve been trying to get my hands on one, but as a shopkeep, I ain\'t exactly suited to fight mechanical monsters.$B$BI work for a... certain someone who is investigating the harvest golems in Westfall. If you could recover a rune, I\'ll make it worth your while!$B$BYou can find them in any harvest golem in the region.',
`OfferRewardText` = 'What a fine specimen! A little cracked, but this should work just fine. My client is trying to get to the bottom of what caused these golems to go haywire, and he needs all the samples he can get.$B$BI have another task for you, and I\'m willing to spare some coin for your trouble if you\'re interested.'
WHERE `entry` = 40470;

UPDATE `quest_template` SET `Details` = REPLACE(`Details`, '\n\n', '$B$B');
UPDATE `quest_template` SET `RequestItemsText` = REPLACE(`RequestItemsText`, '\n\n', '$B$B');
UPDATE `quest_template` SET `OfferRewardText` = REPLACE(`OfferRewardText`, '\n\n', '$B$B');

UPDATE `quest_template` SET
`Details` = 'Whoa, whoa, easy there, champ! I can see you\'re chomping at the bit to tame a wild beast, but there\'s a catch. Us goblins don\'t exactly get along with nature, know what I mean?$B$B<Viz gives grins wryly.>$B$BLet me show you how it\'s done, the goblin way. See this rod? It comes with a special collar that I call the "Friend Request". You put this around any wild animal\'s neck and that beastie becomes your bestie, get me?$B$BProbably oughta start you on something easy. A Dire Mottled Boar should be simple. You\'ll find them wandering around just outside of Razor Hill.$B$BEven a kid like you should be able to do that much. So don\'t waste my time by coming back here without one!',
`OfferRewardText` = 'So you\'re not completely incompetent. Alright then, let\'s really test your beast-wranglin\' skills!'
WHERE `entry` = 80331;

UPDATE `quest_template` SET `RewXP` = 85,`RewMoneyMaxLevel` = 60 WHERE `entry` = 80339;
UPDATE `quest_template` SET `RewXP` = 85,`RewMoneyMaxLevel` = 60 WHERE `entry` = 80366;

UPDATE `quest_template` SET `RewXP` = 840 WHERE `entry` BETWEEN 80331 AND 80333;
UPDATE `quest_template` SET `RewXP` = 420 WHERE `entry` = 80334;