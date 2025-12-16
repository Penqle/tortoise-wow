-- NPC Vilewing Bat, Vilewing Batling Greater Vilewing Bat The bat are tamed correctly and eats food appropriate for the pet's class. (https://github.com/slowtorta/turtlewow-bug-tracker/issues/6190)
update creature_template set beast_family = 24 where entry in (61230,61231,61401);
-- NPC Gelwig Darkbrow have correct name #5790
update creature_template set name = 'Gelwig Darkbrow' where entry = 60955;
-- Quest: Danonzo's Tel'Abim Surprise have correct short description. #5584
update quest_template set Objectives = 'Gather a Gargantuan Tel\'Abim Banana, a Heart of the Wild, and Soothing Spices for Chef Danonzo Laxjolt at Tel Co. Basecamp in Tel\'Abim.' where entry = 40752;
-- Quest: A Flickering Flame have correct main description. #5559
update quest_template set details = 'Why hello there!$B$BWhat, shocked to see a gnome so far west? Well, you should be, there isn\'t many of my kind so far from home.$B$BOr well, what used to be home.$B$BEither way, I\'m looking to conduct experiments now that I have some time and space to myself, the first of which requires some flammable, and quite dangerous materials!$B$BFar to the west is a place called The Charred Vale, it is there that roving flame elementals can be found, from them I\'d like to acquire something called a \'Flickering Flame\'. Get it for me, and I\'ll make sure you\'re compensated.' where entry = 40699;
-- Solid Chest in the Tanaris (75.3, 46.1) is now available for looting. #5757
update gameobject set position_x = -7994.63, position_y = -5415.51, position_z = 1.12023 where guid = 62962;
-- Battered Chest in the Tanaris (71.4, 76.6) is now available for looting. #5703
update gameobject set position_x = -9713.45, position_y = -945.268, position_z = 38.428, orientation = 2.29616 where guid = 62180;