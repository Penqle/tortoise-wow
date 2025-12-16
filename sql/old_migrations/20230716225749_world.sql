UPDATE `creature_template` SET `ai_name` = '' , `script_name` = 'dark_rider_apprentice' WHERE `entry` = '61203';
UPDATE `creature_template` SET `ai_name` = '' , `script_name` = 'dark_rider_champion' WHERE `entry` = '61204';
DELETE FROM `creature_linking_template` WHERE `entry` = '61203';
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES ('61203', '532', '61204', '1540', '15'); 


