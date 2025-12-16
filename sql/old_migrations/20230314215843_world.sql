UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 10 WHERE id  = 2010921;
UPDATE gameobject SET spawntimesecsmin = 5, spawntimesecsmax = 10 WHERE id  = 2010922;


UPDATE creature SET spawntimesecsmin = 60,spawntimesecsmax = 60 WHERE guid IN (46925, 39059, 36533, 37085, 37096, 38663, 8975);
UPDATE creature SET spawntimesecsmin = 120,spawntimesecsmax = 120 WHERE guid IN (37066, 37071, 12263, 12303, 13058, 6645, 49850, 47967, 48031, 13001, 3369, 12341, 12336, 12375, 2560948, 6435, 6434, 12204, 6455, 6427, 6428, 6429, 6430, 6431, 6432, 6456, 2571392, 12325, 44986, 44957, 44964, 28442, 44715, 28441, 44670, 37875);
UPDATE creature SET spawntimesecsmin = 150,spawntimesecsmax = 150 WHERE id IN (3660);
UPDATE gameobject SET spawntimesecsmin = 60,spawntimesecsmax = 60 WHERE id IN (3000229, 3240, 3236, 1772001, 3290, 3640);
UPDATE gameobject SET spawntimesecsmin = 120,spawntimesecsmax = 120 WHERE id IN (13360, 12654, 13872);
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid IN (3239);
 
UPDATE gameobject SET spawntimesecsmin = 60,spawntimesecsmax = 60 WHERE id IN (2724, 271, 176793, 161557, 152094, 1673, 11714, 11713);
UPDATE gameobject SET spawntimesecsmin = 120,spawntimesecsmax = 120 WHERE id IN (276, 152095, 4406, 4608);
UPDATE gameobject SET spawntimesecsmin = 5,spawntimesecsmax = 5 WHERE guid IN (26242, 42673, 42662, 10868, 175329, 175330, 175331);

UPDATE creature SET spawntimesecsmin = 120,spawntimesecsmax = 120 WHERE guid IN (2556270, 80247, 80996, 80645, 80644, 80848, 80849, 80850, 80737, 80853, 80854, 80855, 81411, 81247, 2571876, 90394, 1502, 2569151, 5110, 6374, 9358, 9359, 9360, 8877, 8355, 8356, 8357, 9266, 9267, 8933, 8934, 47350, 49530, 46468, 49531, 49853, 49410, 49213, 49210, 49207, 46395, 46396, 46419, 47348, 49166, 49165, 48516, 46818, 2567643, 12596, 2499, 49624, 46305, 46306, 46307, 46310, 46311, 46314, 46315, 46316, 46317, 46318, 38176, 38177, 38178, 38179, 38180, 38181, 37523, 37566, 37567, 37568, 37569);
UPDATE creature SET spawntimesecsmin = 180,spawntimesecsmax = 180 WHERE id IN (2179, 2180) OR id2 IN (2179, 2180);

UPDATE quest_template SET objectives = 'Gather 3 Ancient Dust for the Forgotten Keeper at the Ruins of Zeth in Badlands.', RequestItemsText = 'Do not pity them.' WHERE entry = 40712;

REPLACE INTO `creature` VALUES (2574732,92145,0,0,0,0,-14071.1,2970.84,8.32502,3.59494,120,120,0,100,100,0,0,0);

UPDATE creature SET spawntimesecsmin = 120,spawntimesecsmax = 120 WHERE guid IN (44988, 44990, 45020, 44611, 44617, 44626, 45038, 44581, 44766, 44739, 2569248, 44786, 15080);
UPDATE creature SET spawntimesecsmin = 120,spawntimesecsmax = 120 WHERE id IN (1535, 1536, 1537, 1538, 1539, 1540, 1660, 1941, 1674, 1675);
UPDATE gameobject SET spawntimesecsmin = 30,spawntimesecsmax = 30 WHERE guid IN (180226, 180227);