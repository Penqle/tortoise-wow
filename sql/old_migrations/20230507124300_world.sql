-- Random n after "I don't want to", also should say "One thing I know, is that they are a danger for our outpost".
-- Pluralise 10 Serpent Guards and 8 Spitelash Sirens.

UPDATE `quest_template` SET `Objectives` = 'Slay 6 Lingering Highborne, 10 Spitelash Serpent Guards, and 8 Spitelash Sirens for Dag\'grak Bloodfist at Bloodfist Point in Azshara.', `Details` = 'It may not look like it, $C, but we are in middle of a warzone. Highborne ghosts that linger in the forests clash with the Naga, for reasons I don\'t understand, and I don\'t want to.\n\nOne thing I know, is that they are a danger for our outpost. They may be fighting each other for now, but it won\'t last forever. We should strike now, when they are weak.\n\nGo to Ruins of Eldranath. Kill the Naga, eliminate the Highborne. Show them, that Bloodfist Point is to be reckoned with.' WHERE `entry` = 40283;

-- Should say "Spitelash were created"

UPDATE `quest_template` SET `Details` = 'The Myrmidons of Rethress swore a sacred oath upon the stones of the Temple Rethress beneath the deep waves. Their word was their bond, but they broke the word of their sharp tongues and the oath they promised to keep. We were tasked with protecting Tide Mistress Rashal and carrying out her whims and deeds for the greater depths of all Naga.$B$BWhen the Spitelash were created, and the division began, all of the Myrmidons changed sides. They betrayed those loyal to the Rethress on orders from Naszharr and slew many of my most trusted brothers upon The Shattered Strand.$B$BI want them dead, interloper. I want their corpses to be feasted on by the depths. From their bodies, take their Myrmidon Signet\'s—a ring given to them upon swearing their oath.' WHERE `entry` = 40036;

-- Remove the Apostrophe from Slayers

UPDATE `quest_template` SET `Objectives` = 'Kill 10 Blackrock Slayers and return to Tarsokk in Flame Crest.' WHERE `entry` = 40257;

-- Remove the apostrophe from Signets

UPDATE `quest_template` SET `Objectives` = 'Gather 20 Blackrock Signets from Blackrock Orcs for Tarsokk in Flame Crest.', `Details` = 'The Blackrock Clan belongs to the Old Horde, a very large and dangerous enemy to Orgrimmar. Do not be fooled by the distance between the Blackrock Mountain and Orgrimmar. Should the Blackrock Clan ever gain a sizeable amount of strength, they will come to destroy us as well. The Old Horde consists of many factions that remained here on the Eastern Kingdoms during their fights in the First and Second War\'s and are a grizzled enemy that should not be underestimated.$B$BI have been sent here directly from Orgrimmar to be a damper on the Blackrock Clan, and you shall help. It is the honor of the Horde that is at stake after all.$B$BGather me 20 Blackrock Signets, they are worn by all of the Blackrock Clan in the region, kill them, and obtain these signets.' WHERE `entry` = 40256;

-- Quest name: Tower of Lapidis V
-- Issue: Typo, extra comma
-- Proposed fixes:
-- - "greater skill then I to do this" to "greater skill than I to do this"
-- - Remove the comma from "potent, and complex" 

UPDATE `quest_template` SET `Objectives` = 'Return the Enchanted Brass Key to Hydromancer Flakereef.', `Details` = 'With the key enchanted, one piece of the puzzle has been put into place. I however, do not possess the skillset able to give this key an attunement of that who created it. The power that once attuned this key is incredibly potent and complex, and will need someone of greater skill than I to do this. You may return the key to Hydromancer Flakereef, perhaps he may know of another.' WHERE `entry` = 40167;

-- Quest name: Tower of Lapidis VI
-- Issue: Multiple
-- Proposed fixes:
-- - These two sentences seem weird. Is the second one missing a noun? "I hadn't imagined Lapidis could harness such power, even into such a small object such as this key. Perhaps there is another that could be of assistance. "
-- - Space before a comma
-- - "eminated" instead of "emanated"

UPDATE `quest_template` SET `Objectives` = 'Find Magus Valgon on Lapidis isle, and inquire about the Enchanted Brass Key.', `Details` = 'I hadn\'t imagined Lapidis could harness such power, even into such a small object such as this key. Perhaps there is someone else that could be of assistance. The fleet had a Magus with us when we first began to establish Caelan\'s Rest. Shortly after he departed in search of a latent , powerful magic that emanated from the island.$B$BWhen he returned he spoke of a great hermit that was beyond his own power, and that of others he seen in his lifetime. He ventured out once more to learn from this figure, and to study out in the island. If there is something that can be done, perhaps Magus Valgon can help us get the answer. You should be able to find him somewhere on this island, I would imagine he has a camp somewhere.' WHERE `entry` = 40168;

-- Quest name: Tower of Lapidis VII
-- Issue: Multiple
-- Proposed fixes:
-- - "I do not think I can assist with this, friend, the complexities " instead of "I do not think I can assist with this friend, the complexities "
-- - Remove "both" from "nestled in between both Gillijim and Lapidis Isle"
-- - "more powerful than" instead of "more powerful then" 
-- - "If there is anyone who could attune this key" instead of "If there is any who could attune this key"

UPDATE `quest_template` SET `Objectives` = 'Travel to Kazon Island and speak with the troll hermit Insom\'ni.', `Details` = '<After studying the Enchanted Brass Key it would appear that Magus Valgon is stumped>.$B$BI do not think I can assist with this, friend, the complexities of the magic may take many weeks to begin to crack, and I think you do not have such time to wait.$B$BI do know one who knows a great deal of magic, hidden away from the world. There is a hermit that remains somewhat hidden upon the island of Kazon, nestled in between Gillijim and Lapidis Isle.$B$BGo there, and find Insom\'ni, he is a powerful troll, much more powerful than any I have met.$B$BIf there is anyone who could attune this key, it would be him.' WHERE `entry` = 40169;

-- Quest name: Tower of Lapidis VIII
-- Issue: Semantic redundancy
-- Proposed fixes:
-- Remove either "at no cost" or "for free" as they mean the same thing: "I can do this, though I must wonder why I would help you, especially for free, and at no cost."

UPDATE `quest_template` SET `Objectives` = 'Obtain Pethax\'s Horn for Insom\'ni on Kazon Island.', `Details` = '<It would only take a single glance at the key with inquisitive eyes for the troll to crack a small smirk>.$B$BI can do this, though I must wonder why I would help you, especially for free.$B$BIf you want me to work the magic of this key, and attune it for you, I will need a favor from you. There is a satyr of whom I knew a long time ago, one who still walks this world today. Let us say that me and him are not on the best of standing and I want you to bring me one of his gnarled horns from his battered corpse.$B$BTravel to Felwood, to the Ruins of Constellas, you will find Pethax Blackhorn there, it is his horn I desire.' WHERE `entry` = 40170;

-- Quest name: Tower of Lapidis X
-- Issue: Extra conjunction
-- Proposed fixes:
-- Remove the first "and" in "Venture into The Tower of Lapidis, and slay Arch Hydromancer Lapidis, and return his head to Colonel Hardinus in Caelan's Rest. "

UPDATE `quest_template` SET `Objectives` = 'Venture into The Tower of Lapidis, slay Arch Hydromancer Lapidis, and return his head to Colonel Hardinus in Caelan\'s Rest.' WHERE `entry` = 40303;
