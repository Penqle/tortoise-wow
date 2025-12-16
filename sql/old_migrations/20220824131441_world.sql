-- Remove Attack Trigger: Scarlet Crusade
DELETE FROM `gameobject` WHERE `id`=1000169;
DELETE FROM `gameobject_template` WHERE `entry`=1000169;
DELETE FROM `gameobject` WHERE `id`=1000170;
DELETE FROM `gameobject_template` WHERE `entry`=1000170;

-- 57009: Scripted Map Event 80703 Is Active
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (57009, 36, 80703, 0, 0, 0, 0);
-- 57010: Scripted Map Event 80703 Is NOT Active
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (57010, -3, 57009, 0, 0, 0, 0);
-- 57011: Target Has Incomplete Quest 80703 In Log
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (57011, 9, 80703, 1, 0, 0, 0);
-- 57012: (85: Target Is Player) And (57010: Scripted Map Event 80703 Is NOT Active) And (57011: Target Has Incomplete Quest 80703 In Log)
REPLACE INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`) VALUES (57012, -1, 85, 57010, 57011, 0, 0);

-- Events list for Thandol Span Attack Trigger
DELETE FROM `creature_ai_events` WHERE `creature_id`=90974;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES 
(9097401, 90974, 57012, 10, 0, 100, 1, 1, 15, 60000, 60000, 9097401, 0, 0, 'Thandol Span Attack Trigger - Start Script on Player in LoS'),
(9097402, 90974, 57009, 25, 16, 100, 1, 50673, 1, 1, 0, 9097402, 0, 0, 'Thandol Span Attack Trigger - Increment Phase on Summoned Creature Died'),
(9097403, 90974, 57009, 1, 15, 100, 1, 1000, 1000, 1000, 1000, 9097403, 0, 0, 'Thandol Span Attack Trigger - Complete Map Event (Phase 4)');
DELETE FROM `creature_ai_scripts` WHERE `id`=9097401;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9097401, 0, 0, 39, 9097401, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 'Thandol Span Attack Trigger - Start Script on Player in LoS');
DELETE FROM `generic_scripts` WHERE `id`=9097401;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9097401, 0, 0, 61, 80703, 60, 0, 0, 0, 0, 0, 0, 0, 9097403, 0, 9097402, 0, 0, 0, 0, 0, 'Thandol Span Attack Trigger - Start Scripted Map Event'),
(9097401, 0, 1, 10, 50673, 60000, 5, 30, 0, 0, 0, 0, 8, 0, 0, 1, -2456.98, -2512.89, 78.508, 2.13, 0, 'Thandol Span Attack Trigger - Summon Creature Scarlet Recruit 1'),
(9097401, 0, 2, 10, 50673, 60000, 5, 30, 0, 0, 0, 0, 8, 0, 0, 1, -2457.73, -2493.79, 78.508, 4.19, 0, 'Thandol Span Attack Trigger - Summon Creature Scarlet Recruit 2'),
(9097401, 10, 0, 10, 50673, 60000, 5, 30, 0, 0, 0, 0, 8, 0, 0, 1, -2456.98, -2512.89, 78.508, 2.13, 0, 'Thandol Span Attack Trigger - Summon Creature Scarlet Recruit 3'),
(9097401, 10, 1, 10, 50673, 60000, 5, 30, 0, 0, 0, 0, 8, 0, 0, 1, -2457.73, -2493.79, 78.508, 4.19, 0, 'Thandol Span Attack Trigger - Summon Creature Scarlet Recruit 4'),
(9097401, 20, 0, 10, 50674, 3600000, 1, 10, 0, 0, 0, 0, 8, 0, -1, 1, -2457.73, -2493.79, 78.508, 4.19, 0, 'Thandol Span Attack Trigger - Summon Creature Vladeus Springriver');
DELETE FROM `generic_scripts` WHERE `id`=9097402;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9097402, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thandol Span Failed: Thandol Span Attack Trigger - Set Phase to 0'),
(9097402, 0, 0, 18, 0, 0, 0, 0, 50674, 20, 8, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thandol Span Failed: Vladeus Springriver - Despawn');
DELETE FROM `generic_scripts` WHERE `id`=9097403;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9097403, 0, 0, 8, 50670, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thandol Span Completed: Thandol Span Attack Trigger - Kill Credit'),
(9097403, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thandol Span Completed: Thandol Span Attack Trigger - Set Phase to 0');
DELETE FROM `creature_ai_scripts` WHERE `id`=9097402;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9097402, 0, 0, 44, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thandol Span Attack Trigger - Increment Phase');
DELETE FROM `creature_ai_scripts` WHERE `id`=9097403;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(9097403, 0, 0, 62, 80703, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thandol Span Attack Trigger - Complete Map Event');
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (90974, 10045, 0, 0, 0, 0, 'Thandol Span Attack Trigger', '', 0, 63, 63, 9999, 9999, 0, 0, 1866, 35, 0, 0.91, 1.14286, 0, 20, 5, 0, 3, 0, 7, 7, 0, 290, 1, 2000, 2200, 1, 4096, 0, 8, 0, 0, 0, 0, 1.76, 2.42, 100, 8, 5242886, 0, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 'EventAI', 0, 1, 0, 0, 3, 0, 0, 0, 2147483648, 0, 32898, 0, '');
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES (328148, 90974, 0, 0, 0, 0, -2459.73, -2503.06, 78.507, 3.11, 60, 60, 0, 100, 0, 0, 0, 0);
UPDATE `creature_template` SET `loot_id`=50673 WHERE `entry`=50673;
