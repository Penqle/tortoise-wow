delete from creature where id in (50054, 50053, 81034);

UPDATE `creature_template` SET `name` = '[Deprecated] Genevieve' WHERE `entry` = 50053;
UPDATE `creature_template` SET `name` = '[Deprecated] Zeez Fluxlight' WHERE `entry` = 50054;
UPDATE `creature_template` SET `name` = '[Deprecated] Bebri Coifcurl' WHERE `entry` = 81034;

delete from npc_vendor where entry in (50054, 50053, 81034);