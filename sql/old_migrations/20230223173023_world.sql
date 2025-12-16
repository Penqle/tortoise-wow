UPDATE quest_template SET
RequestItemsText = 'You have not yet taken four bases, $N. Return to Arathi Basin and do as you have been tasked!',
NextQuestInChain = 0
WHERE entry = 8114;

UPDATE quest_template SET
RequestItemsText = 'You have not yet completed your mission, $N. It is difficult, but my faith in you is strong.',
OfferRewardText = 'You did it!  You took all of the bases! Well done, $N!$B$BThere were those who doubted your chances, but I knew you could do it. Thank you, and know that the League of Arathor holds you in high regard, just as the Defilers of the Forsaken must fear the very mention of your name!',
PrevQuestId = 0
WHERE entry = 8115;

UPDATE quest_template SET
RequestItemsText = 'Return to Arathi Basin, $N, and perform the task for which you were sent to do! Capture and hold four bases!',
OfferRewardText = 'Good work, $N! Your latest actions in Arathi Basin were quite difficult, and so their successes are quite praiseworthy. The League of Arathor must be reeling from the last skirmishes in the basin, licking their wounds and, let us hope, rethinking their choice to fight here.',
NextQuestInChain = 0
WHERE entry = 8121;

UPDATE quest_template SET
RequestItemsText = 'Return to Arathi Basin, $N, and perform the task for which you were sent to do! Capture and hold all five bases!',
OfferRewardText = 'The cries of the Alliance as you and your compatriots attacked them could be heard even from here, $N. I can almost pity them for the pain and fear you delivered to their ranks. Almost, but not quite.$B$BYour value to the Defilers is without question. Your deeds in Arathi Basin have been most impressive, and have echoed among the chambers of Varimathras... and the Dark Lady herself.',
PrevQuestId = 0
WHERE entry = 8122;


