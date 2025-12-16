UPDATE quest_template SET
RequiredRaces = 0,
RewXP = 4950,
RewMoneyMaxLevel = 2970,
Details = 'We are not the only ones who celebrate this holiday, $N. All creatures, all cultures, are touched by the flame. Even in the darkest places, the fires are being lit.$B$BIf you wish to see them for yourself, travel into the depths. Seek out the bonfires burning within Stratholme, Scholomance, among the ogres of Dire Maul, and the halls of Blackrock Spire itself; I will await your return.',
RequestItemsText = '',
OfferRewardText = 'Your essence sings with the energy of the flames you found, $N. The fire you encountered is potent, and with the right knowledge, its power can be harnessed...$B$BAh! Here we are. May this light your path, no matter where you tread.'
WHERE entry = 9319;

UPDATE quest_template SET
RequiredRaces = 0,
RewXP = 0,
RewMoneyMaxLevel = 0,
PrevQuestId = 9319,
SpecialFlags = 1,
RewItemId1 = 23247,
RewItemCount1 = 10,
RewItemId2 = 0,
RewItemCount2 = 0,
Details = 'An eager one, aren''t you? If you''re willing to enter the depths once more, I''ll gladly reward you.$B$BSeek out the bonfires burning within Stratholme, Scholomance, Dire Maul, and the halls of Blackrock Spire itself; I look forward to your return, $N.',
RequestItemsText = '',
OfferRewardText = ''
WHERE entry = 9386;
