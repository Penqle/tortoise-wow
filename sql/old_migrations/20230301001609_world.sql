
-- Changes by SHANG
REPLACE INTO `creature` VALUES (2574579,11682,0,0,0,1,2447.56,-3387.37,101.826,5.2083,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2574579;
DELETE FROM creature_addon WHERE guid=2574579;
DELETE FROM creature_movement WHERE id=2574579;
DELETE FROM game_event_creature WHERE guid=2574579;
DELETE FROM game_event_creature_data WHERE guid=2574579;
DELETE FROM creature_battleground WHERE guid=2574579;
