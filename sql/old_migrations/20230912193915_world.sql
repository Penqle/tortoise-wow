UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Ah, yes.  These materials are of excellent quality.  Thank you, $N.'
WHERE entry IN (8783, 8809);

UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Just in time.  These supplies will save lives, $N.  Your work is appreciated.  Here''s your next assignment.'
WHERE entry IN (8496, 8810);

UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Ah, we were in need of these.  Your work is appreciated, $N.'
WHERE entry IN (8782, 8808);

UPDATE quest_template SET
RequestItemsText = 'You have something for me?',
OfferRewardText = 'Excellent.  We were in need of these, $N.  Good work.'
WHERE entry IN (8541, 8806, 8540, 8805);

UPDATE quest_template SET
RequestItemsText = 'You have something for me?',
OfferRewardText = 'Excellent!  We were in need of these, $N.  Thanks.'
WHERE entry IN (8497, 8804);

UPDATE quest_template SET
RequestItemsText = 'You have something for me?',
OfferRewardText = 'Yes, I believe these shall suffice.  I shall craft these into the colors worn by the Twilight Hammer''s emissaries.  I pray to Elune that my skills will be able to fool our enemies once more.$B$BBut do not be concerned with that, you''ve done your part and for that you will be appropriately rewarded.  You are a loyal and worthy ally, $N.'
WHERE entry = 8829;

UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Thanks, I''ll hand these out to the lads.'
WHERE entry = 8780;

UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Ah, yes... I will distribute these to the troops, $N.  The Orgrimmar Legion thanks you!'
WHERE entry = 8787;

UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Oh, excellent!  I won''t have to hear complaints about dull blades anymore.  Thank you, $N.'
WHERE entry = 8781;

UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Excellent work.  We were in short supply of these, $N.'
WHERE entry = 8786;

UPDATE quest_template SET
RequestItemsText = 'You have something for me, $N?',
OfferRewardText = 'Ah, yes!  These will come in handy!  Much obliged, $N!'
WHERE entry = 8778;

UPDATE quest_template SET
RequestItemsText = 'Do you have my materials, $N?',
OfferRewardText = 'Ah, yes.  Just what I needed!  I''ll make a special concoction with this.  The silithid won''t like it one bit!'
WHERE entry = 8775;
