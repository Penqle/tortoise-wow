-- Fix Speaker Lazoko repeatedly recasting his channeled spell.
UPDATE `creature_template` SET `auras`='13236', `script_name`='' WHERE `entry`=91723;
