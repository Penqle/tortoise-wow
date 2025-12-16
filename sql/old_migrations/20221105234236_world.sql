
-- Changes by SHANG
DELETE FROM creature WHERE guid=2572933;
DELETE FROM creature_addon WHERE guid=2572933;
DELETE FROM creature_movement WHERE id=2572933;
DELETE FROM game_event_creature WHERE guid=2572933;
DELETE FROM game_event_creature_data WHERE guid=2572933;
DELETE FROM creature_battleground WHERE guid=2572933;
REPLACE INTO `creature` VALUES (2572943,5088,0,0,0,1,-3833.27,-2724.2,54.2171,5.20317,120,120,0,100,100,0,0,0);
