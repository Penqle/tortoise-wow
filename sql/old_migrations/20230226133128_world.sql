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



