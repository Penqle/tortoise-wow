-- Remove Worldbuffs in Scarlet Citadel
REPLACE INTO `instance_buff_removal` (`map_id`, `spell_id`, `enabled`, `flags`, `comment`) VALUES
(45, 22888, 0, 0, "Rallying Cry"),
(45, 16609, 0, 0, "Warchief's blessing"),
(45, 24425, 0, 0, "Spirit of Zandalar"),
(45, 26393, 0, 0, "Elune's Blessing"),
(45, 15366, 0, 0, "Songflower Serenade"),
(45, 22818, 0, 0, "Mol'dar's Moxie (15% stam)"),
(45, 22820, 0, 0, "Slip'kik's Savvy (3% spellcrit)"),
(45, 22817, 0, 0, "Fengus' Ferocity (200 AP)"),
(45, 28681, 0, 0, "Soul Revival (Scourge Invasion Buff)"),
(45, 23735, 0, 0, "Sayge's Dark Fortune of Strength"),
(45, 23736, 0, 0, "Sayge's Dark Fortune of Agility"),
(45, 23737, 0, 0, "Sayge's Dark Fortune of Stamina"),
(45, 23738, 0, 0, "Sayge's Dark Fortune of Spirit"),
(45, 23766, 0, 0, "Sayge's Dark Fortune of Intelligence"),
(45, 23767, 0, 0, "Sayge's Dark Fortune of Armor"),
(45, 23768, 0, 0, "Sayge's Dark Fortune of Damage"),
(45, 23769, 0, 0, "Sayge's Dark Fortune of Resistance");

-- Custom Graveyard
REPLACE INTO `custom_graveyards` (`id`, `name`, `map_id`, `zone_id`, `area_id`, `max_level`, `map_gy_alliance`, `gy_x_alliance`, `gy_y_alliance`, `gy_z_alliance`, `orientation_alliance`, `map_gy_horde`, `gy_x_horde`, `gy_y_horde`, `gy_z_horde`, `orientation_horde`) VALUES
(30, 'Scarlet Citadel', 45, 0, 0, 60, 0, 2603.33, -534.807, 89, 2.46552, 0, 2603.33, -534.807, 89, 2.46552);

-- Teleport
REPLACE INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(500, 32.5495, 13.2999, 16.869, 6.28138, 45, 'ScarletCitadel');

-- Dungeon is a 40 man raid with 7 day reset timer
REPLACE INTO `map_template` (`entry`, `parent`, `map_type`, `linked_zone`, `player_limit`, `reset_delay`, `ghost_entrance_map`, `ghost_entrance_x`, `ghost_entrance_y`, `map_name`, `script_name`) VALUES
(45, 0, 2, 0, 40, 7, -1, 0, 0, 'Scarlet Citadel', 'instance_scarlet_citadel');

