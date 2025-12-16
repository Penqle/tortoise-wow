
-- Changes by GHEOR
REPLACE INTO `creature` VALUES (2583555,62014,0,0,0,0,2050.4,2426.86,130.784,3.80753,120,120,0,100,100,0,0,0);

-- Changes by SHANG
REPLACE INTO `creature` VALUES (2583554,80945,0,0,0,451,15705.3,16554,48.6109,2.73931,120,120,0,100,100,0,0,0);
DELETE FROM creature_movement WHERE id=2583554;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES (2583554,1, 15705.299805,16554.000000,48.610901, 100);

-- Changes by ZORIZAR
REPLACE INTO `creature` VALUES (2583556,6073,0,0,0,1,2089.69,-3107.97,106.312,4.41074,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583556;
DELETE FROM creature_addon WHERE guid=2583556;
DELETE FROM creature_movement WHERE id=2583556;
DELETE FROM game_event_creature WHERE guid=2583556;
DELETE FROM game_event_creature_data WHERE guid=2583556;
DELETE FROM creature_battleground WHERE guid=2583556;
REPLACE INTO `creature` VALUES (2583557,61163,0,0,0,1,4762.1,-5949.78,95.3409,5.56968,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583557;
DELETE FROM creature_addon WHERE guid=2583557;
DELETE FROM creature_movement WHERE id=2583557;
DELETE FROM game_event_creature WHERE guid=2583557;
DELETE FROM game_event_creature_data WHERE guid=2583557;
DELETE FROM creature_battleground WHERE guid=2583557;
REPLACE INTO `creature` VALUES (2583558,6073,0,0,0,1,4808.63,-6747.65,96.7981,1.83589,120,120,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2583559,7,0,0,0,1,4811.79,-6756.77,96.9649,1.89715,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583558;
DELETE FROM creature_addon WHERE guid=2583558;
DELETE FROM creature_movement WHERE id=2583558;
DELETE FROM game_event_creature WHERE guid=2583558;
DELETE FROM game_event_creature_data WHERE guid=2583558;
DELETE FROM creature_battleground WHERE guid=2583558;
UPDATE creature_template SET faction = '90' WHERE entry = '7';
REPLACE INTO `creature` VALUES (2583560,7,0,0,0,1,4809.91,-6755.75,97.0229,4.16222,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2583560;
DELETE FROM creature_addon WHERE guid=2583560;
DELETE FROM creature_movement WHERE id=2583560;
DELETE FROM game_event_creature WHERE guid=2583560;
DELETE FROM game_event_creature_data WHERE guid=2583560;
DELETE FROM creature_battleground WHERE guid=2583560;
DELETE FROM creature WHERE guid=2583559;
DELETE FROM creature_addon WHERE guid=2583559;
DELETE FROM creature_movement WHERE id=2583559;
DELETE FROM game_event_creature WHERE guid=2583559;
DELETE FROM game_event_creature_data WHERE guid=2583559;
DELETE FROM creature_battleground WHERE guid=2583559;
