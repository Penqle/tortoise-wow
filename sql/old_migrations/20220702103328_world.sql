-- ServerToDo Cleanup 
UPDATE creature_template SET name = 'Warleader Zol\'majin' WHERE entry = 80802;

UPDATE item_template SET stat_type3 = 7 WHERE entry = 16953;

UPDATE creature_template SET subname = 'Chieftain of the Darkspear Tribe' WHERE entry = 10540;

-- Added new sign (Shang)
REPLACE INTO gameobject_template VALUES (6000004, 5, 24305, 'THE OLD CHURCH OF WESTFALL IS CLOSED', 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Changed Node position (dragunovi)
REPLACE INTO gameobject VALUES (3998576, 165658, 0, -7589.07, -2941.46, 144.305, 6.10282, 0, 0, 0.090061, -0.995936, 2700, 2700, 100, 1, 12, 0);