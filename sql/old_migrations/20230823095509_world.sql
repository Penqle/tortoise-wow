
-- Changes by DRAGUNOVI
DELETE FROM creature WHERE guid=2577458;
DELETE FROM creature_addon WHERE guid=2577458;
DELETE FROM creature_movement WHERE id=2577458;
DELETE FROM game_event_creature WHERE guid=2577458;
DELETE FROM game_event_creature_data WHERE guid=2577458;
DELETE FROM creature_battleground WHERE guid=2577458;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577453, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577452, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577450, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577449, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577446, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577445, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577465, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577464, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577500, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577501, 378);
UPDATE `creature` SET `position_x` = -10910.870117, `position_y` = -1889.943726, `position_z` = 111.396049, `orientation` = 6.189461 WHERE `guid` = 2577505;
UPDATE `creature` SET `position_x` = -10907.793945, `position_y` = -1890.262939, `position_z` = 111.392372, `orientation` = 3.021113 WHERE `guid` = 2577459;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577505, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577459, 378);
UPDATE `creature` SET `position_x` = -10860.056641, `position_y` = -1819.463501, `position_z` = 107.663757, `orientation` = 4.576235 WHERE `guid` = 2577508;
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577509, 378);
REPLACE INTO `creature_addon` (`guid`, `emote_state`) VALUES (2577508, 378);
UPDATE `creature` SET `position_x` = 38.589981, `position_y` = 257.997955, `position_z` = 42.028797, `orientation` = 1.588257 WHERE `guid` = 2574437;
REPLACE INTO `creature` VALUES (2574437,61065,0,0,0,0,38.59,257.998,42.0288,1.58826,300,300,0,100,100,0,0,0);
REPLACE INTO `creature` VALUES (2578707,61137,0,0,0,1,-4590.79,-4704.49,56.6228,3.55415,120,120,0,100,100,0,0,0);
DELETE FROM creature WHERE guid=2578707;
DELETE FROM creature_addon WHERE guid=2578707;
DELETE FROM creature_movement WHERE id=2578707;
DELETE FROM game_event_creature WHERE guid=2578707;
DELETE FROM game_event_creature_data WHERE guid=2578707;
DELETE FROM creature_battleground WHERE guid=2578707;

-- Changes by VOJI
DELETE FROM creature WHERE guid=2569312;
DELETE FROM creature_addon WHERE guid=2569312;
DELETE FROM creature_movement WHERE id=2569312;
DELETE FROM game_event_creature WHERE guid=2569312;
DELETE FROM game_event_creature_data WHERE guid=2569312;
DELETE FROM creature_battleground WHERE guid=2569312;
DELETE FROM creature WHERE guid=2569313;
DELETE FROM creature_addon WHERE guid=2569313;
DELETE FROM creature_movement WHERE id=2569313;
DELETE FROM game_event_creature WHERE guid=2569313;
DELETE FROM game_event_creature_data WHERE guid=2569313;
DELETE FROM creature_battleground WHERE guid=2569313;
