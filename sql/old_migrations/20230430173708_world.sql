-- Fix auto-complete quests in Tel'Abim https://github.com/slowtorta/turtlewow-bug-tracker/issues/3353
UPDATE quest_template SET Method = 0 WHERE entry IN (40739, 40740);

-- Decrease use rate of https://database.turtle-wow.org/?spell=6264 on NPC https://database.turtle-wow.org/?npc=3378
UPDATE `creature_spells` SET `probability_2` = 60 WHERE `entry` = 33780;