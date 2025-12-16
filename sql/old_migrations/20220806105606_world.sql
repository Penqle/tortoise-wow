-- Prevent Horde from ganking Defias Messenger.
DELETE FROM `creature_ai_events` WHERE `creature_id`=550;
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (55001, 550, 0, 4, 0, 100, 0, 0, 0, 0, 0, 55001, 0, 0, 'Defias Messenger - Random Aggro Say');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (55002, 550, 0, 2, 0, 100, 0, 30, 0, 0, 0, 55002, 0, 0, 'Defias Messenger - Flee at 15% HP');
INSERT INTO `creature_ai_events` (`id`, `creature_id`, `condition_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_script`, `action2_script`, `action3_script`, `comment`) VALUES (55003, 550, 0, 11, 0, 100, 1, 0, 0, 0, 0, 55003, 0, 0, 'Defias Messenger - Make Unkillable on Spawn');
DELETE FROM `creature_ai_scripts` WHERE `id`=55003;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(55003, 0, 0, 52, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Make Unkillable'),
(55003, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Disable Melee Attack'),
(55003, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Disable Combat Movement');
DELETE FROM `creature_ai_scripts` WHERE `id`=55001;
INSERT INTO `creature_ai_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(55001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 479, 478, 473, 0, 0, 0, 0, 0, 3, 'Defias Messenger - Say Text if Enemy is Alliance'),
(55001, 0, 1, 39, 55004, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 3, 'Defias Messenger - Start Script to Become Killable if Enemy is Alliance'),
(55001, 0, 2, 39, 55003, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 'Defias Messenger - Start Script To Summon Guards if Enemy is Horde');
DELETE FROM `generic_scripts` WHERE `id`=55004;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(55004, 0, 1, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Make Killable'),
(55004, 0, 2, 42, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Enable Melee Attack'),
(55004, 0, 3, 43, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Enable Combat Movement');
DELETE FROM `generic_scripts` WHERE `id`=55003;
INSERT INTO `generic_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(55003, 0, 0, 74, 23775, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Stun Target'),
(55003, 0, 0, 1, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Emote Critical'),
(55003, 0, 0, 4, 46, 512, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Add Immune to NPC Flag'),
(55003, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Move Idle'),
(55003, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100403, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Say Text'),
(55003, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100404, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Say Text'),
(55003, 7, 0, 10, 93116, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Defias Messenger - Summon Creature'),
(55003, 7, 0, 10, 93116, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Defias Messenger - Summon Creature'),
(55003, 7, 0, 10, 93116, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'Defias Messenger - Summon Creature'),
(55003, 7, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Emote Laugh'),
(55003, 9, 0, 15, 1856, 2, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Cast Spell Vanish'),
(55003, 9, 1, 18, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Despawn'),
(55003, 10, 0, 71, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Defias Messenger - Respawn');
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (100403, 'CALL A HEALER!', 'CALL A HEALER!', 1, 0, 0, 5, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES (100404, 'But not for me!', 'But not for me!', 0, 0, 0, 1, 0, 0, 0, 0, 0);
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES (93116, 2314, 2315, 0, 0, 'Defias Bouncer', NULL, 0, 60, 60, 5500, 5500, 0, 0, 3700, 11, 0, 1, 1.14286, 1.3, 20, 5, 0, 1, 1, 500, 600, 0, 256, 1, 100, 2000, 1, 64, 0, 0, 0, 0, 0, 0, 25.08, 34.485, 100, 7, 0, 636, 636, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 3, 636, 0, 0, 0, 0, 2, 0, '');
UPDATE `creature_template` SET `unit_flags` = (`unit_flags` | 512) WHERE `entry`=550;
