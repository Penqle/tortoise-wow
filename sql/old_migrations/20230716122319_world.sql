
-- Changes by TAMMO
UPDATE `creature` SET `position_x` = 4295.193359, `position_y` = -2681.218262, `position_z` = 1106.150879, `orientation` = 1.311993 WHERE `guid` = 2578189;
UPDATE `creature` SET `position_x` = 4294.737793, `position_y` = -2681.931152, `position_z` = 1106.094849, `orientation` = 0.982126 WHERE `guid` = 2578189;
UPDATE `creature` SET `position_x` = 4296.188477, `position_y` = -2678.791504, `position_z` = 1106.365479, `orientation` = 0.967989 WHERE `guid` = 2578189;
UPDATE `creature` SET `position_x` = 4295.069824, `position_y` = -2681.115723, `position_z` = 1106.166260, `orientation` = 0.767712 WHERE `guid` = 2578189;
UPDATE `creature` SET `position_x` = 4295.223633, `position_y` = -2680.890625, `position_z` = 1106.183838, `orientation` = 0.971916 WHERE `guid` = 2578189;

-- Changes by SHANG
DELETE FROM creature WHERE guid=2578331;
DELETE FROM creature_addon WHERE guid=2578331;
DELETE FROM creature_movement WHERE id=2578331;
DELETE FROM game_event_creature WHERE guid=2578331;
DELETE FROM game_event_creature_data WHERE guid=2578331;
DELETE FROM creature_battleground WHERE guid=2578331;
