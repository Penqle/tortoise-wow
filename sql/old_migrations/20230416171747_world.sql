-- Make The Defias Traitor immune to players.
UPDATE `creature_template` SET `unit_flags`=(`unit_flags` | 256) WHERE `entry`=467;
