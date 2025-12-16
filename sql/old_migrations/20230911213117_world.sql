UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Why yes... these will be of tremendous aid!  These materials are awfully hard to come by in the desert, $N.  Thank you.'
WHERE entry IN (8779, 8807);
