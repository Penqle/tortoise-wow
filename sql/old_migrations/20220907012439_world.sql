-- Remove wrong mod of Withered Touch.
DELETE FROM `spell_effect_mod` WHERE `Id`=11442;
UPDATE `creature_template` SET `auras`='11441', `script_name`='' WHERE `entry`=8606;
