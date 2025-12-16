-- Assign PvP flag to Irondeep Miner.
UPDATE `creature_template` SET `flags_extra`=524288 WHERE `entry`=13396;
-- Sync stats of Irondeep Peon with Irondeep Miner.
UPDATE `creature_template` SET `armor`=2654, `dmg_min`=354, `dmg_max`=456, `ranged_dmg_min`=59.9488, `ranged_dmg_max`=82.4296, `fire_res`=0, `nature_res`=0, `frost_res`=0, `shadow_res`=0, `arcane_res`=0, `gold_max`=844, `movement_type`=0 WHERE `entry`=13397;
-- Sync stats of Coldmine Guard with Coldmine Invader.
UPDATE `creature_template` SET `armor`=2432, `dmg_min`=344, `dmg_max`=444, `base_attack_time`=1183, `ranged_attack_time`=1301, `ranged_dmg_min`=59.3256, `ranged_dmg_max`=81.5727 WHERE `entry`=13089;
