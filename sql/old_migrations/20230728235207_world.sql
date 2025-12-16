
-- Changes by SHANG
DELETE FROM creature WHERE guid=2578448;
DELETE FROM creature_addon WHERE guid=2578448;
DELETE FROM creature_movement WHERE id=2578448;
DELETE FROM game_event_creature WHERE guid=2578448;
DELETE FROM game_event_creature_data WHERE guid=2578448;
DELETE FROM creature_battleground WHERE guid=2578448;
REPLACE INTO `creature` VALUES (2578452,61633,0,0,0,1,1556.39,-4194.64,42.4983,1.04296,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578452;
DELETE FROM creature_addon WHERE guid=2578452;
DELETE FROM creature_movement WHERE id=2578452;
DELETE FROM game_event_creature WHERE guid=2578452;
DELETE FROM game_event_creature_data WHERE guid=2578452;
DELETE FROM creature_battleground WHERE guid=2578452;
REPLACE INTO `creature` VALUES (2578453,61632,0,0,0,1,1557.41,-4194.07,42.472,1.04893,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578454,61635,0,0,0,1,1561.51,-4195.13,42.6812,1.69158,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578454;
DELETE FROM creature_addon WHERE guid=2578454;
DELETE FROM creature_movement WHERE id=2578454;
DELETE FROM game_event_creature WHERE guid=2578454;
DELETE FROM game_event_creature_data WHERE guid=2578454;
DELETE FROM creature_battleground WHERE guid=2578454;
REPLACE INTO `creature` VALUES (2578455,61637,0,0,0,1,1561.5,-4195.05,42.6709,1.69158,120,120,0,100,100,0,0,0);
UPDATE `creature` SET `position_x` = 1589.766357, `position_y` = -4193.060547, `position_z` = 41.704388, `orientation` = 3.098279 WHERE `guid` = 10463;
UPDATE `creature` SET `position_x` = 1565.967407, `position_y` = -4194.532715, `position_z` = 42.644257, `orientation` = 2.081904 WHERE `guid` = 2578455;
