-- Fixed objective typo in quest https://database.turtle-wow.org/?quest=40264
UPDATE quest_template SET
Objectives = 'Convince Lord Cruk''Zogg to end his foolhardy aggresion on behalf of Haz''gorg the Great Seer.'
WHERE Entry = 40264;


UPDATE quest_template SET
Details = 'Trust is something you can''t buy, $R. Here''s the deal, lad. You earn the trust of this gryphon over here and you''ll get your ride to the camp. Fail and he''ll have you as his breakfast.$B$BHah! Of course I''m pulling your leg here, lad. This winged beast won''t even budge unless it trusts you completely. How, you ask? Food, of course. And a toy. Go figure. He likes to gnaw on them discarded bones the Lion''s Pride Inn''s cook throws out with the trash. He''s gone and snapped all his, judging by the refuse at his talons.',
RequestItemsText = 'The gryphon stares at you but doesn''t seem to be very satisfied with all his cawing and disturbed jabbering. He clearly looks hungry and frustrated. Perhaps a handful of famous Dwarven Mild could do some good?',
OfferRewardText = 'The gryphon sniffs the air that surrounds you excitedly, sensing the treats you''ve brought. His pupils grow wide and he chirps with joy at the sight of his favorite Chew Toy in your hand.$B$BHe looks happy!'
WHERE Entry = 60070;

-- Corrected Moonstone to Lesser Moonstone for quest https://database.turtle-wow.org/?quest=40561
UPDATE quest_template SET
Details = 'Very well. If it is Captain Vimes'' wish... who am I to say no? But, if we are to make the ritual as safe as possible for the spirit and for us, I will need some rare ingredients. Your best bet would be buying them in Dalaran... well, if it still existed.$B$BI have heard rumors that the Kirin Toris trying to rebuild the magical city, so if you don''t mind traveling... Maybe they have some ingredients needed. The rest can be found in these swamps, if you have a keen eye.$B$BI need 1 Arcane Resonator from Dalaran, 3 Lesser Moonstones and 10 Swamp Ooze Ichors. I heard reports of ooze abominations in the south.',
Objectives = 'Bring 1 Arcane Resonator, 3 Lesser Moonstones and 10 Swamp Ooze Ichors to Magus Halister at Theramore Isle in Dustwallow Marsh.'
WHERE Entry = 40561;

-- QA Fixes for https://database.turtle-wow.org/?quest=60154
UPDATE quest_template SET
MinLevel = 4,
QuestLevel = 10,
RequiredRaces = 589,
RewXP = 1020,
Details = 'Shortly after you returned from scouting the Jasperlode Mine, I received reports that a brood of spiders have been seen moving from Duskwood into the depths of the mine. Worse still, they''re preying on the kobolds in the mine, giving them an abundant source of food with which to increase their population.$B$BKobolds, the Defias, and now spiders? We cannot afford to spread our forces any thinner to deal with yet another threat. Return to the Jasperlode Mine and clear out the infestation before they encroach upon the whole of Elwynn Forest!',
OfferRewardText = 'Such a relief it is to know that those spiders will threaten Elwynn no more. Please accept this coin on behalf of Stormwind.'
WHERE entry = 60154;

-- Fixed Objective typo for https://database.turtle-wow.org/?quest=80262
UPDATE quest_template SET ObjectiveText3 = 'Search Dwarven District Embassy' WHERE entry = 80262;