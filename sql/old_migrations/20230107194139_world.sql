-- Disable Call for Help for Rajaxx wave mobs.
UPDATE `creature_template` SET `call_for_help_range`=0 WHERE `entry` IN (15389, 15391, 15392, 15390, 15388, 15385, 15386, 15344, 15387);
