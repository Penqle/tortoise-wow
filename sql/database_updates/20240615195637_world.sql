-- Kor'gan's unrequired space.
update broadcast_text set male_text = 'I have traveled far in search of a great magic that crackles strong. I have sensed its power all the way from Orgrimmar, and I must know more.$B$BNo doubt it is coming from the nearby Karazhan Tower, for what looms within is a mystery to all that must be uncovered. I could use your help, perhaps you are willing to lend assistance?' where entry = 60607;
-- Mystic Guay'jin renamed to Mystic Guya'jin.
update creature_template set name = 'Mystic Guya\'jin' where entry = 80801;
-- Radgan Deepblaze greetings text typo.
update broadcast_text set male_text = 'Oh, been loyal to ol\' Orvak me whole life, they tossed me out with the others, and we\'re all that remain.' where entry = 60607;
-- Incorrect item drop rate.
update creature_loot_template set ChanceOrQuestChance = -10 where item = 5366 and entry in (3725,3727,3728,3730,3879);