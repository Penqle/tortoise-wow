
-- Changes by WILL
REPLACE INTO `creature` VALUES (2583526,4299,0,0,0,189,222.331,-332.776,18.5347,2.84281,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583526;
DELETE FROM creature_addon WHERE guid=2583526;
DELETE FROM creature_movement WHERE id=2583526;
DELETE FROM game_event_creature WHERE guid=2583526;
DELETE FROM game_event_creature_data WHERE guid=2583526;
DELETE FROM creature_battleground WHERE guid=2583526;
REPLACE INTO `creature` VALUES (2583527,4299,0,0,0,189,222.331,-332.776,18.5347,2.84281,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583527;
DELETE FROM creature_addon WHERE guid=2583527;
DELETE FROM creature_movement WHERE id=2583527;
DELETE FROM game_event_creature WHERE guid=2583527;
DELETE FROM game_event_creature_data WHERE guid=2583527;
DELETE FROM creature_battleground WHERE guid=2583527;
REPLACE INTO `creature` VALUES (2583528,4299,0,0,0,189,222.331,-332.776,18.5347,2.84281,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583528;
DELETE FROM creature_addon WHERE guid=2583528;
DELETE FROM creature_movement WHERE id=2583528;
DELETE FROM game_event_creature WHERE guid=2583528;
DELETE FROM game_event_creature_data WHERE guid=2583528;
DELETE FROM creature_battleground WHERE guid=2583528;
REPLACE INTO `creature` VALUES (2583529,4291,0,0,0,189,222.331,-332.776,18.5347,2.84281,120,120,5,100,100,1,0,0);
DELETE FROM creature WHERE guid=2583529;
DELETE FROM creature_addon WHERE guid=2583529;
DELETE FROM creature_movement WHERE id=2583529;
DELETE FROM game_event_creature WHERE guid=2583529;
DELETE FROM game_event_creature_data WHERE guid=2583529;
DELETE FROM creature_battleground WHERE guid=2583529;

-- Changes by AKALIX
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (936,-9562.703125,-3419.312012,194.413864,0.594889,0,'AKTowerRedridge');
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (937,-3678.321533,-2158.094971,94.065086,0.633254,1,'AKTowerBarrens');
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (938,-330.990570,-691.546814,56.038486,4.196951,0,'AKTowerHillsbrad');
