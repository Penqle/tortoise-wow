-- Larannikus, display ID 9584, faction 44, level 61 elite, dragonkin, scale 1.2, casts 24839 every 15 seconds, casts 21807 every 8 seconds (has 75 nature resistance).
REPLACE INTO creature_template VALUES
(61556, 9584, 0, 0, 0, 0, 'Larannikus', NULL, 0, 61, 61, 14253, 14253, 4500, 4500, 4391, 44, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 562, 562, 0, 284, 2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 203.77, 289.86, 100, 2, 0, 61556, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '');

-- Required items: 1 Charge of Ysera (display id 31204, stackable to 1, drops from Larannikus at 100%).
replace into creature_loot_template values
(61556,61561,-100,0,1,1,0);


