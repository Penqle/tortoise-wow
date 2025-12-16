-- Fixed Shellcoin vendor text ~by RMJ
UPDATE broadcast_text SET male_text = 'Welcome to the Shell Co. Trading Company!\n\nI\'m a genius! I have invented a brand new currency which will take Azeroth by storm! The magical Shellcoin will forever change the way we exchange goods, with every coin being unique a irreplaceable.\n\nDown on your luck? Now is the time to invest in Shellcoin! Watch the market and hit it big!', female_text = 'Welcome to the Shell Co. Trading Company!\n\nI\'m a genius! I have invented a brand new currency which will take Azeroth by storm! The magical Shellcoin will forever change the way we exchange goods, with every coin being unique a irreplaceable.\n\nDown on your luck? Now is the time to invest in Shellcoin! Watch the market and hit it big!'WHERE entry = 60903;

-- Fixed Imp Faction & NPC name ~by RMJ
UPDATE creature_template SET faction = 35 WHERE entry = 80129;
UPDATE creature_template SET name = 'Skeptic Peon' WHERE entry = 51236;

-- Made Items Unique ~by RMJ
UPDATE item_template SET max_count = 1, stackable = 0 WHERE entry in (80150, 80151, 80152, 80153, 80154);

-- Fixed Questchains and text ~by RMJ
UPDATE quest_template SET nextquestinchain = 80103 WHERE entry = 80102;
UPDATE quest_template SET details = 'We\'re in a tough spot. The boss is scary, but he ain\'t worth fighting hordes of ghosts or some ancient curse. When he finds out we bailed on this gig, he\'ll have us hunted to the ends of Azeroth.\n\nAs much as it pains me to say, we\'re gonna have to cower and hide behind some real muscle if we don\'t all want to end up six feet under.\n\nThere\'s only one force in Azeroth that even the boss wouldn\'t cross: The Horde. Sure, they don\'t like us, but we\'ve got better odds with the Horde than with the boss!\n\nWe ain\'t got many choices. No one else would take a bunch of deadbeat Venture Co. refugees. If there\'s even a chance we can win them over, we\'ve at least gotta try.\n\nIt\'s that or spend the rest of our lives on the run. Time for us to go straight, $N.',
offerrewardtext = 'Alright, we made it to Durotar. Step 1 complete.\n\nNow for Step 2 of my master plan... That I just made up.' WHERE entry = 80108;
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 2211;