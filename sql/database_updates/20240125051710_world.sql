-- Fix more sitting trainers.
UPDATE `creature` SET `position_x` = 4444.254883, `position_y` = -2830.850342, `position_z` = 10.384604, `orientation` = 0.406014 WHERE `guid` = 2581866;
DELETE FROM `creature_addon` WHERE `guid`=2581866;
UPDATE `creature` SET `position_x` = 4097.444336, `position_y` = -2805.378662, `position_z` = 24.075916, `orientation` = 3.912819 WHERE `guid` = 2581868;
DELETE FROM `creature_addon` WHERE `guid`=2581868;



