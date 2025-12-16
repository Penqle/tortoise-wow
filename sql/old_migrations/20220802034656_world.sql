-- Prevent Scourge Footsoldier from leashing.
UPDATE `creature_template` SET `flags_extra`= (`flags_extra` | 268435456) WHERE `entry`=14486;
