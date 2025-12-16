
-- Changes by TORTA
DELETE FROM creature WHERE guid=2555473;
DELETE FROM creature_addon WHERE guid=2555473;
DELETE FROM creature_movement WHERE id=2555473;
DELETE FROM game_event_creature WHERE guid=2555473;
DELETE FROM game_event_creature_data WHERE guid=2555473;
DELETE FROM creature_battleground WHERE guid=2555473;
DELETE FROM creature WHERE guid=2568727;
DELETE FROM creature_addon WHERE guid=2568727;
DELETE FROM creature_movement WHERE id=2568727;
DELETE FROM game_event_creature WHERE guid=2568727;
DELETE FROM game_event_creature_data WHERE guid=2568727;
DELETE FROM creature_battleground WHERE guid=2568727;
DELETE FROM creature WHERE guid=2568726;
DELETE FROM creature_addon WHERE guid=2568726;
DELETE FROM creature_movement WHERE id=2568726;
DELETE FROM game_event_creature WHERE guid=2568726;
DELETE FROM game_event_creature_data WHERE guid=2568726;
DELETE FROM creature_battleground WHERE guid=2568726;
DELETE FROM gameobject WHERE guid = '4008360';
DELETE FROM game_event_gameobject WHERE guid = '4008360';
DELETE FROM gameobject_battleground WHERE guid = '4008360';
DELETE FROM creature WHERE guid=2561268;
DELETE FROM creature_addon WHERE guid=2561268;
DELETE FROM creature_movement WHERE id=2561268;
DELETE FROM game_event_creature WHERE guid=2561268;
DELETE FROM game_event_creature_data WHERE guid=2561268;
DELETE FROM creature_battleground WHERE guid=2561268;

-- Changes by SHANG
DELETE FROM gameobject WHERE guid = '5000494';
DELETE FROM game_event_gameobject WHERE guid = '5000494';
DELETE FROM gameobject_battleground WHERE guid = '5000494';
DELETE FROM gameobject WHERE guid = '5000503';
DELETE FROM game_event_gameobject WHERE guid = '5000503';
DELETE FROM gameobject_battleground WHERE guid = '5000503';
DELETE FROM gameobject WHERE guid = '5000497';
DELETE FROM game_event_gameobject WHERE guid = '5000497';
DELETE FROM gameobject_battleground WHERE guid = '5000497';
DELETE FROM gameobject WHERE guid = '5000500';
DELETE FROM game_event_gameobject WHERE guid = '5000500';
DELETE FROM gameobject_battleground WHERE guid = '5000500';
DELETE FROM gameobject WHERE guid = '5000502';
DELETE FROM game_event_gameobject WHERE guid = '5000502';
DELETE FROM gameobject_battleground WHERE guid = '5000502';
UPDATE creature SET position_x = '-8166.488770', position_y = '1227.780029', position_z = '9.338284', orientation = '4.399394' WHERE guid = '2568636';
