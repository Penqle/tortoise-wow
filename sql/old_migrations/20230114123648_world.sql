-- Removed Poisoncloud from goblin npc in UC
UPDATE creature_template SET auras = 0 WHERE entry = 8;

-- Added questitem from Gobo  starting area to creature 
REPLACE INTO creature_loot_template VALUES (80119, 80170, -75, 3, 1, 1, 0);

-- Fixed Sorcerer Ashcrombe attacking players
UPDATE creature_template SET unit_flags = 37440 WHERE entry = 3850;