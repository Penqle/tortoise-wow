update quest_template set details = 'With the pleasantries out of the way, it is time I let you in on our next move. I knew from the start that gaining the support of the Kaldorei would be hard, given our shared history.\n\nBut we must show them that we are not the enemy.\n\nThat is why I have sent a detachment of my best rangers to assist them, and they were successful in uncovering that a powerful Satyr is plotting to invade Ashenvale from Felwood.\n\nThey had discovered that the Satyr and his minions gathered around an intriguing artifact of fel power- Corrupted Felstone, which is located near the border of Felwood, north of Raynewood\'s Retreat. If the Satyr is given free reign… who know what could happen.\n\nWe must stop him. Once you are close to the Felstone, destroy it. The Satyr will definitely try to prevent its destruction and attack you. Our rangers will then come out of hiding and help you. Make sure to take proof of your victory to the Ashylah Starcaller in Darnassus.\n\nShe is an ally to our cause.', objectives = 'Interact with the Corrupted Felstone to provoke Satyrs near the border of Felwood. Defeat the Satyr threat and take the Satyr horns to Ashylah Starcaller in Darnassus.' where entry = 40377;

-- Add the following items to NPC Hingozu sell table with a 10hr reset cooldown 
replace into npc_vendor values (60751, 50024, 1, 36000, 0, 0);
replace into npc_vendor values (60751, 50025, 1, 36000, 0, 0);

replace into item_template values
 ('50025', '4', '2', 'Heavy Desert Leggings', '', '18962', '2', '0', '1', '78536', '9634', '7', '-1', '-1', '49',
 '44', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '3', '7', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '132', '0', '0', '5',
 '0', '0', '0', '13384', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '65', '0', '0', '0', '0', '45', '0', '0', '0',
 '0', '1', NULL);
 
 replace into item_template values
 ('50024', '4', '2', 'Sandfury Sash', '', '16919', '2', '0', '1', '71368', '5342', '6', '-1', '-1', '49',
 '44', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
 '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '72', '0', '0', '5',
 '0', '0', '0', '7597', '1', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0',
 '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0', '-1', '0', '0', '0', '0', '-1', '0',
 '-1', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '30', '0', '0', '0', '0', '27', '0', '0', '0',
 '0', '1', NULL);
 
update quest_template set objectives = 'Find a sack of the Magical Grains in Go\'shek Farm in Arathi Highlands, and bring them to Tarrel Holk at Stromgarde Keep.', details = 'Magical grains huh? Well I\'m the one that enchanted them long long ago. They were made to help the cavalry and help the livestock plow the fields faster and longer, but then tragedy struck.\n\nThe orcs invaded what is now known as Go\'shek Farm and the entire stock of the grain has been lost since then.\n\nIf you\'re lucky you might still find a sack of it, presuming the orcs didn\'t get their filthy hands on it.\n\nI wish you good luck and I hope we meet again one day.' where entry = 40512;

update quest_template set details = 'It has been a while since the Troll Hunter\'s of Stromgarde have had the chance to practice their trade. We have been confined defending our section of the city now for too long, under constant threat.\n\nOur main enemy is biding their time, and gathering their strength. The trolls have been at war with us for generations. My fathers, their fathers, and even their own have fought troll.\n\nWe will strike at them, to show them that Stromgarde will not lay down idle. Far to the east is Witherbark Village, go there, and kill ten Witherbark Shadow Hunters.' where entry = 40451;


