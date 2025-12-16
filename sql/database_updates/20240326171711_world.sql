-- Add no assist flag to second boss mobs in AQ20.
UPDATE `creature_template` SET `flags_extra`=(`flags_extra` | 0x00010000) WHERE `entry` IN (15387, 15344, 15388, 15385, 15386, 15389, 15391, 15392, 15390);
