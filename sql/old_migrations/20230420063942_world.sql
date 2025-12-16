UPDATE quest_template set RewXP = 1250 WHERE entry = 40140;
UPDATE quest_template set RewXP = 1250 WHERE entry = 40138;

UPDATE item_template SET Name = 'Tarnished Necklace' WHERE entry = 60517;

UPDATE item_template SET Description = 'This silver necklace has been worn by the elements. Under the grime, glittering sapphires adorn undulating tendrils that resemble the rays of the sun branching from the golden disk at its center.' WHERE entry = 60517;

UPDATE quest_template SET
Details = 'Hello! You look strong and I need the help of someone like you!$B$BI am Krilana, mama Eliza is taking care of me because my real mom has become a star in the sky. She has told me everything I know about my family. In one of her stories, mama mentioned a necklace that my papa gave to my real mom as a sign of their love, but it was lost in the shipwrecks by the northwestern coast of this isle.$B$BExcept for mama''s stories I have nothing to remember my parents. Could... could you please look for the necklace? I heard that it was pretty and that it looked like the sun! I wanted to go and look for it myself, but mama won''t let me: she says that ghosts haunt the place.',
Objectives = 'Find the Tarnished Necklace and put the Mournful Apparition to rest for Krilana in Caelan''s Rest.',
RequestItemsText = 'I like stargazing at night, I know my mom is looking at me and I don''t want her to think I''ve forgotten her.$B$BDid you find her necklace?',
OfferRewardText = 'You found it! Thank you, thank you, thank you! Woooah, it really looks like a sun! You''re my new best friend!$B$BThere aren''t many children here besides me, so I feel lonely sometimes. But with this necklace, I can be brave like my mom and dad.$B$BThey were sailors and one day I''ll be a marine just like mama Eliza!'
WHERE entry = 40370;