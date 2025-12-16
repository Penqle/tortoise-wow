-- Set https://database.turtle-wow.org/?item=60856 to proper Quest Item to prevent exploit behavior
UPDATE item_template SET
class = 9, subclass = 0, bonding = 4
WHERE entry = 60856;

-- Deekin's quest edits
UPDATE quest_template SET RewXP = 300 WHERE entry = 80300;
UPDATE quest_template SET RewXP = 1000 WHERE entry = 807;

-- Unchain https://database.turtle-wow.org/?quest=40383 which has a CompleteScript.
UPDATE quest_template SET NextQuestInChain = 0 WHERE entry = 40383;

UPDATE quest_template SET
Title = 'In Need of Ol'' Biggins',
Objectives = 'Find Ol'' Biggins in the Ravenholdt Manor and pay him 3 gold coins for his tutelage.',
Details = 'This magic is potent, but without the proper mechanical understanding of locks, you won''t be able to open the most difficult locks in this world...$B$BPerhaps a talented rogue or master thief could help you with your dilemma. Rumors tell of a haven for rogues, assassins, and black operatives holed away between the mountains in northern Hillsbrad Foothills. No doubt such a service will not come cheap, however.',
OfferRewardText = 'I can''t stand the smell of magic. I''m sure you understand that if I am to help you, I expect just compensation for my time and tolerance of that odor of sorcery about you. Pay up and pay attention, that I may dismiss you with haste!'
WHERE entry = 50005;

-- Convert https://database.turtle-wow.org/?quest=40631 to standard non-accepted repeatable
UPDATE quest_template SET
Details = '',
RequestItemsText = 'We Gelkis are unlike many of the other tribes in that our connection with the elements is powerful and deeply entrenched in our culture. It is a connection we value above all else in this world. Yet our irreverenc and ebrutish abuse of this gift in the past has strained our relationship with the spirits.$B$BIf we are to make a future for our clan and repair the damage we have caused to our spiritual strength, we must commune with the elements and plead our case and offer deference to them. To this end, we will need a great deal of elemental energy.$B$BAll around this region are swirling vortexes of wind and air. From them, I would have you gather 12 Elemental Air.',
OfferRewardText = 'I see you have returned from chasing the storms, at last. Did the spirits prove to be as torrid and unforgiving as the rest of this land?$B$BYou have done us a great service, $N, I will make sure that these materials go to good use.',
RewXP = 0
WHERE entry = 40631;

-- Convert https://database.turtle-wow.org/?quest=40619 to standard non-accepted repeatable
UPDATE quest_template SET
Details = '',
RequestItemsText = 'If we''ve learned anything in our campaign of war, it is that food is more important even than the deadliest of weapons. Without energy, one cannot fight. In such a desolate landscape with such scarcity, we are far from achieving our true ambitions. I ask that you remedy this situation.$B$BAll across Desolace you will find the mighty kodo, full of thick, heavy, abundant meat. It would make for the perfect meal for any warrior. Ride out and collect this Heavy Kodo Meat for the Magram clan. Do not disappoint me.',
OfferRewardText = 'Did you have trouble downing such a large beast?$B$B<Warcaller Dekshar smirks at you.>$B$BThis food will fill the stomachs of our warriors, and they shall regard you with newfound respect for your contributions to our efforts.',
RewXP = 0
WHERE entry = 40619;