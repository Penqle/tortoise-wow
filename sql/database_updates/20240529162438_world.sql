-- Update script name for Krug Skullsplit
UPDATE `creature_template` SET `script_name` = 'npc_krug_skullsplit' WHERE `entry` = 15612;

-- Update script name for Merok Longstride
UPDATE `creature_template` SET `script_name` = 'npc_merok_longstride' WHERE `entry` = 15613;

-- Update script name for Shadow Priestess Shai
UPDATE `creature_template` SET `script_name` = 'npc_shadow_priestess_shai' WHERE `entry` = 15615;

-- Update script name for Hive'Regal Hunter-Killer
UPDATE `creature_template` SET `script_name` = 'npc_hiveregal_hunterkiller' WHERE `entry` = 15620;

-- Create Alliance quest trigger NPC
REPLACE INTO `creature_template` (
    `entry`, `display_id1`, `display_id2`, `display_id3`, `display_id4`, `mount_display_id`, `name`, `subname`, `gossip_menu_id`,
    `level_min`, `level_max`, `health_min`, `health_max`, `mana_min`, `mana_max`, `armor`, `faction`, `npc_flags`, `speed_walk`,
    `speed_run`, `scale`, `detection_range`, `call_for_help_range`, `leash_range`, `rank`, `xp_multiplier`, `dmg_min`, `dmg_max`,
    `dmg_school`, `attack_power`, `dmg_multiplier`, `base_attack_time`, `ranged_attack_time`, `unit_class`, `unit_flags`, `dynamic_flags`,
    `beast_family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `ranged_dmg_min`, `ranged_dmg_max`, `ranged_attack_power`,
    `type`, `type_flags`, `loot_id`, `pickpocket_loot_id`, `skinning_loot_id`, `holy_res`, `fire_res`, `nature_res`, `frost_res`,
    `shadow_res`, `arcane_res`, `spell_id1`, `spell_id2`, `spell_id3`, `spell_id4`, `spell_list_id`, `pet_spell_list_id`, `spawn_spell_id`,
    `auras`, `gold_min`, `gold_max`, `ai_name`, `movement_type`, `inhabit_type`, `civilian`, `racial_leader`, `regeneration`, `equipment_id`,
    `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `school_immune_mask`, `immunity_flags`, `flags_extra`, `phase_quest_id`, `script_name`
) VALUES (
    2509000, 10045, 0, 0, 0, 0, 'Field Duty (Alliance) Trigger', '', 0, 54, 55, 25432, 26225, 0, 0, 0, 495, 0, 1.5, 1.14286, 0, 20, 5, 0, 1, 1, 1469, 1504,
    0, 248, 1, 1500, 1650, 1, 6, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 599, 4836, '', 0, 3, 0, 0, 3, 0, 0, 0,
    16384, 0, 0, 128, 0, 'trigger_field_duty_alliance'
);

REPLACE INTO `creature` (
    `guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, 
    `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, 
    `movement_type`, `spawn_flags`, `visibility_mod`
) VALUES (
    2582815, 2509000, 0, 0, 0, 1, -7182.17, 1406.58, 2.37713, 5.85506, 
    120, 120, 0, 100, 100, 0, 0, 0
);

