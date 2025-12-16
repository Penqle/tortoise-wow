-- Make Horde Defender ignore players.
UPDATE `creature_template` SET `unit_flags`=256 wHERE `entry`=60027;
UPDATE `item_template` SET `spellid_1`=46319 WHERE `entry`=40065;
