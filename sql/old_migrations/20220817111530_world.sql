-- Unlink all non-existent C++ scripts from Black Morass NPCs
UPDATE `creature_template` SET `script_name` = '' WHERE `script_name` IN
(
    "antnormi_cot",
    "aqir_add",
    "boss_chromie",
    "boss_chronormu",
    "boss_gerastrasz",
    "chromie_boss_cot",
    "chromie_portal_cot",
    "chronar_boss_cot",
    "epochronos_boss_cot",
    "frostbitten_bronze_soldier",
    "harbinger_boss_cot",
    "infinite_dragonspawn",
    "infinite_riftguard",
    "infinite_riftlord",
    "infinite_riftweaver",
    "infinite_timeripper",
    "infinite_whelp",
    "injured_defender_cot",
    "instance_black_morass",
    "item_temporal_bronze_disc",
    "logistical_officer",
    "mossheart_cot",
    "npc_chromie_dialogue",
    "rotmaw_cot",
    "shade_cot",
    "swamp_npcs_cot"
);

-- Unlink non-existent instance script
UPDATE `map_template` SET `script_name` = '' WHERE `entry` = 269;

-- Remove deprecated Temporal Bronze Disc item
DELETE FROM `item_template` WHERE `entry` = 80008;
