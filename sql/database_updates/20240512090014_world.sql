-- Fix Blackwing Technician loot exploit.
UPDATE `creature_groups` SET `flags`=6 WHERE `leader_guid` IN (84557, 84558, 84625, 84840, 1068499, 1177486, 1177487, 1177494);
