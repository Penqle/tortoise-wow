-- GO Entry 142140 set to timer 2700 IF at or below 300 seconds.
-- GO Entry 142142 set to timer 2700 IF at or below 300 seconds.
-- GO Entry 176583 set to timer 2700 IF at or below 300 seconds.
-- For Gilijim and Lapidis 5 min herb fixes.

UPDATE `gameobject` SET `spawntimesecsmin` = 2700, `spawntimesecsmax` = 2700 WHERE `id` IN (142140, 142142, 176583) AND `spawntimesecsmin` < 1000;