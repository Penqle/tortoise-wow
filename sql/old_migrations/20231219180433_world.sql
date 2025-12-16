-- Spawntime fixes:

update creature set spawntimesecsmin = 300, spawntimesecsmax = 300 where guid > 2581732 and  spawntimesecsmin = 120;