-- Add missing rifleman
REPLACE INTO `creature` (
    `guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, 
    `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, 
    `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, 
    `spawn_flags`, `visibility_mod`
) VALUES (
    2582816, 15441, 0, 0, 0, 1, -7169.93, 1388.73, 2.91418, 2.28552, 
    120, 120, 0, 100, 100, 0, 0, 0
);

-- Add missing Ironforge Brigade Footman
REPLACE INTO `creature` (
    `guid`, `id`, `id2`, `id3`, `id4`, `map`, `position_x`, `position_y`, 
    `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, 
    `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, 
    `spawn_flags`, `visibility_mod`
) VALUES (
    2582817, 15442, 0, 0, 0, 1, -7173.26, 1392.86, 2.6812, 2.29339, 
    120, 120, 0, 100, 100, 0, 0, 0
);

-- Assign script to Captain Blackanvil
UPDATE `creature_template` 
SET `script_name` = 'npc_captain_blackanvil' 
WHERE `entry` = 15440;

-- Assign gossip to Captain Blackanvil
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) 
VALUES (166513, 2593000);
REPLACE INTO `npc_text` (
    `ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, 
    `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, 
    `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, 
    `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`
) VALUES (
    2593000, 2593000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
REPLACE INTO `broadcast_text` (
    `entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, 
    `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`
) VALUES (
    2593000, "Eh, what do ye want? Can't ye see I'm busy? Go talk to Lieutenant Stouthammer if ye need somethin'.", 
    NULL, 0, 0, 7, 0, 0, 0, 0, 0, 0
);

REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) 
VALUES (166513, 2593004);
REPLACE INTO `npc_text` (
    `ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, 
    `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, 
    `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, 
    `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`
) VALUES (
    2593004, 2593004, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
REPLACE INTO `broadcast_text` (
    `entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, 
    `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`
) VALUES (
    2593004, "So ye helped us fend off that attack, eh? Don't think I'm impressed.",
    NULL, 0, 0, 7, 0, 0, 0, 0, 0, 0
);

-- Assign script to Arcanist Nozzlespring
UPDATE `creature_template` 
SET `script_name` = "npc_arcanist_nozzlespring" 
WHERE `entry` = 15444;

-- Assign script to Janela Stouthammer
UPDATE `creature_template` 
SET `script_name` = 'npc_janela_stouthammer' 
WHERE `entry` = 15443;

-- Assign gossip to Janela Stouthammer
REPLACE INTO `npc_text` (
    `ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, 
    `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, 
    `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, 
    `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`
) VALUES (
    2593001, 2593001, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
REPLACE INTO `broadcast_text` (
    `entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, 
    `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`
) VALUES (
    2593001, "I'm reporting for Field Duty. I need someone to sign my papers.", 
    NULL, 0, 0, 7, 0, 0, 0, 0, 0, 0
);

REPLACE INTO `npc_text` (
    `ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, 
    `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, 
    `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, 
    `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`
) VALUES (
    2593002, 2593002, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
REPLACE INTO `broadcast_text` (
    `entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, 
    `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`
) VALUES (
    2593002, "Is that so? We're expecting an attack any moment now. Help us defend the outpost, and Captain Blackanvil will sign your papers.",
    NULL, 0, 0, 7, 0, 0, 0, 0, 0, 0
);

REPLACE INTO `npc_text` (
    `ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, 
    `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, 
    `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, 
    `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`
) VALUES (
    2593003, 2593003, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
REPLACE INTO `broadcast_text` (
    `entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, 
    `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`
) VALUES (
    2593003, "I'm ready. (Start Event)",
    NULL, 0, 0, 7, 0, 0, 0, 0, 0, 0
);

REPLACE INTO `npc_text` (
    `ID`, `BroadcastTextID0`, `Probability0`, `BroadcastTextID1`, `Probability1`, 
    `BroadcastTextID2`, `Probability2`, `BroadcastTextID3`, `Probability3`, 
    `BroadcastTextID4`, `Probability4`, `BroadcastTextID5`, `Probability5`, 
    `BroadcastTextID6`, `Probability6`, `BroadcastTextID7`, `Probability7`
) VALUES (
    2593005, 2593005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);
REPLACE INTO `broadcast_text` (
    `entry`, `male_text`, `female_text`, `chat_type`, `sound_id`, `language_id`, 
    `emote_id1`, `emote_id2`, `emote_id3`, `emote_delay1`, `emote_delay2`, `emote_delay3`
) VALUES (
    2593005, "Thanks for the assist. Unfortunately, we see attacks like this all the time. It's just another day in Silithus.",
    NULL, 0, 0, 7, 0, 0, 0, 0, 0, 0
);

-- Add script texts
REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250900, "Wait! It appears our lookout has spotted something.", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250901, "Soldier, call Captain Blackanvil at once!", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250902, "Look alive, lads! The enemy has been sighted! Form ranks immediately!", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250903, "Captain! Lieutenant Stouthammer requests your presence! The enemy is approaching, sir!", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250904, "This better be important!", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250905, "Looks like it's going to be one of those days.", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250906, "Aye, lads! Things are about to get quite ugly.", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250907, "Stand ready!", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250908, "Open fire!", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

REPLACE INTO `script_texts` (
    `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, 
    `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, 
    `sound`, `type`, `language`, `emote`, `comment`
) 
VALUES (
    -1250909, "Footmen, make a line!", NULL, NULL, 
    NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 7, 0, 
    "Silithus Field Duty Event (Alliance)"
);

-- Assign script to Hive'Zora Abomination
UPDATE `creature_template` 
SET `script_name` = "npc_hivezora_abomination" 
WHERE `entry` = 15449;

-- Clear creature groups
DELETE FROM `creature_groups` 
WHERE `member_guid` = 42914;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42910;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42912;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42906;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42907;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42911;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42904;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42913;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42909;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42908;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42915;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42905;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 42749;

DELETE FROM `creature_groups` 
WHERE `member_guid` = 166513;

-- Update spawn time for Janela Stouthammer
UPDATE `creature` 
SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180 
WHERE `guid` = 42914;

-- Update spawn time for Arcanist Nozzlespring
UPDATE `creature`
SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180
WHERE `guid` = 42915;

-- Update spawn time for Sergeant Carnes
UPDATE `creature`
SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180
WHERE `guid` = 42749;

-- Reduce attack speed of Janela Stouthammer
UPDATE `creature_template` 
SET `base_attack_time` = 2400 
WHERE `entry` = 15443;

-- Reduce attack speed of Captain Blackanvil
UPDATE `creature_template` 
SET `base_attack_time` = 2500 
WHERE `entry` = 15440;

-- Reduce attack speed of Arcanist Nozzlespring
UPDATE `creature_template` 
SET `base_attack_time` = 2500 
WHERE `entry` = 15444;

-- Reduce attack speed of Sergeant Carnes
UPDATE `creature_template` 
SET `base_attack_time` = 2600 
WHERE `entry` = 15903;
