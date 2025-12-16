
-- Changes by WOJI
DELETE FROM creature WHERE guid=2580402;
DELETE FROM creature_addon WHERE guid=2580402;
DELETE FROM creature_movement WHERE id=2580402;
DELETE FROM game_event_creature WHERE guid=2580402;
DELETE FROM game_event_creature_data WHERE guid=2580402;
DELETE FROM creature_battleground WHERE guid=2580402;

-- Changes by QUARRION
DELETE FROM creature WHERE guid=2582783;
DELETE FROM creature_addon WHERE guid=2582783;
DELETE FROM creature_movement WHERE id=2582783;
DELETE FROM game_event_creature WHERE guid=2582783;
DELETE FROM game_event_creature_data WHERE guid=2582783;
DELETE FROM creature_battleground WHERE guid=2582783;
DELETE FROM creature WHERE guid=2582780;
DELETE FROM creature_addon WHERE guid=2582780;
DELETE FROM creature_movement WHERE id=2582780;
DELETE FROM game_event_creature WHERE guid=2582780;
DELETE FROM game_event_creature_data WHERE guid=2582780;
DELETE FROM creature_battleground WHERE guid=2582780;
DELETE FROM creature WHERE guid=2582781;
DELETE FROM creature_addon WHERE guid=2582781;
DELETE FROM creature_movement WHERE id=2582781;
DELETE FROM game_event_creature WHERE guid=2582781;
DELETE FROM game_event_creature_data WHERE guid=2582781;
DELETE FROM creature_battleground WHERE guid=2582781;
DELETE FROM creature WHERE guid=2582784;
DELETE FROM creature_addon WHERE guid=2582784;
DELETE FROM creature_movement WHERE id=2582784;
DELETE FROM game_event_creature WHERE guid=2582784;
DELETE FROM game_event_creature_data WHERE guid=2582784;
DELETE FROM creature_battleground WHERE guid=2582784;
DELETE FROM creature WHERE guid=2582779;
DELETE FROM creature_addon WHERE guid=2582779;
DELETE FROM creature_movement WHERE id=2582779;
DELETE FROM game_event_creature WHERE guid=2582779;
DELETE FROM game_event_creature_data WHERE guid=2582779;
DELETE FROM creature_battleground WHERE guid=2582779;

-- Changes by JOE
UPDATE `creature` SET `position_x` = 2.428304, `position_y` = -47.513714, `position_z` = -64.942413, `orientation` = 4.507781 WHERE `guid` = 85959;
UPDATE `creature` SET `position_x` = 0.153507, `position_y` = -55.652740, `position_z` = -66.274391, `orientation` = 4.045178 WHERE `guid` = 517;
UPDATE `creature` SET `position_x` = 0.387770, `position_y` = -58.366314, `position_z` = -66.407410, `orientation` = 1.512267 WHERE `guid` = 85958;
