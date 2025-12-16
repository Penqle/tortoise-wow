
-- Correct too short respawn timers for new custom mobs.
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE guid > 2578242 AND spawntimesecsmin = 120 AND spawntimesecsmax = 120 and map = 1;
UPDATE creature SET spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE guid > 2578242 AND spawntimesecsmin = 120 AND spawntimesecsmax = 120 and map = 0;
