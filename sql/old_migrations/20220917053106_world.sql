-- Remove wrong spell from Entropic Horror.
UPDATE `creature_template` SET `auras`='11966', `spell_id1`=0, `script_name`='' WHERE `entry`=9879;
