-- Prevent Dwarf Mountaneers from moving or attacking.
UPDATE `creature_addon` SET `auras`='25900' WHERE `guid` IN (2571574, 2571575);
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=50672;
