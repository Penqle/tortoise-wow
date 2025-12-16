-- Changes by JOE
UPDATE `creature` SET `position_x` = -652.160706, `position_y` = 695.482971, `position_z` = -329.113892, `orientation` = 2.859456 WHERE `guid` = 33491;
REPLACE INTO `gameobject` VALUES ( 374694, 180248, 0, -12393.1, 298.543, -1.0622, 5.41052, 0, 0, -0.422618, 0.906308, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 374694, 180248, 0, -12393.1, 298.543, -1.0622, 5.41052, 0, 0, -0.422618, 0.906308, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 374694, 180248, 0, -12393.1, 298.543, -0.5, 5.41052, 0, 0, -0.422618, 0.906308, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 374694, 180248, 0, -12393.1, 298.543, 0, 5.41052, 0, 0, -0.422618, 0.906308, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 374695, 180248, 0, -12333.7, 299.923, 0, 0.366518, 0, 0, 0.182235, 0.983255, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 11012, 180248, 0, -12304.6, 351.361, 0, 1.06465, 0, 0, 0.507538, 0.861629, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 374691, 180248, 0, -12018.3, 627.952, -1.21586, 5.81195, 0, 0, -0.233445, 0.97237, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 374691, 180248, 0, -12018.3, 627.952, 0, 5.81195, 0, 0, -0.233445, 0.97237, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 47420, 180683, 0, -11993.8, 649.109, 0, -2.16421, 0, 0, 0.882948, -0.469472, 3600, 3600, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 20452, 180248, 0, -11862.1, 874.626, 0, -0.383972, 0, 0, 0.190809, -0.981627, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 20419, 180248, 0, -13264.1, 580.541, 0, -0.767945, 0, 0, 0.374607, -0.927184, 180, 180, 100, 1, 0, 0);
REPLACE INTO `gameobject` VALUES ( 47346, 180902, 0, -13414.4, 783.912, 0, 2.04204, 0, 0, 0.85264, 0.522499, 3600, 3600, 100, 1, 0, 0);


-- Summoned creatures activated by objects from quest Attack on the Tower

DELETE FROM event_scripts WHERE id IN(416,415,417);

INSERT INTO event_scripts (id, delay, priority, command, datalong, datalong2, datalong3, datalong4, target_param1, target_param2, target_type, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments)
VALUES
    (415, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1777.897949', '-1513.058228', 75.464, 5.328, 0, 'Summon on first floor Boulderfist Mauler'),
    (415, 2, 1, 10, 2570, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1777.897949', '-1513.058228', 75.464, 5.328, 0, 'Summon on first floor Boulderfist Shaman'),

    (417, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1778.006348', '-1496.458496', 90.608, 6.049, 0, 'Summon on second floor Boulderfist Mauler'),
    (417, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1778.006348', '-1496.458496', 90.608, 6.049, 0, 'Summon on second floor Boulderfist Mauler'),
    (417, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1784.847290', '-1523.668335', 90.608, 0.488, 0, 'Summon on second floor Boulderfist Mauler'),
    (417, 2, 1, 10, 2570, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1784.847290', '-1523.668335', 90.608, 0.488, 0, 'Summon on second floor Boulderfist Shaman'),

    (416, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1762.367554', '-1517.951172', 99.386, 3.156, 0, 'Summon on third floor Boulderfist Mauler'),
    (416, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1762.367554', '-1517.951172', 99.386, 3.156, 0, 'Summon on third floor Boulderfist Mauler'),
    (416, 2, 1, 10, 2569, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1781.638916', '-1495.511963', 99.386, 4.299, 0, 'Summon on third floor Boulderfist Mauler'),
    (416, 2, 1, 10, 2570, 120000, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, '-1781.638916', '-1495.511963', 99.386, 4.299, 0, 'Summon on third floor Boulderfist Shaman'),

    (415, 4, 2, 26, 2569, 0, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Mauler attacks on first floor'),
    (415, 4, 2, 26, 2570, 0, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Shaman attacks on first floor'),
    (417, 4, 2, 26, 2569, 0, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Mauler attacks on second floor'),
    (417, 4, 2, 26, 2570, 0, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Shaman attacks on second floor'),
    (416, 4, 2, 26, 2569, 0, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Mauler attacks on third floor'),
    (416, 4, 2, 26, 2570, 0, 0, 0, 0, 0, 0, 0 , 1, 0, -1, 1, 0, 0, 0, 0, 0, 'Boulderfist Shaman attacks on third floor');