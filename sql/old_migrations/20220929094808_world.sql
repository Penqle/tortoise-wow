-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/2196
update quest_template set requiredraces = 434 where entry = 2932;
update quest_template set requiredraces = 434 where entry = 40013;
update quest_template set requiredraces = 434 where entry = 40011;

-- https://database.turtle-wow.org/?quest=70040 should require the player to have Blacksmithing profession learned to be visible.
update quest_template set requiredskill = 164, requiredskillvalue = 1 where entry = 70040;

-- Mavel Brightwood https://database.turtle-wow.org/?npc=50677 should not have a 5 minutes respawn timer 
update creature set spawntimesecsmin = 600, spawntimesecsmax = 650 where id = 50677;