-- GOs
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
-- Doors
(5000000, 0, 3751, 'SC_ENTERANCE_DOOR', 0, 52, 1.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000001, 0, 444, 'SC_VENDOR_DOOR_LEFT', 0, 52, 1.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000002, 0, 444, 'SC_VENDOR_DOOR_RIGHT', 0, 52, 1.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000003, 0, 444, 'SC_DAELUS_DOOR', 0, 52, 1.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000004, 0, 444, 'SC_DAELUS_DOOR_LOCKED', 0, 52, 1.39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000005, 0, 3751, 'SC_NOLIN_DOOR_LOCKED', 0, 52, 1.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000006, 0, 444, 'SC_ARDAEUS_ENTRANCE_DOOR', 0, 52, 1.58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000007, 0, 444, 'SC_ARDAEUS_EXIT_DOOR', 0, 52, 1.39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000008, 0, 444, 'SC_MARIELLA_DOOR', 0, 52, 1.58, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000009, 0, 1207, 'SC_RIGHT_WING_DOOR', 0, 52, 0.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000010, 0, 6385, 'SC_ABBENDIS_ENTRANCE_DOOR', 0, 52, 1.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000011, 0, 443, 'SC_ABBENDIS_LOCKED_DOOR', 0, 52, 1.35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
-- Misc
(5000012, 5, 6679, 'SC_SUMMONING_CIRCLE', 0, 52, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000013, 3, 23431, 'SC_MIRELLAS_ACHIEVEMENT_CHEST', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5000014, 3, 23431, 'SC_ARDAEUS_ACHIEVEMENT_CHEST', 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Reserved Range 650000-650100
-- DELETE FROM `gameobject` WHERE `guid` BETWEEN 5000000 AND 5000013; -- Erase deprecated GOs

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`, `spawn_flags`, `visibility_mod`) VALUES
-- Daelus' Room
(650000, 5000000, 45, 25.3835, 13.3128, 16.869, 6.28138, 0, 0, 0.000902565, -1, 0, 0, 100, 1, 1, 533.333),
(650001, 5000001, 45, 19.7918, -2.30051, 16.869, 6.27707, 0, 0, 0.00306001, -0.999995, 0, 0, 100, 1, 1, 533.333),
(650002, 5000002, 45, 19.7611, 28.8518, 16.869, 0.00172281, 0, 0, 0.000861406, 1, 0, 0, 100, 1, 1, 533.333),
(650003, 5000003, 45, 114.999, 28.9187, 16.869, 3.13861, 0, 0, 0.999999, 0.00149079, 0, 0, 100, 1, 1, 533.333),
(650004, 5000004, 45, 114.915, -2.19142, 16.869, 3.12486, 0, 0, 0.999965, 0.00836561, 0, 0, 100, 1, 1, 533.333),
-- Nolin's Room
(650005, 5000005, 45, 171.915, -126.624, 16.869, 1.56309, 0, 0, 0.704379, 0.709825, 300, 300, 100, 1, 1, 533.333),
-- Ardaeus' Room
(650006, 5000006, 45, 250.217, -116.853, 16.8702, 0.0105844, 0, 0, 0.00529215, 0.999986, 0, 0, 100, 0, 1, 533.333),
(650007, 5000007, 45, 306.483, -116.88, 33.705, 3.12978, 0, 0, 0.999983, 0.00590698, 0, 0, 100, 1, 1, 533.333),
-- Mariella's Room
(650008, 5000008, 45, 220.03, 48.4829, 33.7034, 3.14467, 0, 0, 0.999999, -0.0015388, 0, 0, 100, 0, 1, 533.333),
-- Right Wing's Door
(650009, 5000009, 45, 332.627, -55.8007, 33.7003, 3.13626, 0, 0, 0.999996, 0.00266476, 0, 0, 100, 1, 1, 533.333),
-- Abbendis' Room
(650010, 5000010, 45, 421.206, -8.97886, 37.7045, 4.70785, 0, 0, 0.70871, -0.7055, 0, 0, 100, 0, 1, 533.333),
(650011, 5000011, 45, 421.228, -144.38, 35.0195, 4.69175, 0, 0, 0.714365, -0.699774, 0, 0, 100, 1, 1, 533.333);

-- NPCs
REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES
(2000000, 18683, 0, 0, 0, 'Sacred Fist Daelus', 'The Scarlet Crusade', 0, 63, 63, 700000, 700000, 5000000, 5000000, 4500, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_daelus'),
(2000001, 18671, 0, 0, 0, 'Grand Sorcerer Ardaeus', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 6000, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_ardaeus'),
(2000002, 18676, 0, 0, 0, 'High Inquisitor Mariella', 'The Scarlet Crusade', 0, 63, 63, 795000, 795000, 5000000, 5000000, 3000, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_mariella'),
(2000003, 10431, 0, 0, 0, 'High General Abbendis', 'The Scarlet Crusade', 0, 63, 63, 500000, 500000, 5000000, 5000000, 4500, 67, 0, 1.5, 1.5, 1.6, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 320113, 391250, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 2130689, 0, 'boss_abbendis'),
(2000004, 18678, 0, 0, 0, 'Brother Eric Vesper', 'The Scarlet Crusade', 0, 63, 63, 1250000, 1250000, 50000, 50000, 4500, 35, 0, 1, 2.14286, 1.8, 20, 5, 0, 3, 1, 5000, 7000, 0, 290, 1, 1500, 1800, 2, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 864999, 964999, '', 0, 3, 0, 0, 3, 200003, 0, 0, 3167436667, 0, 0, 0, 'npc_eric_vesper'),
(2000005, 10529, 0, 0, 0, 'Scarlet Chaplain', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'npc_chaplain_and_sister'),
(2000006, 10529, 0, 0, 0, 'Scarlet Sister', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000007, 221, 0, 0, 0, 'Nolin', 'The Goose', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1.3, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000008, 5556, 0, 0, 0, 'Bokkeum', 'Nolin''s Pet', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 0.7, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000009, 10529, 0, 0, 0, 'SECOND_WING_TRASH_PLACEHOLDER', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000010, 10529, 0, 0, 0, 'Malor', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000011, 10529, 0, 0, 0, 'Jordan', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000012, 10529, 0, 0, 0, 'Durgen', 'The Scarlet Crusade', 0, 60, 60, 500000, 500000, 5000000, 5000000, 0, 35, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(2000013, 10045, 0, 0, 0, 'Fallen Spirit', 'The Scarlet Crusade', 0, 61, 61, 500000, 500000, 5000000, 5000000, 0, 67, 0, 1.5, 1.5, 1, 20, 5, 0, 3, 1, 5000, 7000, 0, 100, 1, 1000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 220, 320, 100, 7, 72, 0, 0, 0, 250, 15, 15, 15, 250, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_fallen_spirit'),
(2000014, 18680, 0, 0, 0, 'Citadel Inquisitor', 'The Scarlet Crusade', 0, 63, 63, 16250, 16250, 25680, 25680, 3555, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 2400, 3900, 0, 284, 1, 1150, 1265, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200000, 0, 0, 1022049875, 0, 0, 0, 'npc_citadel_inquisitor'),
(2000015, 18687, 0, 0, 0, 'Citadel Valiant', 'The Scarlet Crusade', 0, 63, 63, 21125, 21125, 0, 0, 4190, 67, 0, 1, 1.14286, 1, 20, 5, 0, 3, 1, 3900, 4300, 0, 284, 1, 1150, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 2865, 3746, '', 0, 3, 0, 0, 3, 200001, 0, 0, 1022049875, 0, 0, 0, 'npc_citadel_valiant'),
(2000016, 15866, 0, 0, 0, 'Void Zone', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 0.1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_voidzone'),
(2000017, 850, 0, 0, 0, 'Felhound', 'Mariella''s Slave', 0, 62, 62, 25000, 25000, 500000, 500000, 1900, 67, 0, 1, 1.14286, 1, 20, 5, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 3, 0, 0, 0, 1073741823, 32, 308, 0, 'npc_felhound'),
(2000018, 15866, 0, 0, 0, 'Kill Zone', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 0.2, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_killzone'),
(2000019, 18495, 0, 0, 0, 'Sun', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_sun'),
(2000020, 10529, 0, 0, 0, 'Invar One-Arm', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_invar_onearm'),
(2000021, 10529, 0, 0, 0, 'Arellas Fireleaf', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_arellas_fireleaf'),
(2000022, 10529, 0, 0, 0, 'Holia Sunshield', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_holia_sunshield'),
(2000023, 10529, 0, 0, 0, 'Ferren Marcus', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_ferren_marcus'),
(2000024, 10529, 0, 0, 0, 'Yana Bloodspear', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_yana_bloodspear'),
(2000025, 10529, 0, 0, 0, 'Orman of Stromgarde', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_orman_stromgarde'),
(2000026, 10529, 0, 0, 0, 'Fellari Swiftarrow', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_fellari_swiftarrow'),
(2000027, 10529, 0, 0, 0, 'Dorgar Stoenbrow', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_dorgar_stoenbrow'),
(2000028, 10529, 0, 0, 0, 'Valea Twinblades', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_valea_twinblades'),
(2000029, 10529, 0, 0, 0, 'Harthal Truesight', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_harthal_truesight'),
(2000030, 10529, 0, 0, 0, 'Admiral Barean Westwind', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_admiral_barean_westwind'),
(2000031, 10529, 0, 0, 0, 'ARDAEUS_STATUE_NPC', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, ''),
(2000032, 10529, 0, 0, 0, 'ANTI_EXPLOIT_TELEPORTER', '', 0, 1, 1, 666, 666, 0, 0, 20, 370, 33554432, 2.4, 1.42857, 1, 18, 5, 0, 0, 1, 2, 2, 0, 44, 1, 2000, 2000, 1, 33554496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 2097152, 0, 'npc_citadel_anti_exploit'),
(2000033, 18680, 0, 0, 0, 'Citadel Inquisitor', 'The Scarlet Crusade', 0, 62, 62, 165000, 165000, 135000, 135000, 3600, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 1900, 2150, 0, 100, 1, 3000, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200002, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_inquisitor'),
(2000034, 18687, 0, 0, 0, 'Citadel Valiant', 'The Scarlet Crusade', 0, 61, 61, 210000, 210000, 0, 0, 4400, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 2965, 3665, 0, 100, 1, 1480, 3700, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200001, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_valiant'),
(2000035, 18675, 0, 0, 0, 'Citadel Footman', 'The Scarlet Crusade', 0, 60, 60, 180000, 180000, 0, 0, 4000, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 2650, 3200, 0, 100, 1, 1000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200000, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_footman'),
(2000036, 18681, 0, 0, 0, 'Citadel Interrogator', 'The Scarlet Crusade', 0, 62, 62, 190000, 190000, 0, 0, 4100, 67, 0, 1, 1.14286, 1.2, 20, 5, 0, 1, 1, 2650, 3200, 0, 100, 1, 1000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200004, 0, 0, 3167436667, 0, 0, 0, 'npc_citadel_interrogator'),
(2000037, 18679, 0, 0, 0, 'Darkcaller Rayn', 'The Scarlet Crusade', 0, 62, 62, 190000, 190000, 0, 0, 3900, 67, 0, 1, 1.14286, 1.5, 20, 5, 0, 1, 1, 2350, 2900, 0, 100, 1, 3500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 8, 0, 0, 0, 250, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 3, 200005, 0, 0, 3167436667, 0, 0, 0, 'npc_darkcaller_rayn');

-- Reserved Range 1300000-1300100
REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
-- Bosses
(1300000, 2000000, 0, 0, 0, 45, 67.3897, 13.3098, 16.8691, 6.2806, 25, 25, 0, 100, 100, 0, 1, 200),  -- Boss Sacred Fist Daelus
(1300001, 2000001, 0, 0, 0, 45, 283.91, -116.886, 16.8717, 3.14647, 25, 25, 0, 100, 100, 0, 1, 200), -- Boss Grand Sorcerer Ardaeus
(1300002, 2000002, 0, 0, 0, 45, 188.304, 48.5719, 32.8437, 6.28209, 25, 25, 0, 100, 100, 0, 1, 200), -- Boss High Inquisitor Mariella
(1300003, 2000003, 0, 0, 0, 45, 420.76, -120.074, 35.7493, 1.55949, 25, 25, 0, 100, 100, 0, 1, 200), -- Boss High General Abbendis
-- Easter Eggs
(1300004, 2000008, 0, 0, 0, 45, 174.662, -156.664, 16.1426, 3.13743, 25, 25, 0, 100, 100, 0, 0, 0), -- Nolin
(1300005, 2000007, 0, 0, 0, 45, 174.667, -155.46, 16.2131, 3.13743, 25, 25, 0, 100, 100, 0, 0, 0),  -- Nolin's Pet (Bokkeum)
-- First Wing Trash
(1300006, 2000004, 0, 0, 0, 45, 128.852, -73.6235, 15.9885, 1.56192, 25, 25, 0, 100, 100, 0, 0, 0), -- Eric Black
-- Ambush Park
(1300007, 2000036, 0, 0, 0, 45, 159.388, -73.4126, 16.4383, 5.57385, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300008, 2000036, 0, 0, 0, 45, 160.215, -105.74, 16.6029, 0.867746, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300009, 2000036, 0, 0, 0, 45, 194.047, -76.657, 16.3321, 3.68339, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300010, 2000036, 0, 0, 0, 45, 192.524, -104.285, 16.2855, 2.51708, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300011, 2000036, 0, 0, 0, 45, 182.289, -57.3441, 16.869, 4.72405, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300012, 2000036, 0, 0, 0, 45, 209.626, -57.4301, 16.869, 3.96025, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300013, 2000036, 0, 0, 0, 45, 209.906, -95.2465, 16.869, 3.15719, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300014, 2000036, 0, 0, 0, 45, 209.675, -122.707, 16.869, 2.35412, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300015, 2000036, 0, 0, 0, 45, 171.899, -122.853, 16.869, 1.55891, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
(1300016, 2000036, 0, 0, 0, 45, 144.634, -122.575, 16.869, 0.854016, 7200, 7200, 0, 100, 100, 0, 0, 0), -- Citadel Interrogator
(1300017, 2000036, 0, 0, 0, 45, 144.257, -84.8893, 16.869, 6.26541, 7200, 7200, 0, 100, 100, 0, 0, 0),  -- Citadel Interrogator
-- Vendors
(1300019, 2000010, 0, 0, 0, 45, 10.4733, -5.30098, 16.869, 0.333276, 25, 25, 0, 100, 100, 0, 0, 0), -- Malor
(1300019, 2000011, 0, 0, 0, 45, 10.4092, 32.8486, 16.869, 5.83813, 25, 25, 0, 100, 100, 0, 0, 0),   -- Jordan
(1300020, 2000012, 0, 0, 0, 45, 225.379, -133.486, 15.9885, 1.5644, 25, 25, 0, 100, 100, 0, 0, 0),  -- Durgen
-- Shadow Wing
(1300021, 2000037, 0, 0, 0, 45, 231.214, 63.3696, 32.8229, 4.71373, 25, 25, 0, 100, 100, 0, 0, 0), -- Darkcaller Rayn
-- RP Event
(1300022, 2000005, 0, 0, 0, 45, 172.061, -89.7261, 16.0093, 1.24109, 25, 25, 0, 100, 100, 0, 0, 0), -- Scarlet Chaplain
(1300023, 2000006, 0, 0, 0, 45, 172.84, -87.1637, 16.0093, 4.36108, 25, 25, 0, 100, 100, 0, 0, 0); -- Scarlet Sister

REPLACE INTO `creature_addon` (`guid`, `display_id`, `mount_display_id`, `equipment_id`, `stand_state`, `sheath_state`, `emote_state`, `auras`) VALUES
(1300007, 0, 0, 200004, 0, 1, 0, NULL),
(1300008, 0, 0, 200004, 0, 1, 0, NULL),
(1300009, 0, 0, 200004, 0, 1, 0, NULL),
(1300010, 0, 0, 200004, 0, 1, 0, NULL),
(1300011, 0, 0, 200004, 0, 1, 0, NULL),
(1300012, 0, 0, 200004, 0, 1, 0, NULL),
(1300013, 0, 0, 200004, 0, 1, 0, NULL),
(1300014, 0, 0, 200004, 0, 1, 0, NULL),
(1300015, 0, 0, 200004, 0, 1, 0, NULL),
(1300016, 0, 0, 200004, 0, 1, 0, NULL),
(1300017, 0, 0, 200004, 0, 1, 0, NULL),
(1300021, 0, 0, 200005, 0, 1, 0, NULL);

REPLACE INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(200000, 10825, 0, 0), -- Citadel Footman 2H Sword
(200001, 13623, 0, 0), -- Citadel Valiant 2H Sword
(200002, 22394, 0, 0), -- Citadel Inquisitor Staff
(200003, 22391, 0, 0), -- Eric Dark Staff
(200004, 13504, 23743, 0), -- Citadel Interrogator 2x1H Sword
(200005, 13722, 0, 0); -- Citadel Rayllusionist Staff

REPLACE INTO `creature_display_info_addon` (`display_id`, `bounding_radius`, `combat_reach`, `gender`, `display_id_other_gender`) VALUES
(18671, 1, 1, 0, 0), -- Citadel Archwizard
(18672, 1, 1, 0, 0), -- High General Abbendis
(18673, 1, 1, 0, 0), -- Citadel Bishop
(18674, 1, 1, 0, 0), -- Citadel Clergyman
(18675, 1, 1, 0, 0), -- Citadel Footman
(18676, 1, 1, 0, 0), -- Grand Inquisitor Boss
(18677, 1, 1, 0, 0), -- Citadel High Cleric
(18678, 1, 1, 0, 0), -- Illusion Boss
(18679, 1, 1, 0, 0), -- Citadel Illusionist
(18680, 1, 1, 0, 0), -- Citadel Inquisitor
(18681, 1, 1, 0, 0), -- Citadel Interrogator
(18683, 1, 1, 0, 0), -- Citadel Monk
(18684, 1, 1, 0, 0), -- High Monk Daelus
(18685, 1, 1, 0, 0), -- Paladin Halidus
(18686, 1, 1, 0, 0), -- Citadel Praetorian
(18687, 1, 1, 0, 0), -- Citadel Spellblade
(18688, 1, 1, 0, 0), -- Citadel Valiant
(18689, 1, 1, 0, 0), -- Citadel Watchman
(18690, 1, 1, 0, 0), -- Citadel Zealot
(18682, 1, 1, 0, 0); -- Citadel Monk

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES 
(1000000, 1000000), -- Boss Mariella
(1000001, 1000001), -- Boss Ardaeus
(1000002, 1000002); -- Boss Daelus

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(1000000, 'It seems Mistress Abbendis was rash when choosing the new blood, if you were to have faced me at the entrance you wouldn''t have made it this far.$B\nLook at you, monster, abomination. The way you move, the way you fight, the way you speak it''s all driven by the strings of your Dark Master. If there''s any morality left in you, pray to what you once knew as a powerful being.$B\nI have wasted breath on you, despicable creature, come and meet your end!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Boss Mariella
(1000001, 'For years, I have studied the arcane. My role in the order was different, yet meaningful. I have seen the work of necromancers in my studies. Never would I have imagined standing against such a powerful abomination as yourself.$B\nI believe it to be mockery-the fact you stand before me and have yet to attack. Do you, who carry the shame of your dark master, overestimate yourself this much? Alas, I will give you the satisfaction you seek.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Boss Ardaeus
(1000002, 'I like to remember the Monastery as it used to be.$B\nA place of worship and joy, a place where the young would come in search of greater purpose. Sparring within these very halls, there were many I''ve taught them how to defend themselves and what they stood for.$B\nMany were taken by the Light, butchered, and maimed by this unreasonable world. Nothing but toys to creatures like you that lavish in the pain and sorrow of righteous good people. I curse you, all of you. You believe us so weak to be defeated by a handful of wretched minions of the Scourge?$B\nCount your steps, they will be your last. When we are done with you, our shipwrights will be ready and we will find justice by our own means.$B\nYour downfall comes fools, I will protect the order!$B\nFor the Scarlet Crusade!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- Boss Daelus

REPLACE INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
('2000033', '45', '2000034', '1', '8'),
('2000034', '45', '2000035', '1', '8'),
('2000035', '45', '2000033', '1', '8');

-- Trash Items
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
(84000, 2, 15, 'Pulseseeker', '', 61068, 4, 0, 1, 783412, 195853, 13, -1, -1, 73, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 94, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26693, 2, 0, 0, -1, 0, -1, 15464, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 3, 0, 0, 75, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84001, 4, 0, 'Rose of Sanguine Rage', '', 31779, 4, 0, 1, 358312, 89578, 23, -1, -1, 83, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17872, 1, 0, 0, -1, 0, -1, 18382, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(84002, 4, 4, 'Headguard of the Scarlet Bastion', '', 14957, 4, 0, 1, 247853, 61963, 1, -1, -1, 83, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 20, 5, 14, 7, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 757, 0, 0, 0, 0, 0, 0, 13669, 1, 0, 0, 0, 0, 0, 14249, 1, 0, 0, -1, 0, -1, 18049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 100, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84003, 4, 0, 'Signet of the Broken Oath', '', 31655, 4, 0, 1, 241005, 60251, 11, -1, -1, 83, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18015, 1, 0, 0, -1, 0, -1, 21523, 1, 0, 0, -1, 0, -1, 23727, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84004, 4, 2, 'Subjugator''s Boots', '', 66248, 4, 0, 1, 305217, 76304, 8, -1, -1, 83, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 28, 7, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 9132, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84005, 4, 3, 'Blindfold of the Scarlet Marksman', 'Those that blinded are those that truly see.', 5878, 4, 0, 1, 364609, 91152, 1, -1, -1, 83, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 30, 7, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 0, 0, 0, 0, 0, 0, 15466, 1, 0, 0, -1, 0, -1, 9132, 1, 0, 0, -1, 0, -1, 14049, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 5, 0, 0, 0, 85, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84006, 4, 0, 'Banner of the Scarlet Crusade', 'Soaked in the blood of those devoted to this zealous crusade.', 23954, 4, 0, 1, 380702, 95175, 12, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13681, 1, 0, 0, 0, 0, 0, 9336, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
-- Daelus Items
(84030, 2, 13, 'Gauntlet of a Thousand Cuts', '', 32534, 4, 0, 1, 1061503, 265375, 21, -1, -1, 88, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 75, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 16405, 2, 0, 5, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 3, 0, 0, 75, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84031, 4, 0, 'Consecrated Sigil', '', 23435, 4, 0, 1, 408425, 102106, 12, -1, -1, 88, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18382, 1, 0, 0, -1, 0, -1, 18044, 1, 0, 0, -1, 0, -1, 21531, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84032, 4, 1, 'Kilt of the Devoted', '', 66249, 4, 0, 1, 412345, 103086, 7, -1, -1, 88, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 20, 7, 24, 6, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 0, 0, 0, 0, 0, 0, 14776, 1, 0, 0, -1, 0, -1, 18035, 1, 0, 0, -1, 0, -1, 21523, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 75, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84033, 4, 6, 'Bulwark of the Light', '', 26868, 4, 0, 1, 621505, 155376, 14, -1, -1, 88, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 3423, 0, 0, 0, 0, 0, 0, 13675, 1, 0, 0, -1, 0, -1, 28325, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 6, 4, 0, 0, 120, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84034, 4, 4, 'Girdle of the Insane Zealot', '', 66250, 4, 0, 1, 195209, 48802, 6, -1, -1, 88, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 15, 3, 15, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 554, 0, 0, 0, 0, 0, 0, 7598, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 6, 0, 0, 0, 55, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84035, 4, 2, 'Fists of the Red Dawn', '', 66251, 4, 0, 1, 251892, 62973, 10, -1, -1, 88, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 22, 3, 12, 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 158, 0, 0, 0, 0, 0, 0, 7597, 1, 0, 0, -1, 0, -1, 18186, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 40, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL),
(84036, 4, 0, 'Loop of Acceleration', '', 34189, 4, 0, 1, 461262, 115315, 11, -1, -1, 88, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 10, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13679, 1, 0, 0, 0, 0, 0, 14798, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 1, NULL);

-- SC Attunement Questchain
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `MaxLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewXP`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `RewMailMoney`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES
(20000, 2, 139, 60, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20001, 82000, 1, 0, 'Orb of Pure Light', 'The orb shines as bright as the Sun inside the dread walls of Naxxramas.$B\nWith the Horsemen defeated, your next challenge is soon to be approached, you decide to take the orb with you and bring it back to Light''s Hope Chapel if you survive.', 'Take the Orb of Pure Light to Maxwell Tyrosus in Light''s Hope Chapel, Eastern Plaguelands.', 'So you''ve found this just after your victory?', NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 39500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20001, 2, 139, 60, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000, 0, 0, 20002, 0, 0, 0, 'Seek Help Elsewhere', 'It''s like nothing I have ever seen before, $N.$B\nIt''s like the very essence of the Light comes out of this orb, a strange thing that the Ashbringer left behind as he was freed from the clutches of the Scourge.$BI really cannot spare any time to aid you with this. Even if the Dread Citadel fell we still have a long way to go. While the Arch Lich has been defeated we have yet to find his phylactery.$B\nThe Argent Dawn is a mess, the casualties were many and the rest of us are beyond tired. While you will not find help here, I know where to send you, and I am sure he will be able to help.$BSeek Tirion Fordring, here, in Eastern Plaguelands to the West.$B\nI am truly sorry and I wish you luck.', 'Find Tirion Fordring in Eastern Plaguelands.', 'Maxwell is a bright man, his choice was just.', NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20002, 2, 2017, 60, 0, 60, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 20001, 0, 0, 20003, 0, 0, 0, 'To Wake The Ashbringer', '<Tirion inspects the orb in silence for a while.>$B\nBy the Light!$BThis pure essence, this raw energy of the Light, this is definitely Alexandros himself!$BHis dormant soul turned into this orb, but for what purpose?$BI can''t wrap my head around this, but perhaps we can try to wake him up. Not sure that''s the right choice of words here. But how can we even do that?$BSomething familiar might do the trick.$B\nListen $N. Saidan Dathrohan was one of the very first Paladins, a friend of mine and Alexandros, at some point he went insane. Which in these times prove to have been due to a certain demonic influence.$BWhen Renault killed his father, Saidan took the Ashbringer''s Tabard as a trophy.$BAt the same time, if my information is correct, Baron Rivendare proudly wore Alexandros'' cape as mockery.$B\nYour task is to venture into the Stratholme and find these items that once belonged to the Ashbringer. Take the orb with you, I am sure you will get a reaction. In the meantime I will try to wrap my head around this situation.', 'Recover Tabard of the Ashbringer and Cape of Alexandros from Stratholme.', 'You managed to recover them, tattered, but still.', NULL, '', NULL, NULL, NULL, NULL, 82000, 82001, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000092, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20003, 2, 28, 60, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20002, 0, 0, 0, 0, 0, 0, 'Spirit of the Ashbringer', 'I can feel it $N.$BThe spirit of Alexandros and its thirst for justice. These lands are too corrupted for us to communicate with him, if we are to ever reach him we need a place strong in the Light.$BBy the Light''s guidance, I feel that we must travel to Uther''s tomb.$BCompleted any duties you have left and meet me there. My only wish is that this fragment of his spirit is willing to communicate and cooperate with us.$BOnly time will tell.$BTo Uther''s tomb!', 'Meet Tirion Fordring at Uther''s Tomb, Western Plaguelands.', 'This is it $N. He''s about to show.$BStand tall, his aura maybe a bit overwhelming.', NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 34200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20004, 2, 28, 60, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20003, 0, 0, 20005, 0, 0, 0, 'An Act of Humility', '<Alexandros stares deep into your eyes.>$B\nSo, the one to free me from eternal undeath is also the one to reach my message. The Light showed me this path.$BListen well, $N. I am Alexandros Mograine, the Ashbringer. Once a member of what is now the despicable Scarlet Crusade.$B\nA paladin, a husband, a father, and now nothing more than a ghost. My spirit is restless and I cannot and will not move on before my justice have been met. Yes, you''ve heard me well, this is not the Light''s justice but the Ashbringer''s.$BI am willing to give information to you, information that will let you be a part of something grand.$B\nInformation that once and for all will bring the demise of the Scarlet Crusade. And yes, surprisingly you are yet to end them.$BI ask for humility, from the one that defeated me in battle, from the one that liberated my soul. Bow to the Ashbringer, let me feel that my legend amongst the mortals of our world has yet to perish.', 'Bow to the Ashbringer.', 'It is a simple task, one which will prove the color of your own soul.', NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20005, 2, 28, 60, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20004, 0, 0, 0, 0, 0, 0, 'The Foul Stench of the Scarlet Crusade', 'After leaving behind my mortal shell the Light has shown me many different things.$BMy life,  my mission, my future.$BAll I wish now is to end the Scarlet Crusade.$BBridgette Abbendis has retreated to the Scarlet Monastery. She ordered the recruitment of more men and devised a new concoction that''d instantly put an end to the undead.$B\nIt seems her plans were not effective since the day she decide to hide in her chambers to meditate. The Light has its own paths you see, mysterious to us. She was to harbor more power for a purpose that is nothing else but foolish. East of Tyr''s Hand the Scarlet Crusade prepares for a trip North, waiting for their leader to return so they can commence.$B\nBut against their own odds, a dark power infiltrated the Monastery during her meditation and has forever tormented the already fanatical minds.$BThey can longer see any difference between the living and the undead. Their use of shadow magic comes from a different power, one that could equal the Light itself.$BIt''s time to decide whether you are ready to prove your own mettle.$B\nNaxxramas was a threat indeed, but the powers at play here can very well surpass it. Are you ready $N?', 'Speak to the Spirit of Alexandros Mograine.', 'Very well. You seem ready.$BA piece of advice before you go <name>. Someone like you, someone like me, we will always be forgotten. Keep this close to your heart: the people of this world will never remember your name, they will never recall your face, but they will always remember your deeds.$B', NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 529, 0, 0, 0, 0, 250, 0, 0, 0, 0, 0, 50000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(0, 20003),
(1855, 20001),
(1855, 20002),
(11034, 20000),
(2000090, 20003),
(2000091, 20004),
(2000091, 20005);

REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
(1855, 20002),
(1855, 20003),
(11034, 20001),
(2000091, 20004),
(2000091, 20005);

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `name`, `description`, `display_id`, `quality`, `flags`, `buy_count`, `buy_price`, `sell_price`, `inventory_type`, `allowable_class`, `allowable_race`, `item_level`, `required_level`, `required_skill`, `required_skill_rank`, `required_spell`, `required_honor_rank`, `required_city_rank`, `required_reputation_faction`, `required_reputation_rank`, `max_count`, `stackable`, `container_slots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `delay`, `range_mod`, `ammo_type`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `block`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmrate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmrate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmrate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmrate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmrate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `page_text`, `page_language`, `page_material`, `start_quest`, `lock_id`, `material`, `sheath`, `random_property`, `set_id`, `max_durability`, `area_bound`, `map_bound`, `duration`, `bag_family`, `disenchant_id`, `food_type`, `min_money_loot`, `max_money_loot`, `extra_flags`, `other_team_entry`, `script_name`) VALUES
(82000, 12, 0, 'Orb of Pure Light', 'There''s something amiss about the orb.', 24730, 5, 2048, 1, 0, 0, 0, -1, -1, 90, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(82001, 12, 0, 'Cape of Alexandros', 'Tattered cloak that once covered the back of the Ashbringer.', 35444, 1, 2048, 1, 0, 0, 0, -1, -1, 90, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(82002, 4, 0, 'Tabard of the Ashbringer', 'Filled with light.', 34374, 4, 0, 1, 0, 0, 19, -1, -1, 85, 60, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 25824, 0, 0, 0, 3600000, 0, -1, 17623, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

REPLACE INTO `creature_template` (`entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`, `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`, `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`, `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`, `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`, `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `flags_extra`, `phase_quest_id`, `script_name`) VALUES
(2000090, 9477, 0, 0, 0, 0, 'Tirion Fordring', NULL, 60900, 61, 61, 25150, 25150, 2486, 2486, 1091, 250, 3, 1, 1.14286, 0, 20, 5, 0, 1, 1, 244, 703, 0, 278, 1, 2000, 2000, 2, 64, 0, 0, 0, 0, 0, 0, 172.1, 240.07, 100, 7, 0, 0, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, '17622', 0, 0, '', 0, 3, 0, 0, 3, 1855, 0, 0, 3167436667, 0, 0, 0, 'duplicate_tirion_fordring'),
(2000091, 18675, 0, 0, 0, 0, 'Spirit of Alexandros Mograine', 'The Ashbringer', 60901, 83, 83, 13945000, 13945000, 2129000, 2129000, 10643, 35, 3, 1, 1.14286, 1, 20, 5, 0, 3, 1, 16336, 22546, 0, 290, 1, 1500, 1700, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '17622', 0, 0, '', 0, 3, 0, 0, 3, 0, 0, 0, 3167436667, 0, 0, 0, 'npc_alexandros_mograine'),
(2000092, 10545, 0, 0, 0, 0, 'Grand Crusader Dathrohan', NULL, 0, 63, 63, 495000, 495000, 0, 0, 4200, 189, 0, 1, 1.14286, 0, 20, 5, 0, 3, 1, 2500, 3500, 0, 290, 1, 1480, 1700, 1, 0, 0, 0, 0, 0, 0, 0, 220.81, 320.77, 100, 7, 0, 92301, 0, 0, 0, 15, 15, 15, 15, 15, 0, 0, 0, 0, 0, 0, 9617, 461, 2307, '', 0, 3, 0, 0, 3, 10812, 0, 0, 3167436667, 0, 0, 0, 'duplicate_dathrohan_balnazzar'),
(2000093, 16139, 0, 0, 0, 0, 'Highlord Mograine', 'The Ashbringer', 0, 63, 63, 533984, 533984, 0, 0, 4211, 21, 0, 1.65, 1.65, 0, 20, 5, 0, 3, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 16062, 0, 0, 3167436667, 0, 0, 0, 'npc_horsemen_spirit'),
(2000094, 16154, 0, 0, 0, 0, 'Sir Zeliek', '', 0, 63, 63, 499987, 499987, 0, 0, 4211, 21, 0, 1.65, 1.65, 0, 20, 5, 0, 3, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 16063, 0, 0, 3167436667, 0, 0, 0, 'npc_horsemen_spirit'),
(2000095, 16155, 0, 0, 0, 0, 'Thane Korth''azz', NULL, 0, 63, 63, 599781, 599781, 50000, 50000, 4211, 21, 0, 1.65, 1.65, 0, 20, 5, 0, 3, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 16064, 0, 0, 3167436667, 0, 0, 0, 'npc_horsemen_spirit'),
(2000096, 16153, 0, 0, 0, 0, 'Lady Blaumeux', NULL, 0, 63, 63, 499912, 499912, 60000, 60000, 4211, 21, 0, 1.65, 1.65, 0, 20, 5, 0, 3, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, '', 0, 3, 0, 0, 3, 16065, 0, 0, 3167436667, 0, 0, 0, 'npc_horsemen_spirit');

REPLACE INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`) VALUES
(1300150, 2000090, 0, 0, 0, 0, 975.404, -1824.01, 81.0845, 3.40917, 300, 360, 0, 100, 100, 0, 0, 0),
(1300151, 2000091, 0, 0, 0, 0, 972.94, -1824.83, 81.6909, 0.32609, 300, 360, 0, 100, 100, 0, 0, 0);

REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `phase_quest_id`, `script_name`) VALUES
(5000050, 3, 23431, 'Baron Rivendare''s Chest', 0, 4, 1.2, 57, 5000050, 0, 0, 0, 0, 0, 0, 20001, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(5000050, 82001, -100, 0, 1, 1, 0); -- Cape of Alexandros

REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(92300, 82000, 100, 0, 1, 1, 0), -- Orb of Pure Light
(92301, 82002, 100, 0, 1, 1, 0); -- Tabard of the Ashbringer

-- Assign Item "Orb of Pure Light" to NPC "Highlord Mograine"
UPDATE `creature_template` SET `loot_id` = 92300 WHERE `entry` = 16062;

REPLACE INTO `broadcast_text` (`entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`) VALUES
(1000050, 'We are about to witness a miracle of the Light. Alexandros Mograine is soon to be in our presence.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- Tirion Fordring
(1000051, 'I cannot rest. Not until I see the Scarlet Crusade fall and not until my son faces justice for killing his father.$B\nBut do not worry, someone else is to fulfill that task. Even in my rage, I would wish to hold my children in my arms for the last time. I am ready to rest on the other side, $N.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- Spirit of Alexandros Mograine

REPLACE INTO `npc_text` (`ID`, `BroadcastTextID0`) VALUES 
(1000050, 1000050), -- Tirion Fordring
(1000051, 1000051); -- Spirit of Alexandros Mograine

REPLACE INTO `gossip_menu` (`entry`, `text_id`, `condition_id`) VALUES
(60900, 1000050, 0),
(60901, 1000051, 0);
