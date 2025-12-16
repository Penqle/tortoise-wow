-- Assign transmog npc flag to Fashionista npcs.
UPDATE `creature_template` SET `npc_flags`=(`npc_flags` & ~0x10000000) WHERE (`npc_flags` & 0x10000000);
UPDATE `creature_template` SET `npc_flags`=(`npc_flags` | 0x10000000) WHERE `entry` IN (51290, 51291);
